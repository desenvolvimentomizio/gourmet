unit GourmetServer.Controller.RFI;

interface

Uses
  Horse,
  System.Json,
  System.SysUtils,
  GourmetServer.Service.Funcoes,

  idHashMessageDigest,
  GourmetServer.Model.DAOGeneric,
  GourmetServer.Model.Entity.RFI;

Function ManutencaoRFI(vTtitulo: TJsonObject): Integer;

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

Function ManutencaoRFI(vTtitulo: TJsonObject): Integer;
var
  FDAO: GourmetServer.Model.DAOGeneric.iDAOGeneric<TRFI>;
  FRFI: TRFI;
  vlrfichave: Integer;
  a: string;
begin
  FDAO := TDAOGeneric<TRFI>.New;

  vlrfichave := 0;
  FRFI:=nil;

  FRFI := TRFI.Create;
  FRFI.rfichave := vlrfichave;
  FRFI.etdcodigo := vTtitulo.getvalue('etdcodigo', '').ToInteger;
  FRFI.titcodigo := vTtitulo.getvalue('titcodigo', '').ToInteger;
  FRFI.tfdcodigo := vTtitulo.getvalue('tfdcodigo', '').ToInteger;
  FRFI.flacodigo := vTtitulo.getvalue('flacodigo', '').ToInteger;
  FRFI.tficodigo := vTtitulo.getvalue('tficodigo', '').ToInteger;
  FRFI.bcocodigo := vTtitulo.getvalue('bcocodigo', '');
  FRFI.carcodigo := vTtitulo.getvalue('carcodigo', '').ToInteger;
  FRFI.rfiemissao :=trim(datahoratexttosql(  vTtitulo.getvalue('rfiemissao', '')));
  FRFI.rfivencimento :=trim(datahoratexttosql(vTtitulo.getvalue('rfivencimento', '')));
  FRFI.rfinumero := vTtitulo.getvalue('rfinumero', '');
  FRFI.rfivalor :=StringReplace(vTtitulo.getvalue('rfivalor', ''),',','.',[]);
  FRFI.rfihistorico := vTtitulo.getvalue('rfihistorico', '');
  FRFI.srfcodigo := vTtitulo.getvalue('srfcodigo', '').ToInteger;
  FRFI.frrcodigo := vTtitulo.getvalue('frrcodigo', '').ToInteger;
  FRFI.rfirepetir := vTtitulo.getvalue('rfirepetir', '').ToInteger;
  FRFI.rfiprevisao := vTtitulo.getvalue('rfiprevisao', '').ToInteger;
  FRFI.rfivalorparcela :=StringReplace(vTtitulo.getvalue('rfivalorparcela', ''),',','.',[]);
  FRFI.moecodigo := vTtitulo.getvalue('moecodigo', '').ToInteger;
  FRFI.rfisituacao := vTtitulo.getvalue('rfisituacao', '').ToInteger;
  FRFI.rfiinclusao :=datahoratexttosql( vTtitulo.getvalue('rfiinclusao', ''));

  if vlrfichave = 0 then
  // incluir novo
  begin
    FRFI.rfichave := 0;
    FDAO.DAO.Insert(FRFI);
    FDAO.DAO.LastID;
    vlrfichave := FDAO.DataSet.FieldByName('rfichave').asInteger;
  end
  else
  // alterar se ja existe
  begin
    FRFI.rfichave := vlrfichave;
    FDAO.DAO.Update(FRFI);
  end;
  result := vlrfichave;


end;

end.
