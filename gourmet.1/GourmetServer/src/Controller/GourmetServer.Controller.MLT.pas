unit GourmetServer.Controller.MLT;

interface

Uses
  Horse,
  System.Json,
  System.SysUtils,
  idHashMessageDigest,
  GourmetServer.Model.Entity.MLT,
  GourmetServer.Model.DAOGeneric;


Function ManutencaoMLT(Vmltchave: Integer;   Vmfichave: Integer;  Vltechave: Integer;  Vflacodigo: Integer): Integer;

type
  TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

implementation

Function ManutencaoMLT(vMltchave: Integer;   vMfichave: Integer;  vLtechave: Integer;  vflacodigo: Integer): Integer;
var
  FDAO: GourmetServer.Model.DAOGeneric.iDAOGeneric<TMLT>;
  FMLT: TMLT;
  vlMLTchave: Integer;
begin
  FDAO := TDAOGeneric<TMLT>.New;

  vlmltchave := Vmltchave;

  FMLT := TMLT.Create;
  FMLT.mltchave := vlmltchave;
  FMLT.mfichave := vmfichave;
  FMLT.ltechave := vltechave;
  FMLT.flacodigo := vFlaCodigo;

  if vlmltchave = 0 then
  // incluir novo
  begin
    FMLT.mltchave := 0;
    FDAO.DAO.Insert(FMLT);
    FDAO.DAO.LastID;
   // vlrfmchave := FDAO.DataSet.FieldByName('rfmchave').asInteger;
  end
  else
  // alterar se ja existe
  begin
    FMLT.mltchave := vlmltchave;
    FDAO.DAO.Update(FMLT);
  end;
  result := vlmltchave;

end;

end.
