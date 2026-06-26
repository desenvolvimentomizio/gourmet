unit Gourmet.Auth.Repository;

{ Acesso a dados de autenticacao no control-plane (saas_control).
  Busca o usuario por (tenant slug + email), trazendo hash da senha, papeis
  e situacao do usuario e da assinatura do tenant. }

interface

type
  TAuthUser = record
    Found: Boolean;
    UserId: Int64;
    SenhaHash: string;
    Roles: string;
    Ativo: Boolean;
    TenantSlug: string;
    TenantActive: Boolean;
  end;

  TAuthRepository = class
  public
    class function FindUser(const ATenantSlug, AEmail: string): TAuthUser;
  end;

implementation

uses
  System.SysUtils, Data.DB, Uni, MySQLUniProvider,
  Gourmet.Database;

class function TAuthRepository.FindUser(const ATenantSlug, AEmail: string): TAuthUser;
var
  LConn: TUniConnection;
  LQry: TUniQuery;
begin
  Result := Default(TAuthUser);
  LConn := TDatabase.AcquireControl;
  LQry := TUniQuery.Create(nil);
  try
    LQry.Connection := LConn;
    LQry.SQL.Text :=
      'SELECT u.id, u.senha_hash, u.roles, u.ativo, t.slug, ' +
      '       (t.status = ''active'') AS tenant_active ' +
      'FROM usuarios u ' +
      'INNER JOIN tenants t ON t.id = u.tenant_id ' +
      'WHERE t.slug = :slug AND u.email = :email LIMIT 1';
    LQry.ParamByName('slug').AsString := ATenantSlug;
    LQry.ParamByName('email').AsString := AEmail;
    LQry.Open;

    if LQry.IsEmpty then
      Exit;

    Result.Found := True;
    Result.UserId := LQry.FieldByName('id').AsLargeInt;
    Result.SenhaHash := LQry.FieldByName('senha_hash').AsString;
    Result.Roles := LQry.FieldByName('roles').AsString;
    Result.Ativo := LQry.FieldByName('ativo').AsInteger = 1;
    Result.TenantSlug := LQry.FieldByName('slug').AsString;
    Result.TenantActive := LQry.FieldByName('tenant_active').AsInteger = 1;
  finally
    LQry.Free;
    LConn.Free;
  end;
end;

end.
