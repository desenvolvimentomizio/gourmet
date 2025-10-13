unit GourmetServer.Controller.IMP;

interface

Uses
  Horse,
  System.Json,
  System.SysUtils,
  idHashMessageDigest,
  GourmetServer.Model.DAOGeneric,
  GourmetServer.Model.Entity.IMP;

Function ManutencaoIMP(vItem: TJsonObject): Integer;


type
  TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

implementation
Function ManutencaoIMP(vItem: TJsonObject): Integer;
var
  FDAO: GourmetServer.Model.DAOGeneric.iDAOGeneric<TIMP>;
  FIMP: TIMP;
  vlimpchave: Integer;
begin
  FDAO := TDAOGeneric<TIMP>.New;

  vlimpchave := vItem.getvalue('impchave', '').ToInteger;;

  FIMP := TIMP.Create;
  FIMP.impchave := vlimpchave;
  FIMP.itmchave := vItem.getvalue('itmchave', '').ToInteger;
   if vlimpchave = 0 then
  // incluir novo
  begin
    FIMP.impchave := 0;
    FDAO.DAO.Insert(FIMP);
    FDAO.DAO.LastID;
    vlimpchave := FDAO.DataSet.FieldByName('impchave').asInteger;
  end
  else
  // alterar se ja existe
  begin
    FIMP.itochave := vlimpchave;
    FDAO.DAO.Update(FIMP);
  end;
  result := vlimpchave;

end;

end.
