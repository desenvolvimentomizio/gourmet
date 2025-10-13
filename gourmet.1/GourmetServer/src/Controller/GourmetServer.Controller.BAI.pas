unit GourmetServer.Controller.BAI;

interface

Uses
  FireDAC.Phys.MySQLDef,
  FireDAC.Phys.MySQL,
  FireDAC.Phys.Intf,
  FireDAC.Phys,
  FireDAC.UI.Intf,
  FireDAC.ConsoleUI.Wait,
  Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,



  System.Json,
  System.SysUtils,
  idHashMessageDigest,
  GourmetServer.Controller.UNI,
  GourmetServer.Controller.PRO,
  GourmetServer.Controller.GRP,
  GourmetServer.Controller.PUN,
  GourmetServer.Model.DAOGeneric,

  GourmetServer.Model.Entity.BAI;

function BuscaCodigoBairro(vNomeBairro: string): Integer;
function BuscaProdutoBairro(vNomeBairro: string): Integer;
function CadastraProdutoBairro(vNomeBairro: String; vValor: String; vOrigem: Integer): Integer;


type
  TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

implementation

uses
  GourmetServer.Service.Conexoes;

function CadastraProdutoBairro(vNomeBairro: String; vValor: String; vOrigem: Integer): Integer;
var
  FDAO: iDAOGeneric<TBAI>;
  FBAI: TBAI;
  vlbaicodigo: Integer;
  vlProcodigo: Integer;
  vlUnicodigo: Integer;
  vlGrpcodigo: Integer;
  vlPunCodigo: Integer;
begin
  vlbaicodigo := 0;
  FDAO := TDAOGeneric<TBAI>.New;

  FBAI := TBAI.Create;
  FBAI.baicodigo := vlbaicodigo;
  FBAI.baiidentificacao := vNomeBairro;
  FBAI.sipcodigo := 1;

  vlUnicodigo := BuscaUNINome('UNIDADE', vOrigem);

  if vlUnicodigo = 0 then
  begin
    vlUnicodigo := ManutencaoUNINome('UNIDADE', vOrigem);
  end;
  vlGrpcodigo := BuscaGRPNome('TAXA DE ENTREGA', vOrigem);

  if vlGrpcodigo = 0 then
  begin
    vlGrpcodigo := manutencaoGRPIdentificacao('TAXA DE ENTREGA', vOrigem);
  end;

  vlProcodigo := BuscaCodigoPROTaxaValor(vValor);

  if vlProcodigo = 0 then
  begin

    vlProcodigo := ManutencaoPROAplicativo('TAXA DE ENTREGA R$ ' + vValor, vlGrpcodigo, vlUnicodigo, 0, '');

  end;

  vValor := stringreplace(vValor, '.', ',', []);
  vlPunCodigo := ManutencaoPUNAplicativo(vlProcodigo, vlUnicodigo, vValor);

  FBAI.procodigo := vlProcodigo;

  if vlbaicodigo = 0 then
  begin
    FBAI.baicodigo := 0;
    FDAO.DAO.Insert(FBAI);
    FDAO.DAO.LastID;
    vlbaicodigo := FDAO.DataSet.FieldByName('baicodigo').asinteger;
  end
  else
  // alterar se ja existe
  begin
    FBAI.baicodigo := vlbaicodigo;
    FDAO.DAO.Update(FBAI);
  end;

  result := vlbaicodigo;
end;


function BuscaProdutoBairro(vNomeBairro: string): Integer;
var
  conexao:TFDconnection;
  bai:TFDQuery;

  vlbaicodigo: Integer;

begin
  vlbaicodigo := 0;
  conexao:=TFDconnection.Create(nil);
  if AtivaConexao(conexao)<>nil then
  begin

      bai:=TFDQuery.Create(nil);
      bai.Connection:=Conexao;
      bai.sql.Text:='select procodigo from bai '+
                    'where lower(baiidentificacao) like ' + QuotedStr(lowercase(vNomeBairro) + '%');
      bai.Open;

      if not bai.IsEmpty then
       vlbaicodigo := bai.FieldByName('procodigo').asinteger ;

      bai.close;

      if bai<>nil then
      bai.DisposeOf;


  end;

  if conexao<>nil then
  conexao.DisposeOf;

  result := vlbaicodigo;

end;

function BuscaCodigoBairro(vNomeBairro: string): Integer;
var
  FDAO: iDAOGeneric<TBAI>;
  vlbaicodigo: Integer;
begin
  vlbaicodigo := 0;

  FDAO := TDAOGeneric<TBAI>.New;

  FDAO.DAO.SQL.where('lower(baiidentificacao)=' + QuotedStr(lowercase(vNomeBairro))).&End.Find;

  vlbaicodigo := FDAO.DataSet.FieldByName('baicodigo').asinteger;
  result := vlbaicodigo;
end;

end.
