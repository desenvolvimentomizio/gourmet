unit GourmetServer.Controller.BRD;

interface

Uses
  System.Json,
  System.SysUtils,
  idHashMessageDigest,
  GourmetServer.Model.DAOGeneric,
  GourmetServer.Controller.PRO,
  GourmetServer.Controller.GRP,
  GourmetServer.Controller.UNI,
  GourmetServer.Controller.PUN,
  GourmetServer.Model.Entity.BRD;

type
  TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

function ManutencaoBRD(vBorda: TJsonObject): Integer;
function ManutencaoBRDAplicativo(vIdentificacao: String; vValor: string; vOrigem: Integer): Integer;

function BuscaCodigoPRObrdCodigo(vCodigo: String): String;
function BuscaCodigoBRDproCodigo(vCodigo: String): String;

function BuscaCodigoBRDIdentificacao(vIdentificacao: String): Integer;

implementation

function ManutencaoBRDAplicativo(vIdentificacao: String; vValor: string; vOrigem: Integer): Integer;
var
  vlbrdcodigo: Integer;
  vlBorda: TJsonObject;
  vlProcodigo: Integer;
  vlGrpCodigo: Integer;
  vlUniCodigo: Integer;
  vlPunCodigo: Integer;
begin
  vlbrdcodigo := BuscaCodigoBRDIdentificacao(vIdentificacao);

  if vlbrdcodigo = 0 then
  begin
    vlBorda := TJsonObject.Create;
    vlBorda.AddPair('brdcodigo', '0');
    vlBorda.AddPair('brdidentificacao', vIdentificacao);
    vlGrpCodigo := BuscaGRPNome('MATERIA PRIMA', vOrigem);
    vlUniCodigo := BuscaUNINome('UNIDADE', vOrigem);

    vlProcodigo := ManutencaoPROAplicativo(vIdentificacao, vlGrpCodigo, vlUniCodigo, 9, '');
    vlUniCodigo := ManutencaoPUNAplicativo(vlProcodigo, vlUniCodigo, vValor);

    vlBorda.AddPair('procodigo', vlProcodigo.ToString);
    vlBorda.AddPair('sipcodigo', '1');

    vlbrdcodigo := ManutencaoBRD(vlBorda);
  end;

  result := vlbrdcodigo;
end;

function ManutencaoBRD(vBorda: TJsonObject): Integer;
var
  FDAO: GourmetServer.Model.DAOGeneric.iDAOGeneric<TBRD>;
  FBRD: TBRD;
  vlbrdcodigo: Integer;

begin
  FDAO := TDAOGeneric<TBRD>.New;

  vlbrdcodigo := vBorda.getvalue('brdcodigo', '').ToInteger;

  FBRD := TBRD.Create;
  FBRD.brdCodigo := vlbrdcodigo;
  FBRD.brdidentificacao := vBorda.getvalue('brdidentificacao', '');
  FBRD.procodigo := vBorda.getvalue('procodigo', '').ToInteger;
  FBRD.sipcodigo := vBorda.getvalue('sipcodigo', '').ToInteger;

  if vlbrdcodigo = 0 then
  // incluir novo
  begin
    FBRD.brdCodigo := 0;
    FDAO.DAO.Insert(FBRD);
    FDAO.DAO.LastID;
    vlbrdcodigo := FDAO.DataSet.FieldByName('brdcodigo').asInteger;
  end
  else
  // alterar se ja existe
  begin
    FBRD.brdCodigo := vlbrdcodigo;
    FDAO.DAO.Update(FBRD);
  end;

  result := vlbrdcodigo;

end;

function BuscaCodigoBRDIdentificacao(vIdentificacao: String): Integer;
var
  FDAO: iDAOGeneric<TBRD>;
  vlbrdcodigo: Integer;
begin

  vlbrdcodigo := 0;

  FDAO := TDAOGeneric<TBRD>.New;

  FDAO.DAO.SQL.where('brdidentificacao=' + QuotedStr(vIdentificacao)).&End.Find;

  vlbrdcodigo := FDAO.DataSet.FieldByName('brdcodigo').asInteger;
  result := vlbrdcodigo;

end;

function BuscaCodigoPRObrdCodigo(vCodigo: String): String;
var
  FDAO: iDAOGeneric<TBRD>;
  vlProcodigo: string;
begin

  vlProcodigo := '';

  FDAO := TDAOGeneric<TBRD>.New;

  FDAO.DAO.SQL.where('brdcodigo=' + vCodigo).&End.Find;

  vlProcodigo := FDAO.DataSet.FieldByName('procodigo').asstring;
  result := vlProcodigo;

end;

function BuscaCodigoBRDproCodigo(vCodigo: String): String;
var
  FDAO: iDAOGeneric<TBRD>;
  vlProcodigo: string;
begin

  vlProcodigo := '';

  FDAO := TDAOGeneric<TBRD>.New;

  FDAO.DAO.SQL.where('procodigo=' + vCodigo).&End.Find;

  vlProcodigo := FDAO.DataSet.FieldByName('brdcodigo').asstring;
  result := vlProcodigo;

end;

end.
