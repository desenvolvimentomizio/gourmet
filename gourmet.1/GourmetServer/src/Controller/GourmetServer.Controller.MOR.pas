unit GourmetServer.Controller.MOR;

interface

Uses
  Horse,
  System.Json,
  System.SysUtils,
  idHashMessageDigest,
  GourmetServer.Model.Entity.MOR,
  GourmetServer.Model.DAOGeneric

    ;

Function ManutencaoMOR(vVenda: TJsonObject): Integer;
function BuscaORCchaveMeschave(vOrchave: Integer): Integer;

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

function BuscaORCchaveMeschave(vOrchave: Integer): Integer;
var
  FDAO: iDAOGeneric<TMOR>;
  vmeschave: Integer;
begin
  vmeschave := 0;

  FDAO := TDAOGeneric<TMOR>.New;

  FDAO.DAO.SQL.where('orcchave=' + inttostr(vOrchave)).&End.Find;

  vmeschave := FDAO.DataSet.FieldByName('meschave').asInteger;

  result := vmeschave;
end;

Function ManutencaoMOR(vVenda: TJsonObject): Integer;
var
  FDAO: GourmetServer.Model.DAOGeneric.iDAOGeneric<TMOR>;
  FMOR: TMOR;
  vlmorchave: Integer;
begin
  FDAO := TDAOGeneric<TMOR>.New;

  vlmorchave := 0;

  FMOR := TMOR.Create;
  FMOR.morchave := vlmorchave;
  FMOR.meschave := vVenda.getvalue('meschave', '').ToInteger;
  FMOR.orcchave := vVenda.getvalue('orcchave', '').ToInteger;
  FMOR.flacodigo := vVenda.getvalue('flacodigo', '').ToInteger;

  if vlmorchave = 0 then
  // incluir novo
  begin
    FMOR.morchave := 0;
    FDAO.DAO.Insert(FMOR);
    FDAO.DAO.LastID;
    vlmorchave := FDAO.DataSet.FieldByName('morchave').asInteger;
  end
  else
  // alterar se ja existe
  begin
    FMOR.morchave := vlmorchave;
    FDAO.DAO.Update(FMOR);
  end;
  result := vlmorchave;


end;

end.
