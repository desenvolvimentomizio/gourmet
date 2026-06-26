unit Gourmet.Entidades.Repository;

{ Persistencia do modulo Entidades.

  Toca DOIS bancos:
    - saas_entidades (global): entidade_global + empresa_entidade.
    - schema do tenant: etd (espelho local, mantendo o mesmo etdcodigo).

  ESQUELETO Fase A: as assinaturas e o fluxo estao prontos; os blocos marcados
  com TODO consolidam a transacao distribuida (idealmente envolver as duas
  conexoes numa unidade de trabalho com compensacao, ja que sao schemas/conexoes
  distintos). Todas as queries sao PARAMETRIZADAS. }

interface

uses
  Gourmet.Entidades.DTO;

type
  TEntidadesRepository = class
  public
    class function TryGetGlobalPorChave(const AChave: string;
      out AGlobal: TEntidadeGlobal): Boolean;
    class function CriarGlobalComChave(const AChave: string;
      const ADados: TEntidadeInput): TEntidadeGlobal;
    class function CriarGlobalCodigoUnico(
      const ADados: TEntidadeInput): TEntidadeGlobal;
    class procedure AtualizarIdentidade(AIdGlobal: Int64;
      const ADados: TEntidadeInput);
    /// Cria o vinculo tenant<->global e espelha na etd local (idempotente).
    class function VincularEEspelhar(const ASchema: string;
      const AGlobal: TEntidadeGlobal;
      const ADados: TEntidadeInput): TEntidadeResolvida;
  end;

implementation

uses
  System.SysUtils, System.Classes, Data.DB, Uni, MySQLUniProvider,
  Gourmet.Config, Gourmet.Database, Gourmet.Middleware.Auth, Gourmet.ControlPlane;

function LastInsertId(AQry: TUniQuery): Int64;
begin
  // UniDAC nao expoe LastInsertId na conexao; usa LAST_INSERT_ID() na mesma sessao.
  AQry.SQL.Text := 'SELECT LAST_INSERT_ID() AS id';
  AQry.Open;
  try
    Result := AQry.FieldByName('id').AsLargeInt;
  finally
    AQry.Close;
  end;
end;

function GlobalConn: TUniConnection;
begin
  // Conexao ao registro global (schema saas_entidades).
  Result := TUniConnection.Create(nil);
  Result.ProviderName := 'MySQL';
  Result.Server := TConfig.TenantHost;
  Result.Port := TConfig.TenantPort;
  Result.Username := TConfig.TenantUser;
  Result.Password := TConfig.TenantPassword;
  Result.Database := 'saas_entidades';
  Result.LoginPrompt := False;
  Result.Pooling := True;
  Result.SpecificOptions.Values['MySQL.Charset'] := 'utf8mb4';
  Result.Connected := True;
end;

class function TEntidadesRepository.TryGetGlobalPorChave(const AChave: string;
  out AGlobal: TEntidadeGlobal): Boolean;
var
  LConn: TUniConnection;
  LQry: TUniQuery;
begin
  LConn := GlobalConn;
  LQry := TUniQuery.Create(nil);
  try
    LQry.Connection := LConn;
    LQry.SQL.Text :=
      'SELECT id_global, chave_unica, tipo_chave, doc, nome ' +
      'FROM entidade_global WHERE chave_unica = :chave LIMIT 1';
    LQry.ParamByName('chave').AsString := AChave;
    LQry.Open;
    Result := not LQry.IsEmpty;
    if Result then
    begin
      AGlobal.IdGlobal := LQry.FieldByName('id_global').AsLargeInt;
      AGlobal.ChaveUnica := LQry.FieldByName('chave_unica').AsString;
      AGlobal.TipoChave := LQry.FieldByName('tipo_chave').AsString;
      AGlobal.Doc := LQry.FieldByName('doc').AsString;
      AGlobal.Nome := LQry.FieldByName('nome').AsString;
    end;
  finally
    LQry.Free;
    LConn.Free;
  end;
end;

class function TEntidadesRepository.CriarGlobalComChave(const AChave: string;
  const ADados: TEntidadeInput): TEntidadeGlobal;
var
  LConn: TUniConnection;
  LQry: TUniQuery;
  LTipo: string;
