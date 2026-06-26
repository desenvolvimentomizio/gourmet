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
6. Com um JWT válido (claim `tenant=danielentrega`):
   `GET /api/v1/clientes?search=maria&page=1&pageSize=50`

## Testes / toolchain
Compila com **Delphi 10.4 Sydney (compiler 34.0)**. A unit pura de validação de
documento (`Gourmet.Documento`) tem um harness em `tests/tst_doc.dpr` — já
verificado no dcc32 do 10.4 (10/10, inclui CNPJ alfanumérico `12ABC34501DE35`):
```
call "C:\Program Files (x86)\Embarcadero\Studio\21.0\bin\rsvars.bat"
dcc32 -B -CC tests\tst_doc.dpr && tests\tst_doc.exe
```
> O `GourmetApi.dproj` está pronto para o 10.4; o build completo depende de
> Horse/UniDAC/ACBr instalados e nos search paths (ver `DCC_UnitSearchPath`).

## Próximas fases
Cada um dos 72 módulos do ERP (mcli, mpro, mcpa, mcre, mmnf, mmnc, ...) vira um
diretório em `src/Modules/<Modulo>` com Controller/Service/Repository, portando
as regras do módulo Delphi legado correspondente.
