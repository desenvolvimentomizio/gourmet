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
  System.SysUtils, Data.DB, Uni, MySQLUniProvider,
  Gourmet.Config, Gourmet.Database, Gourmet.Middleware.Auth;

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

class function TEntidadesRepository.VincularEEspelhar(const ASchema: string;
  const AGlobal: TEntidadeGlobal; const ADados: TEntidadeInput): TEntidadeResolvida;
var
  LGlobalConn, LTenantConn: TUniConnection;
  LQry: TUniQuery;
begin
  Result.IdGlobal := AGlobal.IdGlobal;
  Result.Reaproveitada := True; // ajustado pelo chamador conforme o caso

  LGlobalConn := GlobalConn;
  LTenantConn := TDatabase.AcquireForSchema(ASchema);
  LQry := TUniQuery.Create(nil);
  try
    // 1) Ja existe vinculo deste tenant com a entidade global?
    LQry.Connection := LGlobalConn;
    LQry.SQL.Text :=
      'SELECT etdcodigo_local FROM empresa_entidade ' +
      'WHERE tenant_id = :tid AND id_global = :gid LIMIT 1';
    // tenant_id resolvido pelo slug do JWT (lookup no control-plane omitido no esqueleto)
    LQry.ParamByName('tid').AsString := CurrentAuth.TenantSlug;
    LQry.ParamByName('gid').AsLargeInt := AGlobal.IdGlobal;
    LQry.Open;
    if not LQry.IsEmpty then
    begin
      Result.EtdCodigoLocal := LQry.FieldByName('etdcodigo_local').AsInteger;
      Exit; // ja vinculada -> idempotente
    end;
    LQry.Close;

    // 2) TODO Fase B: transacao/unidade de trabalho cobrindo as 2 conexoes:
    //    a) INSERT na etd local (espelho) reaproveitando id_global como etdcodigo
    //       quando livre, ou alocando etdcodigo local e mapeando.
    //    b) INSERT em empresa_entidade (tenant_id, id_global, etdcodigo_local, papeis).
    //    c) INSERT papeis em etv, contatos em etf/ete (dados por-tenant).
    //  Implementar com compensacao (sem 2PC entre schemas).
    raise Exception.Create('VincularEEspelhar: persistencia do espelho pendente (Fase B)');
  finally
    LQry.Free;
    LTenantConn.Free;
    LGlobalConn.Free;
  end;
end;

end.
