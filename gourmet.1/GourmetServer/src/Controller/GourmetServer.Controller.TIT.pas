unit GourmetServer.Controller.TIT;

interface

Uses
  Horse,
  System.Json,
  System.SysUtils,
  idHashMessageDigest,
  GourmetServer.Model.DAOGeneric,
  GourmetServer.Model.Entity.TIT;

Function ManutencaoTIT(vVenda: TJsonObject): Integer;

type
  TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

implementation

Function ManutencaoTIT(vVenda: TJsonObject): Integer;
var
  FDAO: GourmetServer.Model.DAOGeneric.iDAOGeneric<TTIT>;
  FTIT: TTIT;
  vlTitCodigo: Integer;
  a: string;
begin
  FDAO := TDAOGeneric<TTIT>.New;

  vlTitCodigo := 0;

  FTIT := TTIT.Create;
  FTIT.TitCodigo := vlTitCodigo;
  FTIT.etdcodigo := vVenda.getvalue('etdcodigo', '').ToInteger;
  FTIT.tfdcodigo := vVenda.getvalue('tfdcodigo', '').ToInteger;
  FTIT.flacodigo := vVenda.getvalue('flacodigo', '').ToInteger;
  FTIT.tficodigo := vVenda.getvalue('tficodigo', '').ToInteger;
  FTIT.bcocodigo := vVenda.getvalue('bcocodigo', '');
  FTIT.moecodigo := vVenda.getvalue('moecodigo', '').ToInteger;
  FTIT.carcodigo := vVenda.getvalue('carcodigo', '').ToInteger;
  FTIT.titemissao := strtodate( vVenda.getvalue('titemissao', ''));
  FTIT.tithora := strtotime( vVenda.getvalue('tithora', ''));
  FTIT.clbcodigo := vVenda.getvalue('clbcodigo', '').ToInteger;
  FTIT.titparcelas := vVenda.getvalue('titparcelas', '').ToInteger;
  FTIT.titvctoinicial :=strtodate( vVenda.getvalue('titvctoinicial', ''));
  FTIT.titnumero := vVenda.getvalue('titnumero', '');
  FTIT.titvalorparcela := Strtocurr(vVenda.getvalue('titvalorparcela', ''));
  FTIT.titvalor := strtocurr( vVenda.getvalue('titvalor', ''));
  FTIT.tithistorico := vVenda.getvalue('tithistorico', '');
  FTIT.srfcodigo := vVenda.getvalue('srfcodigo', '').ToInteger;
  FTIT.titrepetir := vVenda.getvalue('titrepetir', '').ToInteger;
  FTIT.titprevisao := vVenda.getvalue('titprevisao', '').ToInteger;
  FTIT.titinclusao := strtodatetime(vVenda.getvalue('titinclusao', ''));

  if vlTitCodigo = 0 then
  // incluir novo
  begin
    FTIT.TitCodigo := 0;
    FDAO.DAO.Insert(FTIT);
    FDAO.DAO.LastID;
    vlTitCodigo := FDAO.DataSet.FieldByName('titcodigo').asInteger;
  end
  else
  // alterar se ja existe
  begin
    FTIT.TitCodigo := vlTitCodigo;
    FDAO.DAO.Update(FTIT);
  end;
  result := vlTitCodigo;

end;

end.
