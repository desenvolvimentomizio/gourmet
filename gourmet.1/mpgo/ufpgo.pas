unit ufpgo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Uni, Data.DB, MemDS, DBAccess;

type
  Tfpgo = class(TForm)
    orc: TUniQuery;
    orcorcchave: TIntegerField;
    orcetdcodigo: TIntegerField;
    orcclbcodigo: TIntegerField;
    orcfopcodigo: TIntegerField;
    orctdecodigo: TIntegerField;
    orcstocodigo: TIntegerField;
    orcmoccodigo: TIntegerField;
    orcorcdataabert: TDateField;
    orcorchoraabert: TTimeField;
    orcorcdataencerr: TDateField;
    orcorcgeralav: TFloatField;
    orcorcgeralap: TFloatField;
    orcorcdescontoav: TFloatField;
    orcorcdescontoap: TFloatField;
    orcorctotalav: TFloatField;
    orcorctotalap: TFloatField;
    orcorcobs: TStringField;
    orcorcdestimpre: TIntegerField;
    orcorcnome: TStringField;
    orcorcendereco: TStringField;
    orcorctelefone: TStringField;
    orcorcdescrpagto: TStringField;
    orcorcextenso: TStringField;
    orcorcnomeretirou: TStringField;
    orctfpcodigo: TIntegerField;
    orcorcpercdescav: TFloatField;
    orcorcpercdescap: TFloatField;
    orctrmcodigo: TIntegerField;
    orcpuocodigo: TIntegerField;
    orcedritem: TIntegerField;
    orcclbvendedor: TIntegerField;
    orceqpcodigo: TIntegerField;
    orctdfcodigo: TStringField;
    orcflacodigo: TIntegerField;
    ito: TUniQuery;
    itoitochave: TIntegerField;
    itoorcchave: TIntegerField;
    itoprocodigo: TIntegerField;
    itoitovalorav: TFloatField;
    itoitovalorap: TFloatField;
    itoitototalav: TFloatField;
    itoitototalap: TFloatField;
    itoitosaldoav: TFloatField;
    itoitosaldoap: TFloatField;
    itoitoquantidade: TFloatField;
    itoitodescontoav: TFloatField;
    itoitodescontoap: TFloatField;
    itounicodigo: TIntegerField;
    itopuncodigo: TIntegerField;
    itotdecodigo: TIntegerField;
    itostocodigo: TIntegerField;
    itoitoitem: TIntegerField;
    itoitopercdescav: TFloatField;
    itoitopercdescap: TFloatField;
    itoitoprocomple: TStringField;
    itoitogint: TStringField;
    itoitoproservico: TStringField;
    itoitoinfadprod: TStringField;
    itoitocontendo: TFloatField;
    itotpocodigo: TIntegerField;
    itovrpcodigo: TIntegerField;
    mes: TUniQuery;
    mesmeschave: TIntegerField;
    mesetdcodigo: TIntegerField;
    mesclbcodigo: TIntegerField;
    mesmesemissao: TDateField;
    mesmesregistro: TDateField;
    mestdfcodigo: TStringField;
    messdecodigo: TStringField;
    mesmesserie: TStringField;
    mesmesnumero: TIntegerField;
    mesmeschavenfe: TStringField;
    mestoecodigo: TIntegerField;
    mesmesvalor: TFloatField;
    mesmesdesconto: TFloatField;
    mesmestotal: TFloatField;
    mestfpcodigo: TIntegerField;
    mesrefcodigo: TIntegerField;
    mesmesfrete: TFloatField;
    mesmesseguro: TFloatField;
    mesmesoutras: TFloatField;
    mesmesbicm: TFloatField;
    mesmesicm: TFloatField;
    mesmesbicms: TFloatField;
    mesmesicms: TFloatField;
    mesmesipi: TFloatField;
    mesmespis: TFloatField;
    mesmescofins: TFloatField;
    mesmespiss: TFloatField;
    mesmescofinss: TFloatField;
    mestrmcodigo: TIntegerField;
    mesmesprotocolo: TStringField;
    mestrfcodigo: TStringField;
    mestemcodigo: TIntegerField;
    mesedritem: TIntegerField;
    mesmesservicos: TFloatField;
    mesmesprodutos: TFloatField;
    mesclbvendedor: TIntegerField;
    meseqpcodigo: TIntegerField;
    mesflacodigo: TIntegerField;
    itm: TUniQuery;
    itmitmchave: TIntegerField;
    itmmeschave: TIntegerField;
    itmitmitem: TIntegerField;
    itmprocodigo: TIntegerField;
    itmcstcodigo: TStringField;
    itmprocodigoori: TStringField;
    itmpronomeori: TStringField;
    itmitmdesccomple: TStringField;
    itmitmquantidade: TFloatField;
    itmitmvalor: TFloatField;
    itmitmdesconto: TFloatField;
    itmitmtotal: TFloatField;
    itmitmmovifisico: TStringField;
    itmtoecodigo: TIntegerField;
    itmcfocfop: TStringField;
    itmitmbicm: TFloatField;
    itmicmcodigo: TStringField;
    itmitmaliqicm: TStringField;
    itmitmicm: TFloatField;
    itmitmbicms: TFloatField;
    itmitmaliqicms: TFloatField;
    itmitmicms: TFloatField;
    itmitmapuipi: TStringField;
    itmcsicodigo: TStringField;
    itmceicodigo: TStringField;
    itmitmbipi: TFloatField;
    itmitmaliqipi: TFloatField;
    itmitmipi: TFloatField;
    itmcspcodigo: TStringField;
    itmitmbpis: TFloatField;
    itmitmaliqpis: TFloatField;
    itmitmpis: TFloatField;
    itmitmquantpis: TFloatField;
    itmitmaliqpisvalor: TFloatField;
    itmitmbcofins: TFloatField;
    itmcsfcodigo: TStringField;
    itmitmaliqcofins: TFloatField;
    itmitmquantcofins: TFloatField;
    itmitmaliqcofinsvalor: TFloatField;
    itmitmcofins: TFloatField;
    itmpcccodigo: TStringField;
    itmunicodigo: TIntegerField;
    itmpuncodigo: TIntegerField;
    itmprogtin: TStringField;
    itmitmcontendo: TFloatField;
    itmcfocfopdestinacao: TStringField;
    itmunicodigobase: TIntegerField;
    itmitmoutras: TFloatField;
    itmitmseguro: TFloatField;
    itmitmfrete: TFloatField;
    itmitmcusto: TFloatField;
    itmitmtipodesc: TIntegerField;
    itmitminfadprod: TStringField;
    itmitmproservico: TStringField;
    itmflacodigo: TIntegerField;
    mor: TUniQuery;
    mororcchave: TIntegerField;
    mormeschave: TIntegerField;
    morflacodigo: TIntegerField;
    cfg: TUniQuery;
    cfgufscodigo: TStringField;
    cfgcfgserienfe: TStringField;
    cfgcfgpccvenda: TStringField;
    cfgcfgdefinetoeatendimento: TIntegerField;
    cfgcfgtoemesfora: TIntegerField;
    cfgcfgtoemesinte: TIntegerField;
    cfgcfgtoetransflainte: TIntegerField;
    cfgcfgtoetransflafora: TIntegerField;
  private
    { Private declarations }
    FZCone: TUniConnection;
    procedure SetZCone(const Value: TUniConnection);
  public
    { Public declarations }
    published
        property ZCone: TUniConnection read FZCone write SetZCone;
  end;

var
  fpgo: Tfpgo;

implementation

{$R *.dfm}

procedure Tfpgo.SetZCone(const Value: TUniConnection);
var
  i: Integer;
begin
  FZCone := Value;

  for i := 0 to Self.ComponentCount - 1 do
  begin
    if Self.Components[i] is tuniquery then
      (Self.Components[i] as tuniquery).Connection := Self.ZCone;
  end;

end;


end.
