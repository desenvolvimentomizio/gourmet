unit GourmetServer.Controller.BRG;

interface

Uses
  System.Json,
  System.SysUtils,
  idHashMessageDigest,
  GourmetServer.Model.DAOGeneric,
  GourmetServer.Model.Entity.BRG;

function BuscaCodigoBRGGrpCodigo(vGrpCodigo: Integer): Integer;

type
  TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

implementation

function BuscaCodigoBRGGrpCodigo(vGrpCodigo: Integer): Integer;
var
  FDAO: iDAOGeneric<TBRG>;
  vlbrdcodigo: Integer;
begin
  vlbrdcodigo := 0;

  FDAO := TDAOGeneric<TBRG>.New;

  FDAO.DAO.SQL.where('grpcodigo=' + vGrpCodigo.ToString).&End.Find;

  vlbrdcodigo := FDAO.DataSet.FieldByName('brdcodigo').AsInteger;
  result := vlbrdcodigo;
end;

end.
