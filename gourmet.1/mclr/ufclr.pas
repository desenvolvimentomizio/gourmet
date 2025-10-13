unit ufclr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.OleCtrls, SHDocVw;

type
  Tfclr = class(Tfrmbase)
    registroclrchave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registrocrtcodigo: TIntegerField;
    registrotalcodigo: TIntegerField;
    registroctdcodigo: TIntegerField;
    registroclrcnaeprincipal: TStringField;
    registroclrcnaesecundaria1: TStringField;
    registroclrcnaesecundaria2: TStringField;
    registroclrcnaesecundaria3: TStringField;
    registroclrcnaesecundaria4: TStringField;
    Label1: TLabel;
    clrchave: TDBEdit;
    Label2: TLabel;
    etdcodigo: TDBEdit;
    Label3: TLabel;
    crtcodigo: TDBEdit;
    Label4: TLabel;
    talcodigo: TDBEdit;
    Label5: TLabel;
    ctdcodigo: TDBEdit;
    Label6: TLabel;
    clrcnaeprincipal: TDBEdit;
    Label7: TLabel;
    clrcnaesecundaria1: TDBEdit;
    Label8: TLabel;
    clrcnaesecundaria2: TDBEdit;
    Label9: TLabel;
    clrcnaesecundaria3: TDBEdit;
    Label10: TLabel;
    clrcnaesecundaria4: TDBEdit;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    crt: TUniQuery;
    crtcrtcodigo: TIntegerField;
    crtcrtidentificacao: TStringField;
    registrocrtidentificacao: TStringField;
    tal: TUniQuery;
    taltalcodigo: TIntegerField;
    taltalidentificacao: TStringField;
    registrotalidentificacao: TStringField;
    ctd: TUniQuery;
    ctdctdcodigo: TIntegerField;
    ctdctdidentificacao: TStringField;
    registroctdidentificacao: TStringField;
    Panel1: TPanel;
    WebBrowser1: TWebBrowser;
    BchamaSINTEGRA: TButton;
    etdetddoc1: TStringField;
    Detd: TDataSource;
    edDOC1: TEdit;
    Label11: TLabel;
    registroclrvencimentocertificado: TDateField;
    Label12: TLabel;
    clrvencimentocertificado: TDBEdit;
    registroclrversao: TStringField;
    Label13: TLabel;
    clrversao: TDBEdit;
    procedure BchamaSINTEGRAClick(Sender: TObject);
    procedure DSRegistroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    uf: String;
  end;

var
  fclr: Tfclr;

implementation

{$R *.dfm}

procedure Tfclr.BchamaSINTEGRAClick(Sender: TObject);
var
  Flags: OLEVariant;
