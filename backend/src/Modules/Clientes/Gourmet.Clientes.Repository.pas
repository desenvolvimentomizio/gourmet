unit Gourmet.Clientes.Repository;

{ Repositorio de Clientes - acesso a dados parametrizado (UniDAC).

  Le da view v_cli do schema do tenant. NUNCA concatena valores em SQL
  (corrige o anti-padrao do legado): todo filtro vai por parametro.
  O campo etfsenha existe na view mas NAO e exposto. }

interface

uses
  System.SysUtils, System.JSON;

type
  TClientesQuery = record
    Search: string;
    Page: Integer;
    PageSize: Integer;
  end;

  TClientesRepository = class
  public
    /// Retorna { total, items:[...] } paginado, do schema do tenant atual.
    class function List(const AQuery: TClientesQuery): TJSONObject;
  end;

implementation

uses
  Data.DB, Uni, MySQLUniProvider,
  Gourmet.Database, Gourmet.Middleware.Tenant;

class function TClientesRepository.List(const AQuery: TClientesQuery): TJSONObject;
var
  LConn: TUniConnection;
  LQry: TUniQuery;
  LItems: TJSONArray;
  LObj: TJSONObject;
  LWhere: string;
  LOffset, LTotal: Integer;
begin
  LConn := TDatabase.AcquireForSchema(CurrentSchema);
  LQry := TUniQuery.Create(nil);
  try
    LQry.Connection := LConn;

    LWhere := '';
    if AQuery.Search <> '' then
      LWhere := ' WHERE etdidentificacao LIKE :busca OR etddoc1 LIKE :busca '
              + ' OR etftelefone LIKE :busca ';

    // ---- total (para paginacao) ----
    LQry.SQL.Text := 'SELECT COUNT(*) AS total FROM ('
      + 'SELECT DISTINCT etdcodigo FROM v_cli' + LWhere + ') t';
    if AQuery.Search <> '' then
      LQry.ParamByName('busca').AsString := '%' + AQuery.Search + '%';
    LQry.Open;
    LTotal := LQry.FieldByName('total').AsInteger;
    LQry.Close;

    // ---- pagina ----
    LOffset := (AQuery.Page - 1) * AQuery.PageSize;
    LQry.SQL.Text :=
        'SELECT etdcodigo, etdidentificacao, etddoc1, etftelefone, eteemail '
      + 'FROM v_cli' + LWhere + ' GROUP BY etdcodigo '
      + 'ORDER BY etdidentificacao LIMIT :lim OFFSET :off';
    if AQuery.Search <> '' then
      LQry.ParamByName('busca').AsString := '%' + AQuery.Search + '%';
    LQry.ParamByName('lim').AsInteger := AQuery.PageSize;
    LQry.ParamByName('off').AsInteger := LOffset;
    LQry.Open;

    LItems := TJSONArray.Create;
    while not LQry.Eof do
    begin
      LObj := TJSONObject.Create;
      LObj.AddPair('id', TJSONNumber.Create(LQry.FieldByName('etdcodigo').AsInteger));
      LObj.AddPair('nome', LQry.FieldByName('etdidentificacao').AsString);
      LObj.AddPair('documento', LQry.FieldByName('etddoc1').AsString);
      LObj.AddPair('telefone', LQry.FieldByName('etftelefone').AsString);
      LObj.AddPair('email', LQry.FieldByName('eteemail').AsString);
      LItems.AddElement(LObj);
      LQry.Next;
    end;

    Result := TJSONObject.Create;
    Result.AddPair('total', TJSONNumber.Create(LTotal));
    Result.AddPair('page', TJSONNumber.Create(AQuery.Page));
    Result.AddPair('pageSize', TJSONNumber.Create(AQuery.PageSize));
    Result.AddPair('items', LItems);
  finally
    LQry.Free;
    TDatabase.ReleaseConnection(LConn);
  end;
end;

end.
