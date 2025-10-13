unit GourmetServer.Controller.aiq.AIQMDA;

interface

Uses
  System.Json,
  System.SysUtils,
  idHashMessageDigest,
  GourmetServer.Model.DAOGeneric,
  GourmetServer.Model.Entity.aiq.AIQMDA;

function BuscaModalidadeAIQMDA(vModalidade: String): Integer;

type
  TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

implementation

function BuscaModalidadeAIQMDA(vModalidade: String): Integer;
var
  FDAO: iDAOGeneric<TAIQMDA>;

begin
  FDAO := TDAOGeneric<TAIQMDA>.New;
  FDAO.DAO.SQL.where('lower(aiqmdaidentificacao)=' + QuotedStr(lowercase(vModalidade))).&End.Find;
  result := FDAO.DataSet.FieldByName('mdacodigo').asinteger;

end;

end.
