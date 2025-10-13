unit GourmetServer.Controller.CLB;

interface

Uses
  Horse,
  System.Json,
  System.SysUtils,
  idHashMessageDigest,
  GourmetServer.Model.DAOGeneric,
  GourmetServer.Model.Entity.CLB;

Function BuscaCodigoCLBclbNome(vNome: string): String;

type
  TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

implementation

Function BuscaCodigoCLBclbNome(vNome: string): String;
var
  FDAO: iDAOGeneric<TCLB>;
begin
  FDAO := TDAOGeneric<TCLB>.New;
  FDAO.DAO.SQL.where('clbidentificacao=' + QuotedStr(vNome)).&End.Find;
  result := FDAO.DataSet.FieldByName('clbcodigo').asstring;
end;

end.
