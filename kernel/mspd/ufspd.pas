unit ufspd;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Controls, Vcl.ComCtrls, Vcl.Mask, Vcl.ImgList, PngImageList,
  System.Classes, System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ExtCtrls, System.SysUtils, Vcl.FileCtrl, uFuncoes, System.ImageList;

type
  Tfspd = class(Tfrmbase)
    registrospdchave: TIntegerField;
    registrospdexercicio: TIntegerField;
    registrospddatainicial: TDateField;
    registrospddatafinal: TDateField;
    registrospddatabalanco: TDateField;
    registropcccodigo: TStringField;
    registropccidentificacao: TStringField;
    registrospdativo: TIntegerField;
    Label1: TLabel;
    spdchave: TDBEdit;
    Label2: TLabel;
    spdexercicio: TDBEdit;
    spddatainicial: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    spddatafinal: TDBEdit;
    spddatabalanco: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    pcccodigo: TDBEdit;
    spdativo: TDBCheckBox;
    Decf: tunidatasource;
    ecf: tuniquery;
    ecfecfcodigo: TIntegerField;
    ecfecfidentificacao: TStringField;
    ecfecftipodoc: TStringField;
    ecfecfmodelo: TStringField;
    ecfecfserie: TStringField;
    ecfecfcaixa: TIntegerField;
    rrz: tuniquery;
    rrzrrzcodigo: TIntegerField;
    rrzrrzdata: TDateField;
    rrzecfcodigo: TIntegerField;
    rrzrrzcontadorreinicio: TIntegerField;
    rrzrrzcontadorreducao: TIntegerField;
    rrzrrznumordultdoc: TIntegerField;
    rrzrrzvalorgrantot: TFloatField;
    rrzrrzvalorvndbru: TFloatField;
    rrzrrzdesconto: TFloatField;
    Drrz: tunidatasource;
    pcc: tuniquery;
    pccpcccodigo: TStringField;
    pccpccidentificacao: TStringField;
    mdf: tuniquery;
    mdfmdfchave: TIntegerField;
    mdfrrzcodigo: TIntegerField;
    mdfcstcodigo: TStringField;
    mdfcfocfop: TStringField;
    mdfmdfaliquota: TFloatField;
    mdfmdfvlopr: TFloatField;
    mdfmdfvlbcicms: TFloatField;
    mdfmdfvlicms: TFloatField;
    mdftofcodigo: TIntegerField;
    Dcuf: tunidatasource;
    cuf: tuniquery;
    cufcufchave: TIntegerField;
    cuftdfcodigo: TStringField;
    cufsdecodigo: TStringField;
    cufcufcco: TIntegerField;
    cufcufdata: TDateField;
    cufcuftotal: TFloatField;
    cufcufpis: TFloatField;
    cufcufcofins: TFloatField;
    cufcufdoc1: TStringField;
    cufcufnome: TStringField;
    cufrrzcodigo: TIntegerField;
    cufcufdesconto: TFloatField;
    icu: tuniquery;
    icuicuchave: TIntegerField;
    icucufchave: TIntegerField;
    icuprocodigo: TIntegerField;
    icucstcodigo: TStringField;
    icuunicodigo: TIntegerField;
    icuicuquantidade: TFloatField;
    icuicuquantidadecanc: TFloatField;
    icuicuvalor: TFloatField;
    icucfocfop: TStringField;
    icuicualiqicm: TFloatField;
    icuicupis: TFloatField;
    icuicucofins: TFloatField;
    icuicuicm: TFloatField;
    vrrz: tuniquery;
    vrrzrrzcodigo: TIntegerField;
    vrrzrrzdata: TDateField;
    vrrzecfcodigo: TIntegerField;
    vrrzrrzcontadorreinicio: TIntegerField;
    vrrzrrzcontadorreducao: TIntegerField;
    vrrzrrznumordultdoc: TIntegerField;
    vrrzrrzvalorgrantot: TFloatField;
    vrrzrrzvalorvndbru: TFloatField;
    vrrzrrzdesconto: TFloatField;
    vtpz: tuniquery;
    vtpztpzchave: TIntegerField;
    vtpztpzcodigo: TStringField;
    vtpztpzvlracumtot: TFloatField;
    vtpztpznrtot: TIntegerField;
    vtpztpzdescr: TStringField;
    vtpzrrzcodigo: TIntegerField;
    c490: tuniquery;
    c490cfocfop: TStringField;
    c490icualiqicm: TFloatField;
    c490operacao: TFloatField;
    c490cstcodigo: TStringField;
    c490valor: TFloatField;
    c490icm: TFloatField;
    ssn: tuniquery;
    ssnssncodigo: TIntegerField;
    ssnssnfaturamento: TStringField;
    ssnssnaliquota: TFloatField;
    ssnssnirpj: TFloatField;
    ssnssncsll: TFloatField;
    ssnssncofins: TFloatField;
    ssnssnpis: TFloatField;
    ssnssncpp: TFloatField;
    ssnssnicms: TFloatField;
    OpenDialog: TOpenDialog;
    tpz: tuniquery;
    tpztpzchave: TIntegerField;
    tpztpzcodigo: TStringField;
    tpztpzvlracumtot: TFloatField;
    tpztpznrtot: TIntegerField;
    tpztpzdescr: TStringField;
    tpzrrzcodigo: TIntegerField;
    cfgssncodigo: TIntegerField;
    registrospdaliquotasimples: TFloatField;
    Label7: TLabel;
    spdaliquotasimples: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
  public
    { Public declarations }
  end;

var
  fspd: Tfspd;

  // Início ID do Módulo fraspd
const
  vPlIdMd = '03.08.81.002-02';

  // Fim ID do Módulo fraspd

implementation

{$R *.dfm}

procedure Tfspd.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;

  cfg.Open;
  if self.cfgssncodigo.AsString <> '' then
  begin
    ssn.Close;
    ssn.SQL.Text := 'SELECT * FROM ssn WHERE ssncodigo = ' + self.cfgssncodigo.AsString;
    ssn.Open;
  end;
end;

procedure Tfspd.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registropcccodigo.AsString := '1.01.03.01.01';
end;

end.