begin
  if AChave.StartsWith('CNPJ:') then LTipo := 'CNPJ' else LTipo := 'CPF';
  LConn := GlobalConn;
  LQry := TUniQuery.Create(nil);
  try
    LQry.Connection := LConn;
    LQry.SQL.Text :=
      'INSERT INTO entidade_global (chave_unica, tipo_chave, doc, nome, tipo_pessoa, ie) ' +
      'VALUES (:chave, :tipo, :doc, :nome, :tp, :ie)';
    LQry.ParamByName('chave').AsString := AChave;
    LQry.ParamByName('tipo').AsString := LTipo;
    LQry.ParamByName('doc').AsString := AChave.Substring(AChave.IndexOf(':') + 1);
    LQry.ParamByName('nome').AsString := ADados.Nome;
    LQry.ParamByName('tp').AsString := ADados.TipoPessoa;
    LQry.ParamByName('ie').AsString := ADados.Ie;
    LQry.Execute;

    Result.IdGlobal := LastInsertId(LQry);
    Result.ChaveUnica := AChave;
    Result.TipoChave := LTipo;
    Result.Doc := AChave.Substring(AChave.IndexOf(':') + 1);
    Result.Nome := ADados.Nome;
  finally
    LQry.Free;
    LConn.Free;
  end;
end;

class function TEntidadesRepository.CriarGlobalCodigoUnico(
  const ADados: TEntidadeInput): TEntidadeGlobal;
var
  LConn: TUniConnection;
  LQry: TUniQuery;
  LSeq: Int64;
begin
  LConn := GlobalConn;
  LQry := TUniQuery.Create(nil);
  try
    LQry.Connection := LConn;
    // Aloca CODIGO_UNICO atomico via procedure.
    LQry.SQL.Text := 'CALL sp_next_codigo_unico(@seq)';
    LQry.Execute;
    LQry.SQL.Text := 'SELECT @seq AS seq';
    LQry.Open;
    LSeq := LQry.FieldByName('seq').AsLargeInt;
    LQry.Close;

    LQry.SQL.Text :=
      'INSERT INTO entidade_global (chave_unica, tipo_chave, doc, nome, tipo_pessoa, ie) ' +
      'VALUES (:chave, ''CODIGO_UNICO'', NULL, :nome, :tp, :ie)';
    LQry.ParamByName('chave').AsString := 'UNI:' + LSeq.ToString;
    LQry.ParamByName('nome').AsString := ADados.Nome;
    LQry.ParamByName('tp').AsString := ADados.TipoPessoa;
    LQry.ParamByName('ie').AsString := ADados.Ie;
    LQry.Execute;

    Result.IdGlobal := LastInsertId(LQry);
    Result.ChaveUnica := 'UNI:' + LSeq.ToString;
    Result.TipoChave := 'CODIGO_UNICO';
    Result.Nome := ADados.Nome;
  finally
    LQry.Free;
    LConn.Free;
  end;
end;

class procedure TEntidadesRepository.AtualizarIdentidade(AIdGlobal: Int64;
  const ADados: TEntidadeInput);
var
  LConn: TUniConnection;
  LQry: TUniQuery;
begin
  LConn := GlobalConn;
  LQry := TUniQuery.Create(nil);
  try
    LQry.Connection := LConn;
    LQry.SQL.Text :=
      'UPDATE entidade_global SET nome = :nome WHERE id_global = :id';
    LQry.ParamByName('nome').AsString := ADados.Nome;
    LQry.ParamByName('id').AsLargeInt := AIdGlobal;
    LQry.Execute;
  finally
    LQry.Free;
    LConn.Free;
  end;
end;

// Compensacao: remove o espelho local se o vinculo global falhar (sem 2PC
// entre schemas distintos).
procedure CompensarEspelho(const ASchema: string; ALocalCode: Integer);
var
  LConn: TUniConnection;
  LQry: TUniQuery;
begin
  LConn := TDatabase.AcquireForSchema(ASchema);
  LQry := TUniQuery.Create(nil);
  try
    LQry.Connection := LConn;
    LQry.SQL.Text := 'DELETE FROM etv WHERE etdcodigo = :c';
    LQry.ParamByName('c').AsInteger := ALocalCode;
    LQry.Execute;
    LQry.SQL.Text := 'DELETE FROM etd WHERE etdcodigo = :c';
    LQry.ParamByName('c').AsInteger := ALocalCode;
    LQry.Execute;
  finally
    LQry.Free;
    TDatabase.ReleaseConnection(LConn);
  end;
end;

// Insere o espelho na etd local (etdcodigo e AUTO_INCREMENT) + papeis em etv,
// numa transacao do schema do tenant. Retorna o etdcodigo_local gerado.
function EspelharNoTenant(const ASchema: string;
  const AGlobal: TEntidadeGlobal; const ADados: TEntidadeInput): Integer;
var
  LConn: TUniConnection;
  LQry: TUniQuery;
  LPapel: string;
  LTpe: Integer;