begin
  Flags := 0;
  uf := 'MT';
  if uf = 'RO' then
    WebBrowser1.Navigate(WideString('http://www.sefin.ro.gov.br/sint_consul.asp'), Flags, Flags, Flags, Flags);
  if uf = 'AC' then
    WebBrowser1.Navigate(WideString('http://sefaznet.ac.gov.br/portalsefaz/servlet/hpfsinco'), Flags, Flags, Flags, Flags);
  if uf = 'AM' then
    WebBrowser1.Navigate(WideString('http://www.sefaz.am.gov.br/sintegra/sintegra0.asp'), Flags, Flags, Flags, Flags);
  if uf = 'RR' then
    WebBrowser1.Navigate(WideString('http://www.sefaz.rr.gov.br/servicos/sintegra/sintegra.asp'), Flags, Flags, Flags, Flags);
  if uf = 'PA' then
    WebBrowser1.Navigate(WideString('http://app.sefa.pa.gov.br/Sintegra/'), Flags, Flags, Flags, Flags);
  if uf = 'AP' then
    WebBrowser1.Navigate(WideString('http://www.sintegra.ap.gov.br/'), Flags, Flags, Flags, Flags);
  if uf = 'TO' then
    WebBrowser1.Navigate(WideString('http://sintegra.sefaz.to.gov.br/'), Flags, Flags, Flags, Flags);
  if uf = 'MA' then
    WebBrowser1.Navigate(WideString('http://www.sefaz.ma.gov.br/sintegra/sintegra.asp'), Flags, Flags, Flags, Flags);
  if uf = 'PI' then
    WebBrowser1.Navigate(WideString('http://web.sintegra.sefaz.pi.gov.br/'), Flags, Flags, Flags, Flags);
  if uf = 'CE' then
    WebBrowser1.Navigate(WideString('http://www.sefaz.ce.gov.br/Sintegra/Sintegra.Asp?estado=CE'), Flags, Flags, Flags, Flags);
  if uf = 'RN' then
    WebBrowser1.Navigate(WideString('http://ww3.set.rn.gov.br/sintegra'), Flags, Flags, Flags, Flags);
  if uf = 'PB' then
    WebBrowser1.Navigate(WideString('http://sintegra.receita.pb.gov.br/sintegra/sintegra.asp?estado=pb'), Flags, Flags, Flags, Flags);
  if uf = 'PE' then
    WebBrowser1.Navigate(WideString('http://www.sintegra.sefaz.pe.gov.br/'), Flags, Flags, Flags, Flags);
  if uf = 'AL' then
    WebBrowser1.Navigate(WideString('http://www.sefaz.al.gov.br/asp/sintegra/sintegra.asp?estado=AL'), Flags, Flags, Flags, Flags);
  if uf = 'SE' then
    WebBrowser1.Navigate(WideString('http://www.sefaz.se.gov.br/sintegra'), Flags, Flags, Flags, Flags);
  if uf = 'BA' then
    WebBrowser1.Navigate(WideString('http://www.sefaz.ba.gov.br/Sintegra/sintegra.asp?estado=BA'), Flags, Flags, Flags, Flags);
  if uf = 'MG' then
    WebBrowser1.Navigate(WideString('http://www.sintegra.fazenda.mg.gov.br/'), Flags, Flags, Flags, Flags);
  if uf = 'ES' then
    WebBrowser1.Navigate(WideString('http://www.sintegra.es.gov.br/'), Flags, Flags, Flags, Flags);
  if uf = 'RJ' then
    WebBrowser1.Navigate(WideString('http://www.fazenda.rj.gov.br/projetoCPS'), Flags, Flags, Flags, Flags);
  if uf = 'SP' then
    WebBrowser1.Navigate(WideString('http://pfeserv1.fazenda.sp.gov.br/sintegrapfe/consultaSintegraServlet'), Flags, Flags, Flags, Flags);
  if uf = 'PR' then
    WebBrowser1.Navigate(WideString('http://www.sintegra.fazenda.pr.gov.br/sintegra/'), Flags, Flags, Flags, Flags);
  if uf = 'SC' then
    WebBrowser1.Navigate(WideString('http://sistemas.sef.sc.gov.br/sintegra'), Flags, Flags, Flags, Flags);
  if uf = 'RS' then
    WebBrowser1.Navigate(WideString('http://www.sefaz.rs.gov.br/asp/SEF_root/inf/sintegra_entrada.asp'), Flags, Flags, Flags, Flags);
  if uf = 'MS' then
    WebBrowser1.Navigate(WideString('http://www1.sefaz.ms.gov.br/Cadastro/sintegra/cadastromsCCI.asp'), Flags, Flags, Flags, Flags);
  if uf = 'MT' then
    WebBrowser1.Navigate(WideString('http://www.sefaz.mt.gov.br/sid/consulta/infocadastral/consultar/publica'), Flags, Flags, Flags, Flags);
  if uf = 'GO' then
    WebBrowser1.Navigate(WideString('http://www.sefaz.go.gov.br/sintegra/sintegra.asp'), Flags, Flags, Flags, Flags);
  if uf = 'DF' then
    WebBrowser1.Navigate(WideString('http://www.fazenda.df.gov.br/area.cfm?id_area=110'), Flags, Flags, Flags, Flags);

  WebBrowser1.Silent := True;

end;

procedure Tfclr.DSRegistroDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  edDOC1.ReadOnly := false;
  if registro.Active then
    if registroetdcodigo.AsString <> '' then
    begin
      consulta.Close;
      consulta.SQL.Text := 'select etddoc1 from etd where etdcodigo=' + registroetdcodigo.AsString;
      consulta.Open;
      if not consulta.IsEmpty then
        edDOC1.Text := consulta.FieldByName('etddoc1').AsString
      else
        edDOC1.Text := '';
    end
    else
      edDOC1.Text := '';
  edDOC1.ReadOnly := True;
end;

end.
