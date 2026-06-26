unit Gourmet.Middleware.Tenant;

{ Resolucao de tenant.

  Le o slug do tenant do contexto autenticado (claim do JWT), consulta o
  control-plane para descobrir o SCHEMA MySQL daquele cliente e o status da
  assinatura, e disponibiliza o schema para os controllers via CurrentSchema.

  A conexao em si e adquirida sob demanda pelo repositorio (AcquireForSchema),
  para nao manter conexao aberta em requests que nao tocam o banco. }

interface

uses
  System.SysUtils, Horse;

procedure ResolveTenant(Req: THorseRequest; Res: THorseResponse; Next: TProc);
/// Schema MySQL do tenant da request atual (por thread).
function CurrentSchema: string;

implementation

uses
  System.StrUtils,
  Gourmet.Middleware.Auth, Gourmet.ControlPlane, Gourmet.Shared.Errors;

threadvar
  GSchema: string;

function CurrentSchema: string;
begin
  Result := GSchema;
  if Result = '' then
    raise EApiError.Create(500, 'Tenant nao resolvido para esta request');
end;

function IsPublicRoute(const APath: string): Boolean;
begin
  Result := (APath = '/health')
    or APath.StartsWith('/api/v1/auth/')
    or APath.StartsWith('/swagger');
end;

procedure ResolveTenant(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LInfo: TTenantInfo;
begin
  GSchema := '';

  if IsPublicRoute(Req.RawWebRequest.PathInfo) then
  begin
    Next();
    Exit;
  end;

  try
    LInfo := TControlPlane.ResolveTenant(CurrentAuth.TenantSlug);
  except
    on E: ETenantNotFound do
    begin
      RespondError(Res, 404, 'NotFound', 'Tenant nao encontrado');
      raise EHorseCallbackInterrupted.Create; // short-circuit
    end;
    on E: ETenantInactive do
    begin
      RespondError(Res, 403, 'Forbidden', 'Assinatura inativa ou suspensa');
      raise EHorseCallbackInterrupted.Create;
    end;
  end;

  GSchema := LInfo.Schema;
  Next();
end;

end.
