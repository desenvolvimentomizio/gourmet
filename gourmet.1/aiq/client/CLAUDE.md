# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## O que é

Cliente Delphi (VCL, Win32) que integra o **aiqfome** (marketplace de delivery) com o
**ERP Gourmet** local. O app roda como uma janela única que faz polling contínuo:
busca pedidos novos na API do aiqfome (nuvem), grava-os no servidor Gourmet (ERP local)
e marca os pedidos como lidos/prontos de volta no aiqfome.

São dois backends distintos, não confundir:

1. **API aiqfome (nuvem)** — origem dos pedidos. REST + OAuth2 Bearer token.
   Base URL e segredos em `Service.Constants` / `Service.Config`. Limite documentado:
   **20 requisições/minuto** (daí o throttling do timer).
2. **Servidor Gourmet (ERP local)** — destino/persistência dos pedidos. REST em
   `host:porta` lido de `gourmeterp.ini` (seção `[Gourmet]`).

## Build

RAD Studio **10.4 Sydney** (product version 21.0, `ProjectVersion` 19.2 no `.dproj`).
Projeto MSBuild padrão; alvo único **Win32 / Release** (`TargetedPlatforms=1`).

```powershell
# 1. Carregar o ambiente do RAD Studio (rsvars.bat define BDS, framework path, etc.)
& "C:\Program Files (x86)\Embarcadero\Studio\21.0\bin\rsvars.bat"
# 2. Compilar
msbuild GourmetAIQBeta.dproj /p:Config=Release /p:Platform=Win32 /t:Build
```

- O executável vai para `$(gourmet1)\` (variável de ambiente apontando para a pasta de
  instalação do Gourmet); DCUs em `$(gourmet1)\dcu`. Em dev (env vazia) cai na pasta local.
- **Dependências via Boss** (`boss.json` / `boss-lock.json`): horse, restrequest4delphi,
  simpleorm, datasetconverter4delphi, gbswagger. Instaladas em `modules\` (no
  `DCC_UnitSearchPath`). Rodar `boss install` se `modules\` estiver ausente.
- Não há suíte de testes neste projeto.

### Cuidados com o `.dproj` (VCL Styles)
O tema escuro **"Windows10 Dark"** precisa ser ativado pelo IDE em
*Project > Options > Appearance > Custom Styles* (linka o `.vsf` como recurso).
**Nunca** editar `Custom_Styles`/`Custom_Styles_Active` à mão no `.dproj` — quebra a task
`CreateRcFile` do MSBuild com `IndexOutOfRange`. Ver comentário no topo de `GourmetAIQBeta.dpr`.

## Arquitetura

Camadas no estilo MVC. O namespace dos units é `GourmetAIQ.<Camada>.<Assunto>`.

- **`Model\Entity\`** — records/objetos de dados puros (`TAIQ`, `TAIQCFG`, `TPedidoAIQ`,
  `TPedidoAIQGourmet`). Sem lógica de I/O.
- **`Controller\`** — orquestram uma operação de negócio: montam o request, chamam o
  backend e mapeiam o resultado para entidades/`TFDMemTable`. Dois grupos:
  - Falam com a **API aiqfome**: `AIQSRV` (token + ID da loja), `PedidoAIQ` (lista/detalhe
    de pedidos, marcar lido/pronto).
  - Falam com o **ERP Gourmet**: `AIQ`, `cfgaiq` (config), `CCX`/`CZN` (caixa/cupom aberto),
    `PedidoGourmet` / `PedidoAIQGourmet` (grava/consulta pedidos no ERP).
- **`DataModule\`** — DataModules FireDAC/REST: `RESTClient` + `OAuth2Authenticator` +
  `RESTRequest`/`RESTResponse` e `TFDMemTable`/`TFDConnection`. Os Controllers instanciam
  o DataModule que precisam (`TDMxxx.Create(nil)`) e liberam em `try/finally`.
- **`Service\`** — infraestrutura transversal (ver abaixo).
- **`uFormGourmetAIQ.pas`** — form único + o loop de polling.

### Concorrência — a regra que organiza tudo
Versões anteriores faziam HTTP **síncrono na UI thread** com `Application.ProcessMessages`
e `sleep(2000)`, travando o app quando a rede degradava. O modelo atual:

- **`Service.Worker`** (`Worker`): singleton, uma `TThread` com fila de jobs
  (`TQueue<TWorkerJob>`). `Enqueue` agenda; `TryEnqueue` só agenda se estiver ocioso.
  O `Action` roda no worker; o `OnDone` é despachado de volta à UI via `TThread.Queue`.
- **`TmRelogio`** (timer, na UI) só faz trabalho barato: atualiza relógio, drena log para o
  Memo, atualiza painel de saúde, e a cada `IntervaloPedidosSeguro` segundos **agenda um
  ciclo** (`CicloAgendar`) — mas só se nenhum ciclo estiver ativo (`FCicloAtivo`/`Worker.IsBusy`),
  o que elimina reentrância. Há backoff (`FProximoCicloPermitido`) após falha.
- **Contrato do worker** (ver comentários em `CicloExecutarBackground`): dentro do
  `Action` **nada de UI** — não ler `cb*.Checked` (capturar snapshot em `CicloAgendar`
  antes de despachar), não mexer em `TFDMemTable` ligado a `DBGrid`. Log só via `Log.*`.

### Serviços de apoio
- **`Service.Config`** (`Config`): leitor tipado e cacheado do `gourmeterp.ini`
  (`[Gourmet]` host/porta/scheme, `[AIQFome]`, `[Janela]`). `Invalidate` força releitura.
- **`Service.Constants`**: paths da API aiqfome (contrato público) + IDs. Credenciais
  sensíveis devem vir do `.ini` via `Config`, não daqui.
- **`Service.RestExec`** (`ExecGet/Post/Put/Delete`): executa `IRequest` com **um retry**
  após `RETRY_DELAY_MS` (2s); relança se a 2ª tentativa falhar. Centraliza o padrão
  try/sleep/retry que estava espalhado.
- **`Service.HealthMonitor`** (`HealthMonitor`): buffer circular dos últimos 60 samples
  (latência + sucesso). Envolva chamadas REST ao aiqfome em `HealthMonitor.Track('Op', proc)`
  — mede latência e captura exceção (relança após registrar). `Snapshot` alimenta o painel
  de saúde (Healthy/Degraded/Down).
- **`Service.Log`** (`Log`): log thread-safe com fila bounded e rotação de arquivo
  (`gourmetaiq.log`). UI drena via `PullPending`. Use `Log.Info/Debug/Warn/Error` em vez de
  escrever no `TMemo` direto (quebra a dependência circular Controller→Form).
- **`Service.AuthenticationAIQ`**: aplica o Bearer token ao `TOAuth2Authenticator`.
- **`UI.Theme`**: aplica o estilo escuro e ajusta titlebar Win10/11 e cores do DBGrid.

## Convenções do código
- Comentários e mensagens em **português**; variáveis locais frequentemente com prefixo
  `v`/`vl` (ex.: `vlDMPedidoAIQ`, `vpCznChave`).
- Quem retorna `TList`/objetos geralmente transfere a posse — o chamador faz `Free`
  (ver comentários em `Controller.PedidoAIQGourmet`).
- Ignore as pastas `__history\`, `__recovery\` e arquivos `.cbk` — são backups do IDE.
