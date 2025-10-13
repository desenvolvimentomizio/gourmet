unit GourmetServer.Controller.SBV;

interface

Uses
  Horse,
  System.Json,
  System.SysUtils,
  idHashMessageDigest,
  GourmetServer.Model.DAOGeneric,
  GourmetServer.Model.Entity.SBV;

Function ManutencaoSBV(vItem: TJsonObject): Integer;

type
  TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

implementation

uses
  FireDAC.Comp.Client;

Function ManutencaoSBV(vItem: TJsonObject): Integer;
var
  FDAO: GourmetServer.Model.DAOGeneric.iDAOGeneric<TSBV>;
  FSBV: TSBV;
  vlsbvchave: Integer;
begin
  FDAO := TDAOGeneric<TSBV>.New;

  vlsbvchave := vItem.getvalue('sbvchave', '').ToInteger;

  FSBV := TSBV.Create;
  FSBV.sbvchave := vlsbvchave;
  FSBV.itmchave := vItem.getvalue('itmchave', '').ToInteger;
  FSBV.itochave := vItem.getvalue('itochave', '').ToInteger;
  FSBV.sbrcodigo := vItem.getvalue('sbrcodigo', '').ToInteger;
  FSBV.sbvobs := vItem.getvalue('sbvobs', '');
  FSBV.sbvitem := vItem.getvalue('sbvitem', '').ToInteger;;
  FSBV.bprchave := vItem.getvalue('bprchave', '').ToInteger;;

  if vlsbvchave = 0 then
  // incluir novo
  begin
    FSBV.sbvchave := 0;
    FDAO.DAO.Insert(FSBV);
    FDAO.DAO.LastID;
    vlsbvchave := FDAO.DataSet.FieldByName('sbvchave').asInteger;
  end
  else
  // alterar se ja existe
  begin
    FSBV.itochave := vlsbvchave;
    FDAO.DAO.Update(FSBV);
  end;
  result := vlsbvchave;


end;

end.
