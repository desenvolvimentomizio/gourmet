unit GourmetServer.Controller.ISV;

interface

Uses
  Horse,
  System.Json,
  System.SysUtils,
  idHashMessageDigest,
  GourmetServer.Model.DAOGeneric,
  GourmetServer.Model.Entity.ISV;

Function ManutencaoISV(vItem: TJsonObject): Integer;

type
  TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

implementation

Function ManutencaoISV(vItem: TJsonObject): Integer;
var
  FDAO: GourmetServer.Model.DAOGeneric.iDAOGeneric<TISV>;
  FISV: TISV;
  vlisvchave: Integer;
begin
  FDAO := TDAOGeneric<TISV>.New;

  vlisvchave := vItem.getvalue('sbvchave', '').ToInteger;

  FISV := TISV.Create;
  FISV.isvchave := vlisvchave;
  FISV.sbvchave := vItem.getvalue('sbvchave', '').ToInteger;
  FISV.tsicodigo := vItem.getvalue('tsicodigo', '').ToInteger;
  FISV.procodigo := vItem.getvalue('procodigo', '').ToInteger;
  FISV.isvtipo := vItem.getvalue('isvtipo', '').ToInteger;
  FISV.itochave := vItem.getvalue('itochave', '').ToInteger;
  FISV.itmchave := vItem.getvalue('itmchave', '').ToInteger;
  FISV.isvitem := vItem.getvalue('isvitem', '').ToInteger;
  FISV.isvquantidade := vItem.getvalue('isvquantidade', '').ToInteger;

  if vlisvchave = 0 then
  // incluir novo
  begin
    FISV.sbvchave := 0;
    FDAO.DAO.Insert(FISV);
    FDAO.DAO.LastID;
    vlisvchave := FDAO.DataSet.FieldByName('sbvchave').asInteger;
  end
  else
  // alterar se ja existe
  begin
    FISV.itochave := vlisvchave;
    FDAO.DAO.Update(FISV);
  end;
  result := vlisvchave;

end;

end.