begin
  // tpecodigo (FK -> tpe): F=Fisica(1), J=Juridica(2), demais=Outros(9).
  if ADados.TipoPessoa = 'F' then
    LTpe := 1
  else if ADados.TipoPessoa = 'J' then
    LTpe := 2
  else
    LTpe := 9;

  LConn := TDatabase.AcquireForSchema(ASchema);
  LQry := TUniQuery.Create(nil);
  try
    LQry.Connection := LConn;
    LConn.StartTransaction;
    try
      LQry.SQL.Text :=
        'INSERT INTO etd (etdidentificacao, etdapelido, etddoc1, tpecodigo, ' +
        '                 etddatacad, etddataalt, etdativo, etddeletar) ' +
        'VALUES (:nome, :apel, :doc, :tpe, :dt, :dt, 1, 0)';
      LQry.ParamByName('nome').AsString := ADados.Nome;
      LQry.ParamByName('apel').AsString := ADados.Nome;
      LQry.ParamByName('doc').AsString := AGlobal.Doc;
      LQry.ParamByName('tpe').AsInteger := LTpe;
      LQry.ParamByName('dt').AsDate := Date;
      LQry.Execute;

      LQry.SQL.Text := 'SELECT LAST_INSERT_ID() AS id';
      LQry.Open;
      Result := LQry.FieldByName('id').AsInteger;
      LQry.Close;

      // papeis (etv): CSV de tvicodigo (1=cli, 2=forn, 4=transp, ...)
      for LPapel in ADados.Papeis.Split([',']) do
        if LPapel.Trim <> '' then
        begin
          LQry.SQL.Text := 'INSERT INTO etv (etdcodigo, tvicodigo) VALUES (:cod, :tvi)';
          LQry.ParamByName('cod').AsInteger := Result;
          LQry.ParamByName('tvi').AsInteger := StrToIntDef(LPapel.Trim, 0);
          LQry.Execute;
        end;

      LConn.Commit;
    except
      LConn.Rollback;
      raise;
    end;
  finally
    LQry.Free;
    TDatabase.ReleaseConnection(LConn);
  end;
end;

class function TEntidadesRepository.VincularEEspelhar(const ASchema: string;
  const AGlobal: TEntidadeGlobal; const ADados: TEntidadeInput): TEntidadeResolvida;
var
  LGlobalConn: TUniConnection;
  LQry: TUniQuery;
  LTenantId: Int64;
  LLocalCode: Integer;
begin
  Result.IdGlobal := AGlobal.IdGlobal;
  Result.Reaproveitada := True;

  LTenantId := TControlPlane.ResolveTenant(CurrentAuth.TenantSlug).Id;

  // 1) Ja vinculada a este tenant? -> idempotente.
  LGlobalConn := GlobalConn;
  LQry := TUniQuery.Create(nil);
  try
    LQry.Connection := LGlobalConn;
    LQry.SQL.Text :=
      'SELECT etdcodigo_local FROM empresa_entidade ' +
      'WHERE tenant_id = :tid AND id_global = :gid LIMIT 1';
    LQry.ParamByName('tid').AsLargeInt := LTenantId;
    LQry.ParamByName('gid').AsLargeInt := AGlobal.IdGlobal;
    LQry.Open;
    if not LQry.IsEmpty then
    begin
      Result.EtdCodigoLocal := LQry.FieldByName('etdcodigo_local').AsInteger;
      Exit; // ja vinculada
    end;
  finally
    LQry.Free;
    LGlobalConn.Free;
  end;

  // 2) Espelha na etd local (transacao no tenant).
  LLocalCode := EspelharNoTenant(ASchema, AGlobal, ADados);

  // 3) Registra o vinculo no global; se falhar, compensa o espelho local.
  LGlobalConn := GlobalConn;
  LQry := TUniQuery.Create(nil);
  try
    LQry.Connection := LGlobalConn;
    try
      LQry.SQL.Text :=
        'INSERT INTO empresa_entidade (tenant_id, id_global, etdcodigo_local, papeis) ' +
        'VALUES (:tid, :gid, :loc, :pap)';
      LQry.ParamByName('tid').AsLargeInt := LTenantId;
      LQry.ParamByName('gid').AsLargeInt := AGlobal.IdGlobal;
      LQry.ParamByName('loc').AsInteger := LLocalCode;
      LQry.ParamByName('pap').AsString := ADados.Papeis;
      LQry.Execute;
    except
      on E: Exception do
      begin
        CompensarEspelho(ASchema, LLocalCode);
        raise;
      end;
    end;
  finally
    LQry.Free;
    LGlobalConn.Free;
  end;

  Result.EtdCodigoLocal := LLocalCode;
  Result.Reaproveitada := False; // espelho novo criado neste tenant
end;

end.
