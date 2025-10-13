unit ufajtcusto;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, uPegaBase, ufuncoes, System.ImageList;

type
  Tfajtcusto = class(Tfrmbase)
    punidentificacao: TDBEdit;
    Label5: TLabel;
    Label1: TLabel;
    punbarra: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    punprecoav: TDBEdit;
    punprecoap: TDBEdit;
    lppunprecoap: TLabel;
    registropunidentificacao: TStringField;
    registropunbarra: TStringField;
    registropunprecoav: TFloatField;
    registropunprecoap: TFloatField;
    registrounicodigo: TIntegerField;
    registropunmultiplicador: TFloatField;
    Label2: TLabel;
    punmultiplicador: TDBEdit;
    unicodigo: TDBEdit;
    registroprocodigo: TIntegerField;
    registropuncodigo: TIntegerField;
    cfgcfgdoisprecos: TIntegerField;
    Label7: TLabel;
    puncusto: TDBEdit;
    registropuncusto: TFloatField;
    Uni: tuniquery;
    uniunicodigo: TIntegerField;
    uniunisimbolo: TStringField;
    registrouninome: TStringField;
    registropunmargem: TFloatField;
    punmargem: TDBEdit;
    uniuninome: TStringField;
    apv: tuniquery;
    apvapvchave: TIntegerField;
    apvpuncodigo: TIntegerField;
    apvclbcodigo: TIntegerField;
    apvspvcodigo: TIntegerField;
    apvapvprecoav: TFloatField;
    apvapvprecoap: TFloatField;
    apvapvdatahora: TDateTimeField;
    cfgcfgmodoatuapro: TIntegerField;
    Label6: TLabel;
    registropunmargemap: TFloatField;
    rpu: tuniquery;
    rpurpuchave: TIntegerField;
    rpupuncodigo: TIntegerField;
    rpuclbcodigo: TIntegerField;
    rpupunprecoav: TFloatField;
    rpupunprecoap: TFloatField;
    rpupuncusto: TFloatField;
    rpupunmargem: TFloatField;
    rpupunpercacresavap: TFloatField;
    rpurpuregistro: TDateTimeField;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure puncustoExit(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fajtcusto: Tfajtcusto;

  // Início ID do Módulo frapun
const
  vPlIdMd = '01.01.05.002-04';

  // Fim ID do Módulo frapun

implementation

{$R *.dfm}

function formulariocusto(pCargaFrame: TCargaFrame): string;
begin
  fajtcusto := Tfajtcusto.Create(pCargaFrame);
  fajtcusto.ShowModal;
  fajtcusto.Free;
end;

exports formulariocusto;

procedure Tfajtcusto.bconfirmaClick(Sender: TObject);
var
  vlSituacao: String;
begin
  vlSituacao := self.psituacao.Caption;

  inherited;
  if vlSituacao = 'Alterando' then
  begin
    if not rpu.Active then
      rpu.Open;

    rpu.Append;
    rpupuncodigo.AsInteger := registropuncodigo.AsInteger;
    rpuclbcodigo.AsInteger := acesso.Usuario;
    rpupunprecoav.AsFloat := registropunprecoav.AsFloat;
    rpupunprecoap.AsFloat := registropunprecoap.AsFloat;
    rpupuncusto.AsFloat := registropuncusto.AsFloat;
    rpupunmargem.AsFloat := registropunmargem.AsFloat;
    rpurpuregistro.AsString:= agora(Application, ZCone);
    rpu.Post;

  end;

end;

procedure Tfajtcusto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

  if not(Key in [#8, #13, '0' .. '9', ',']) then
    Key := #0;
end;

procedure Tfajtcusto.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;

  if cfgcfgdoisprecos.AsInteger = 1 then
  begin
    punprecoap.Visible := True;
    lppunprecoap.Visible := True;
    self.Height := 320;
  end
  else
  begin
    punprecoap.Visible := False;
    lppunprecoap.Visible := False;
    self.Height := 290;
  end;

  punmargem.Color := $00FFD8B0;
  punprecoav.Color := $00FFD8B0;
  punprecoap.Color := $00FFD8B0;
end;

procedure Tfajtcusto.puncustoExit(Sender: TObject);
begin
  if puncusto.Field.AsFloat = 0 then
    Exit;

  punmargem.Field.AsFloat := TBRound(((registropunprecoav.AsFloat - puncusto.Field.AsFloat) / puncusto.Field.AsFloat) * 100, 3);
end;

end.
