# Backend Gourmet API — convenções (LEIA antes de mexer)

Delphi 10.4 Sydney (RAD 21.0) + Horse + UniDAC + ACBr. SaaS multi-tenant
(1 schema MySQL por tenant; control-plane `saas_control`; identidade de
entidade compartilhada em `saas_entidades` — ver `docs/ADR-001`).

## Documentação OpenAPI é OBRIGATÓRIA e VIVA (gbswagger)
**Toda criação/alteração de endpoint DEVE atualizar a documentação no mesmo
commit.** A doc roda junto do código — nunca deixe defasar.

Ao adicionar/alterar uma rota:
1. No **controller** (`...Controller.pas`), dentro de `RegisterRoutes`, mantenha
   o bloco `Swagger.Path('<rota>')...` ao lado da rota Horse, refletindo o
   contrato real (verbo, tags, params, responses e status).
2. Em **`Shared/Gourmet.Swagger.Models.pas`**, mantenha/atualize as classes de
   schema (propriedades `published`) que espelham o JSON real de request/response.
   O nome da propriedade vira a chave JSON — bata exatamente com o handler.
3. Verifique: suba o servidor e cheque `GET /swagger/doc/json` (e a UI em
   `/swagger/doc/html`). `/swagger/*` é rota pública (liberada no auth).

Padrão fluente (igual aos samples do gbswagger):
`Swagger.Path('x').Tag('X').POST('resumo','desc').AddParamBody(...).Required(True).Schema(TReq).&End.AddResponse(200).Schema(TResp).&End.&End.&End;`

## Padrões de código
- **Camadas por módulo**: `Controller` (HTTP) → `Service` (regra de negócio,
  porta do módulo legado m***) → `Repository` (UniDAC). Sem regra no controller.
- **SQL sempre PARAMETRIZADO** (`:param` + `ParamByName`). Nunca concatenar
  valores (o legado tinha 2079 concatenações — não repetir).
- **Tenant**: o repositório usa `CurrentSchema` (middleware resolve do JWT).
  Conexões via `TDatabase.AcquireForSchema` / `AcquireControl`.
- **Erros**:
  - Em **service/handler**: `raise EApiError.Create(status,msg)` (ou
    `EUnauthorized/EForbidden/ENotFound`) — o middleware `HandleErrors` converte
    em JSON `{error,message}` com o status.
  - Em **middleware global** (auth/tenant): NÃO basta não chamar `Next` (nesta
    versão do Horse a cadeia continua). Use short-circuit:
    `RespondError(Res,status,code,msg); raise EHorseCallbackInterrupted.Create;`
    `HandleErrors` re-lança `EHorseCallbackInterrupted`/`EHorseException`.
- **JWT**: HS256, `JWT_SECRET` >= 32 chars (256 bits) senão o JOSE rejeita todos
  os tokens. Validação completa (assinatura+issuer+exp) no `EnsureAuthenticated`.
- **Senha**: PBKDF2-HMAC-SHA256 (`Gourmet.Password`).

## Build / rodar
- Deps de terceiros clonadas em `modules/` (gitignored): horse, jhonson,
  horse-cors, horse-jwt, delphi-jose-jwt, hashlib4pascal, gbswagger.
- `build.bat` compila via dcc32 (ajuste `UNIDAC_LIB` ao seu UniDAC `Lib\Delphi27`).
- Config por env (ver `run_test.bat`) ou `config/config.ini` (NÃO versionar).
- Horse console: `EReadError HorseWebModule.PixelsPerInch` afeta só o 1º request
  — faça um warmup em `/health` antes de testar.

## Testes
`tests/tst_doc.dpr` (CNPJ alfanumérico/CPF), `tst_pwd.dpr` (PBKDF2),
`tst_jwt.dpr` (assinatura/exp/issuer) — compilam/rodam isolados no dcc32.
