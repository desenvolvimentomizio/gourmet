unit GourmetServer.Controller.MFI;

interface

Uses
  Horse,
  System.Json,
  System.SysUtils,
  idHashMessageDigest,
  GourmetServer.Model.DAOGeneric,
  GourmetServer.Model.Entity.MFI;

Function ManutencaoMFI(vTitulo: TJsonObject): Integer;

type
  TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

implementation

Function ManutencaoMFI(vTitulo: TJsonObject): Integer;
var
  FDAO: GourmetServer.Model.DAOGeneric.iDAOGeneric<TMFI>;
  FMFI: TMFI;
  vlMFIchave: Integer;
  a: string;
begin
  FDAO := TDAOGeneric<TMFI>.New;

  vlMFIchave := 0;

  FMFI := TMFI.Create;
  FMFI.MFIchave := vTitulo.getvalue('mfichave', '').ToInteger;
  FMFI.rfichave := vTitulo.getvalue('rfichave', '').ToInteger;
  FMFI.tmfcodigo := vTitulo.getvalue('tmfcodigo', '').ToInteger;
  FMFI.moecodigo := vTitulo.getvalue('moecodigo', '').ToInteger;
  FMFI.mfivalor := Strtocurr(vTitulo.getvalue('mfivalor', ''));
  FMFI.mfidata := strtodate(vTitulo.getvalue('mfidata', ''));
  FMFI.mfihistorico := vTitulo.getvalue('mfihistorico', '');
  FMFI.mfivalorori := Strtocurr(vTitulo.getvalue('mfivalorori', ''));
  FMFI.mfiparcela := vTitulo.getvalue('mfiparcela', '').ToInteger;
  FMFI.flacodigo := vTitulo.getvalue('flacodigo', '').ToInteger;
  FMFI.mfisituacao := vTitulo.getvalue('mfisituacao', '').ToInteger;
  FMFI.edrcodigo := vTitulo.getvalue('edrcodigo', '').ToInteger;

  if vlMFIchave = 0 then
  // incluir novo
  begin
    FMFI.MFIchave := 0;
    FDAO.DAO.Insert(FMFI);
    FDAO.DAO.LastID;
    vlMFIchave := FDAO.DataSet.FieldByName('mfichave').asInteger;
  end
  else
  // alterar se ja existe
  begin
    FMFI.MFIchave := vlMFIchave;
    FDAO.DAO.Update(FMFI);
  end;
  result := vlMFIchave;

end;

end.
