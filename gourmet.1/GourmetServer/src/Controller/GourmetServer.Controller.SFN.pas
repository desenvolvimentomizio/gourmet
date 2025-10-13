unit GourmetServer.Controller.SFN;

interface

Uses
  Horse,
  System.Json,
  System.SysUtils,
  idHashMessageDigest,
  GourmetServer.Service.Funcoes,
  GourmetServer.Model.DAOGeneric,
  GourmetServer.Model.Entity.SFN;

Function ManutencaoSFN(vItem: TJsonObject): Integer;
function BuscaCodigoSFNProCodigo(vProCodigo: Integer): Integer;



type
  TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

implementation


function BuscaCodigoSFNProCodigo(vProCodigo: Integer): Integer;
var
  FDAO: iDAOGeneric<TSFN>;
  vlsfncodigo: Integer;
begin
  vlsfncodigo := 0;

  FDAO := TDAOGeneric<TSFN>.New;

  FDAO.DAO.SQL.where('procodigo=' + vProCodigo.ToString).&End.Find;

  vlsfncodigo := FDAO.DataSet.FieldByName('sfncodigo').asinteger;
  result := vlsfncodigo;
end;


Function ManutencaoSFN(vItem: TJsonObject): Integer;
var
  FDAO: GourmetServer.Model.DAOGeneric.iDAOGeneric<TSFN>;
  FSFN: TSFN;
  vlSfnCodigo: Integer;

begin
  FDAO := TDAOGeneric<TSFN>.New;

  vlSfnCodigo := vItem.getvalue('sfncodigo', '').ToInteger;

  FSFN := TSFN.Create;
  FSFN.sfncodigo := vlSfnCodigo;
  FSFN.unicodigo := vItem.getvalue('unicodigo', '').ToInteger;
  FSFN.procodigo := vItem.getvalue('procodigo', '').ToInteger;
  FSFN.sfnquantidade:= strtocurr(vItem.getvalue('sfnquantidade', ''));
  FSFN.sfnordem := vItem.getvalue('sfnordem', '').ToInteger;
  FSFN.sipcodigo := vItem.getvalue('sipcodigo', '').ToInteger;

  if vlSfnCodigo = 0 then
  // incluir novo
  begin
    FSFN.SfnCodigo := 0;
    FDAO.DAO.Insert(FSFN);
    FDAO.DAO.LastID;
    vlSfnCodigo := FDAO.DataSet.FieldByName('sfncodigo').asinteger;
  end
  else
  // alterar se ja existe
  begin
    FSFN.sfncodigo := vlSfnCodigo;
    FDAO.DAO.Update(FSFN);
  end;
  result := vlSfnCodigo;
end;

end.
