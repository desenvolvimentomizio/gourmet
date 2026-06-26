# Gourmet API — Backend SaaS multi-tenant

Backend do ERP Gourmet como SaaS, reaproveitando o banco atual (1 schema MySQL
por tenant). Stack: **Delphi 10.4 Sydney + Horse + UniDAC + ACBr**, baseado em APIs REST
e webhooks.

## Conceito de tenancy
Cada cliente é um **schema MySQL próprio** (modelo já usado pelo ERP: o servidor
de produção tem ~25 schemas, um por cliente, + `basevazia` como template). O
control-plane (`saas_control`) guarda o registro de tenants/usuários/assinaturas.
A cada request o fluxo é:

```
JWT (claim "tenant") → ControlPlane.ResolveTenant → schema do cliente
                     → Database.AcquireForSchema (pool UniDAC por schema)
                     → Repository (queries PARAMETRIZADAS)
```

## Estrutura
```
src/
  GourmetApi.dpr                 entrypoint (wire de middlewares e rotas)
  Bootstrap/Gourmet.Config       config via env + config.ini
  Infra/Gourmet.Database         pool de conexões UniDAC por tenant
  Infra/Gourmet.ControlPlane     resolve slug do tenant → schema (cacheado)
  Middlewares/...Auth            valida JWT (HS256) e extrai claims
  Middlewares/...Tenant          resolve tenant → schema da request
  Shared/...Errors               exceções → JSON padrão (sem except vazio)
  Modules/Clientes/...           vertical de exemplo (read-only sobre v_cli)
db/
  saas_control.sql               schema do control-plane
  seed_tenants.py                registra os schemas existentes como tenants
config/
  config.sample.ini              modelo de configuração (copie p/ config.ini)
```

## Pré-requisitos
- RAD Studio / Delphi 10.4 Sydney com **Horse**, **horse-jwt**, **horse-cors**, **Jhonson**
  (via [boss](https://github.com/HashLoad/boss): `boss install`).
- **UniDAC** (Devart) instalado.
- **ACBr** (para os módulos fiscais das próximas fases).

## Subir (Fase A)
1. Aplique o control-plane: `mysql < db/saas_control.sql`
2. Registre os tenants existentes: `python db/seed_tenants.py`
3. Crie um usuário de banco dedicado (`gourmet_app`) com acesso aos schemas.
4. `copy config\config.sample.ini config\config.ini` e preencha (segredos!).
5. Compile `src/GourmetApi.dpr` e rode. Health: `GET http://localhost:9000/health`
6. Crie um usuário p/ testar login: `python db/seed_admin.py`
   (gera hash PBKDF2 compatível; padrão `admin@gourmet.local` / `Senha@123`).
7. **Login** (público) → recebe o JWT:
   ```
   POST /api/v1/auth/login
   { "tenant": "danielentrega", "email": "admin@gourmet.local", "password": "Senha@123" }
   → { "access_token": "...", "token_type": "Bearer", "expires_in": 28800 }
   ```
8. Use o token nas rotas protegidas:
   `GET /api/v1/clientes?search=maria&page=1&pageSize=50`
   `Authorization: Bearer <access_token>`

## Build (Delphi 10.4 Sydney / RAD 21.0)
**Compila 100% — validado**: `GourmetApi.exe` (18.716 linhas, 0 erros) com
Horse + JOSE + UniDAC no Delphi 10.4 (compiler 34.0).

1. Dependências boss (Horse/JOSE/hashlib) clonadas em `modules/`:
   ```
   boss install        # se o boss resolver; senao clone manual (ver abaixo)
   ```
   Se o `boss` falhar na resolução de nomes, clone direto em `modules/`:
   `HashLoad/horse`, `HashLoad/jhonson`, `HashLoad/horse-cors`,
   `HashLoad/horse-jwt`, `paolo-rossi/delphi-jose-jwt`,
   `andre-djsystem/hashlib4pascal`.
2. **UniDAC** (Devart): ajuste o caminho em `build.bat` (`UNIDAC_LIB` aponta p/
   `...\UniDAC\Lib\Delphi27\Win32` — `Delphi27` = pacote do 10.4).
3. Build via CLI:
   ```
   build.bat        # gera Win32\Debug\GourmetApi.exe
   ```
   Ou abra `src\GourmetApi.dproj` no IDE (UniDAC vem do Library Path global).

`tests/tst_doc.dpr` valida o `Gourmet.Documento` isolado (10/10, inclui CNPJ
alfanumérico `12ABC34501DE35`).

> ACBr ainda **não** é referenciado (entra nas fases fiscais). Quando entrar,
> some seus search paths ao `build.bat`/dproj.

## Próximas fases
Cada um dos 72 módulos do ERP (mcli, mpro, mcpa, mcre, mmnf, mmnc, ...) vira um
diretório em `src/Modules/<Modulo>` com Controller/Service/Repository, portando
as regras do módulo Delphi legado correspondente.
