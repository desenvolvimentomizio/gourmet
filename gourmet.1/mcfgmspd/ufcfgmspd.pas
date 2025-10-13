unit ufcfgmspd;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.ImgList, Vcl.Controls, PngImageList,
  System.Classes, System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, uPegaBase, System.ImageList;

type
  Tfcfgmspd = class(Tfrmbase)
    registrocfgcodigo: TIntegerField;
    registrossncodigo: TIntegerField;
    registrocfgperfil: TStringField;
    registrocfgcnae: TStringField;
    registrocfgcstterceiros: TStringField;
    registrocfgcstcuf: TStringField;
    registrocfgspedicms: TStringField;
    Label26: TLabel;
    cfgcnae: TDBEdit;
    Label4: TLabel;
    ssncodigo: TDBEdit;
    Label44: TLabel;
    cfgcstterceiros: TDBEdit;
    Label45: TLabel;
    cfgcstcuf: TDBEdit;
    Label1: TLabel;
    cfgcodigo: TDBEdit;
    registrocfgtipoatividade: TStringField;
    crt: tuniquery;
    crtcrtcodigo: TIntegerField;
    crtcrtidentificacao: TStringField;
    ssn: tuniquery;
    ssnssncodigo: TIntegerField;
    ssnssnfaturamento: TStringField;
    ssnssnaliquota: TFloatField;
    Contador: TTabSheet;
    Dctd: tunidatasource;
    ctd: tuniquery;
    ctdctdcodigo: TIntegerField;
    ctdcfgcodigo: TIntegerField;
    ctdctdidentificacao: TStringField;
    ctdctdcpf: TStringField;
    ctdctdcrc: TStringField;
    ctdctdcnpj: TStringField;
    ctdctdendereco: TStringField;
    ctdctdnumero: TStringField;
    ctdctdcomple: TStringField;
    ctdctdbairro: TStringField;
    ctdctdfone: TStringField;
    ctdctdfax: TStringField;
    ctdctdemail: TStringField;
    ctdcddcodigo: TStringField;
    ctdcddnome: TStringField;
    ctdctdboxedominio: TStringField;
    ctdctdcep: TStringField;
    Label43: TLabel;
    ctdidentificacao: TDBEdit;
    Label46: TLabel;
    ctdcpf: TDBEdit;
    Label47: TLabel;
    ctdcnpj: TDBEdit;
    ctdcrc: TDBEdit;
    Label48: TLabel;
    Label49: TLabel;
    ctdendereco: TDBEdit;
    Label50: TLabel;
    ctdnumero: TDBEdit;
    ctdbairro: TDBEdit;
    Label51: TLabel;
    Label52: TLabel;
    ctdcomple: TDBEdit;
    ctdcep: TDBEdit;
    Label54: TLabel;
    ctdfax: TDBEdit;
    ctdfone: TDBEdit;
    DBEdit1: TDBEdit;
    Label56: TLabel;
    Label53: TLabel;
    Label57: TLabel;
    ctdemail: TDBEdit;
    ctdboxedominio: TDBEdit;
    Label58: TLabel;
    cdd: tuniquery;
    cddcddcodigo: TStringField;
    cddcddnome: TStringField;
    cfgperfil: TDBRadioGroup;
    cfgspedicms: TDBRadioGroup;
    cfgtipoatividade: TDBRadioGroup;
    cst: tuniquery;
    cstcstcodigo: TStringField;
    cstcstidentificacao: TStringField;
    registrocstterceiros: TStringField;
    registrocstcuf: TStringField;
    registrossnfaturamento: TStringField;
    etd: tuniquery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    Label2: TLabel;
    ctdctdescritorio: TStringField;
    ctdescritorio: TDBEdit;
    Label3: TLabel;
    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ctdBeforeOpen(DataSet: TDataSet);
    procedure ctdBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcfgmspd: Tfcfgmspd;

  // Início ID do Módulo fra
const
  vPlIdMd = '03.06.81.007-01';
  vPlTitMdl = 'Configurações SPED';

  // Fim ID do Módulo fra

implementation

{$R *.dfm}

function formulario(pCargaFrame: TCargaFrame): string;
begin
  fcfgmspd := Tfcfgmspd.Create(pCargaFrame);
  fcfgmspd.ShowModal;
  fcfgmspd.Free;
end;

exports formulario;

procedure Tfcfgmspd.bconfirmaClick(Sender: TObject);
begin
  if Self.bconfirma.caption = 'Confirma' then
    if ctd.State <> dsbrowse then
    begin
      ctdcfgcodigo.AsInteger := cfgcodigo.Field.AsInteger;
      ctd.Post;
    end;

  inherited;
end;

procedure Tfcfgmspd.ctdBeforeOpen(DataSet: TDataSet);
begin
  ctd.Params[0].AsInteger := registrocfgcodigo.AsInteger;
end;

procedure Tfcfgmspd.ctdBeforePost(DataSet: TDataSet);
begin
  ctdcfgcodigo.AsInteger := registrocfgcodigo.AsInteger;
end;

procedure Tfcfgmspd.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  registro.Params[0].AsString := vChaveMestre;

  inherited;

  ctd.Close;
  ctd.Params[0].AsInteger := Self.registrocfgcodigo.AsInteger;
  ctd.Open;

  if ctd.RecordCount = 0 then
    ctd.Append
  else
    ctd.Edit;

  Self.ajustabotoes;
end;

end.
