# Gourmet API — Backend SaaS multi-tenant

Backend do ERP Gourmet como SaaS, reaproveitando o banco atual (1 schema MySQL
por tenant). Stack: **Delphi 13 + Horse + UniDAC + ACBr**, baseado em APIs REST
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
- RAD Studio / Delphi 13 com **Horse**, **horse-jwt**, **horse-cors**, **Jhonson**
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

## Próximas fases
Cada um dos 72 módulos do ERP (mcli, mpro, mcpa, mcre, mmnf, mmnc, ...) vira um
diretório em `src/Modules/<Modulo>` com Controller/Service/Repository, portando
as regras do módulo Delphi legado correspondente.
