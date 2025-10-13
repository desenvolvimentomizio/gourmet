unit GourmetServer.Controller.VCH;

interface

Uses
  Horse,
  System.Json,
  System.SysUtils,
  idHashMessageDigest,
  GourmetServer.Model.DAOGeneric,
  GourmetServer.Model.Entity.VCH;

Function ManutencaoVCH(vVoucher: TJsonObject): Integer;

type
  TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

implementation

Function ManutencaoVCH(vVoucher: TJsonObject): Integer;
var
  FDAO: GourmetServer.Model.DAOGeneric.iDAOGeneric<TVCH>;
  FVCH: TVCH;
  vlvchchave: Integer;
begin
  FDAO := TDAOGeneric<TVCH>.New;
  vlvchchave := 0;

  FVCH := TVCH.Create;

  FVCH.vchchave := vVoucher.getvalue('vchchave', '').ToInteger;
  FVCH.vchdataemissao := strtodate(vVoucher.getvalue('vchdataemissao', ''));
  FVCH.vchsituacao := vVoucher.getvalue('vchsituacao', '').ToInteger;
  FVCH.vchvoucher := vVoucher.getvalue('vchvoucher', '');
  FVCH.vchtipo := vVoucher.getvalue('vchtipo', '').ToInteger;
  FVCH.vchmodouso := vVoucher.getvalue('vchmodouso', '').ToInteger;
  FVCH.vchdatavalidade := strtodate(vVoucher.getvalue('vchdatavalidade', ''));
  FVCH.vchvalor := strtofloat(vVoucher.getvalue('vchvalor', ''));
  if vVoucher.getvalue('vchpercentual', '') <> '' then
  begin
    FVCH.vchpercentual := strtofloat(vVoucher.getvalue('vchpercentual', ''));
  end;
  FVCH.etdcodigo := vVoucher.getvalue('etdcodigo', '').ToInteger;
  FVCH.vchdatauso := strtodate(vVoucher.getvalue('vchdatauso', ''));
  FVCH.procodigo := vVoucher.getvalue('procodigo', '').ToInteger;
  FVCH.puncodigo := vVoucher.getvalue('puncodigo', '').ToInteger;
  FVCH.vchetdemissor := vVoucher.getvalue('vchetdemissor', '').ToInteger;
  FVCH.vchautomatico := vVoucher.getvalue('vchautomatico', '').ToInteger;

  if vlvchchave = 0 then
  // incluir novo
  begin
    FVCH.vchchave := 0;
    FDAO.DAO.Insert(FVCH);
    FDAO.DAO.LastID;
    vlvchchave := FDAO.DataSet.FieldByName('vchchave').asInteger;
  end
  else
  // alterar se ja existe
  begin
    FVCH.vchchave := vlvchchave;
    FDAO.DAO.Update(FVCH);
  end;

  result := vlvchchave;

end;

end.
