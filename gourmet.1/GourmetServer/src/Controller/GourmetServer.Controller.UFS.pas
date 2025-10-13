unit GourmetServer.Controller.UFS;

interface

Uses
  System.SysUtils,

  idHashMessageDigest,
  GourmetServer.Model.DAOGeneric,
  GourmetServer.Model.Entity.UFS;

function BuscaCodigoUF(vNomeUF: string): string;

type
  TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

implementation


function BuscaCodigoUF(vNomeUF: string): string;
var
  FDAO: iDAOGeneric<TUFS>;
  vlufscodigo: string;
begin
  vlufscodigo := '';

  FDAO := TDAOGeneric<TUFS>.New;

  FDAO.DAO.SQL.where('ufssigla=' + QuotedStr(vNomeUF)).&End.Find;

  vlufscodigo := FDAO.DataSet.FieldByName('ufscodigo').asstring;
  result := vlufscodigo;

end;

end.
