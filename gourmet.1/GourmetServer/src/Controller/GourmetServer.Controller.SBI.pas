unit GourmetServer.Controller.SBI;

interface

Uses
  Horse,
  System.Json,
  System.SysUtils,
  idHashMessageDigest,
  GourmetServer.Model.DAOGeneric,
  GourmetServer.Controller.SBR,
  GourmetServer.Model.Entity.SBI;

Function ManutencaoSBI(vSabor: TJsonObject): Integer;
Function BuscaItemSBIitochave(vItoChave: String): Integer;

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

Function BuscaItemSBIitochave(vItoChave: String): Integer;
var
  FDAO: iDAOGeneric<TSBI>;
  vsbiitem: Integer;
begin
  vsbiitem := 0;

  FDAO := TDAOGeneric<TSBI>.New;

  FDAO.DAO.SQL.where('itochave=' + vItoChave + ' order by sbiitem desc limit 1 ').&End.Find;

  vsbiitem := FDAO.DataSet.FieldByName('sbiitem').asInteger + 1;
  result := vsbiitem;

end;

Function ManutencaoSBI(vSabor: TJsonObject): Integer;
var
  FDAO: GourmetServer.Model.DAOGeneric.iDAOGeneric<TSBI>;
  FSBI: TSBI;
  vlsbichave: Integer;
  vlsbrcodigo:Integer;

  vlNome:String;
  vlGrpCodigo:String;
  vlProCodigo:String;


begin

  vlsbrcodigo:=0;

  vlNome:=vSabor.getvalue('sbridentificacao', '');
  vlGrpCodigo:=vSabor.getvalue('grpcodigo', '');
  vlProCodigo:=vSabor.getvalue('procodigo', '');

  if (vlNome<>'') and (vlGrpCodigo<>'0') and (vlProCodigo<>'0') then
  begin

    vlsbrcodigo := BuscaSBRIdentificacao(vlNome, vlProCodigo, vlGrpCodigo);

    if vlsbrcodigo=0 then
     vlsbrcodigo:=ManutencaoSBRIdentificacao(vlNome, vlProCodigo, vlGrpCodigo);

  end;


  FDAO := TDAOGeneric<TSBI>.New;

  vlsbichave := vSabor.getvalue('sbichave', '').ToInteger;;

  FSBI := TSBI.Create;
  FSBI.sbichave := vlsbichave;
  FSBI.itochave := vSabor.getvalue('itochave', '').ToInteger;

  if vlsbrcodigo<>0 then
    FSBI.sbrcodigo := vlsbrcodigo
  else
    FSBI.sbrcodigo := vSabor.getvalue('sbrcodigo', '').ToInteger;

  FSBI.sbiitem := vSabor.getvalue('sbiitem', '').ToInteger;

  if vlsbichave = 0 then
  // incluir novo
  begin
    FSBI.sbichave := 0;
    FDAO.DAO.Insert(FSBI);
    FDAO.DAO.LastID;
    vlsbichave := FDAO.DataSet.FieldByName('sbichave').asInteger;
  end
  else
  // alterar se ja existe
  begin
    FSBI.sbichave := vlsbichave;
    FDAO.DAO.Update(FSBI);
  end;
  result := vlsbichave;


end;

end.
