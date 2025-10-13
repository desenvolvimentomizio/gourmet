unit GourmetServer.Controller.ETV;

interface

Uses
  Horse,
  System.Json,
  System.SysUtils,
  idHashMessageDigest,
  GourmetServer.Model.DAOGeneric,
  GourmetServer.Model.Entity.ETV;

Function ManutencaoETV(vetdcodigo: Integer): Integer;
function BuscaCodigoVinculo(vEtdCodigo: Integer; vVinculo: String): Integer;


type
  TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

implementation

function BuscaCodigoVinculo(vEtdCodigo: Integer; vVinculo: String): Integer;
var
  FDAO:GourmetServer.Model.DAOGeneric.iDAOGeneric<TETV>;
  vletvcodigo: Integer;
begin
  FDAO := TDAOGeneric<TETV>.New;
  vletvcodigo :=0;

  FDAO.DAO.SQL.where('etdcodigo=' + vEtdCodigo.ToString + ' and tvicodigo=' + vVinculo).&End.Find;

  vletvcodigo := FDAO.DataSet.FieldByName('etvcodigo').asinteger;
  result := vletvcodigo;
end;


Function ManutencaoETV(vetdcodigo: Integer): Integer;
var
  FDAO: GourmetServer.Model.DAOGeneric.iDAOGeneric<TETV>;
  FETV: TETV;
  vletvcodigo: integer;
  vletdcodigo: Integer;
begin
  FDAO := TDAOGeneric<TETV>.New;

  vletvcodigo := 0;
  vletdcodigo:= vetdcodigo;
  vletvcodigo := BuscaCodigoVinculo(vetdcodigo, '1');

  FETV := TETV.Create;
  FETV.etvcodigo := vletvcodigo;
  FETV.etdcodigo := vletdcodigo;
  FETV.tvicodigo := 1;


  if vletvcodigo = 0 then
  // incluir novo
  begin
    FETV.etvcodigo := 0;
    FDAO.DAO.Insert(FETV);
    FDAO.DAO.LastID;
    vletvcodigo := FDAO.DataSet.FieldByName('etvcodigo').asInteger;
  end
  else
  // alterar se ja existe
  begin
    FETV.etvcodigo := vletvcodigo;
    FDAO.DAO.Update(FETV);
  end;
  result := vletvcodigo;

end;

end.
