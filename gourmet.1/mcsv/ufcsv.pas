unit ufcsv;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.SysUtils, ufuncoes, System.ImageList;

type
  Tfcsv = class(Tfrmbase)
    Label1: TLabel;
    csvchave: TDBEdit;
    Label2: TLabel;
    etdcodigo: TDBEdit;
    Label3: TLabel;
    cstcodigo: TDBEdit;
    Label4: TLabel;
    toecodigo: TDBEdit;
    Label5: TLabel;
    csvemissao: TDBEdit;
    Label6: TLabel;
    csvregistro: TDBEdit;
    Label7: TLabel;
    csvserie: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    csvnumero: TDBEdit;
    Label10: TLabel;
    csvvalor: TDBEdit;
    Label11: TLabel;
    csvdesconto: TDBEdit;
    Label12: TLabel;
    csvgeral: TDBEdit;
    Label13: TLabel;
    csvbicm: TDBEdit;
    Label14: TLabel;
    csvaliqicm: TDBEdit;
    Label15: TLabel;
    csvicm: TDBEdit;
    Label16: TLabel;
    csvbicms: TDBEdit;
    Label17: TLabel;
    csvicms: TDBEdit;
    Label18: TLabel;
    csvpis: TDBEdit;
    Label19: TLabel;
    csvcofins: TDBEdit;
    toe: tuniquery;
    toetoecodigo: TIntegerField;
    toetoeidentificacao: TStringField;
    csvsubserie: TDBEdit;
    Label20: TLabel;
    registrocsvchave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registroetdidentificacao: TStringField;
    registrocstcodigo: TStringField;
    registrocstidentificacao: TStringField;
    registrocfocfop: TStringField;
    registrocsvemissao: TDateField;
    registrotoecodigo: TIntegerField;
    registrotoeidentificacao: TStringField;
    registrocsvregistro: TDateField;
    registrocsvserie: TStringField;
    registrocsvsubserie: TStringField;
    registrocsvnumero: TStringField;
    registrocsvvalor: TFloatField;
    registrocsvdesconto: TFloatField;
    registrocsvgeral: TFloatField;
    registrocsvbicm: TFloatField;
    registrocsvicm: TFloatField;
    registrocsvbicms: TFloatField;
    registrocsvicms: TFloatField;
    registrocsvpis: TFloatField;
    registrocsvcofins: TFloatField;
    registrocsvaliqicm: TFloatField;
    registroclccodigo: TStringField;
    registrotdfcodigo: TStringField;
    registrosdecodigo: TStringField;
    etd: tuniquery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    cst: tuniquery;
    cstcstcodigo: TStringField;
    cstcstidentificacao: TStringField;
    registrotcscodigo: TStringField;
    tcs: tuniquery;
    tcstcscodigo: TStringField;
    tcstcsidentificacao: TStringField;
    registrotcsidentificacao: TStringField;
    Label22: TLabel;
    tcscodigo: TDBEdit;
    clc: tuniquery;
    clcclccodigo: TStringField;
    clcclcidentificacao: TStringField;
    clccodigo: TDBEdit;
    registroclcidentificacao: TStringField;
    clctcscodigo: TStringField;
    rfi: tuniquery;
    tit: tuniquery;
    mfi: tuniquery;
    registrocsvvencimento: TDateField;
    registrorfichave: TIntegerField;
    Label21: TLabel;
    csvvencimento: TDBEdit;
    rfirfichave: TIntegerField;
    rfietdcodigo: TIntegerField;
    rfitfdcodigo: TIntegerField;
    rfiflacodigo: TIntegerField;
    rfitficodigo: TIntegerField;
    rfibcocodigo: TStringField;
    rficarcodigo: TIntegerField;
    rfirfiemissao: TDateField;
    rfirfivencimento: TDateField;
    rfirfinumero: TStringField;
    rfirfivalor: TFloatField;
    rfirfihistorico: TStringField;
    rfisrfcodigo: TIntegerField;
    rfifrrcodigo: TIntegerField;
    rfirfimoradia: TFloatField;
    rfirfipercmesmora: TFloatField;
    rfirfirepetir: TIntegerField;
    rfirfiprevisao: TIntegerField;
    rfirfivalorparcela: TFloatField;
    rfimoecodigo: TIntegerField;
    rfititcodigo: TIntegerField;
    rfirfidatamulta: TDateField;
    rfirfivalomulta: TFloatField;
    rfirfivalodesc: TFloatField;
    rfirfidatadesc: TDateField;
    rfirfipercmulta: TFloatField;
    rfirfidtultbaixa: TDateField;
    tittitcodigo: TIntegerField;
    titetdcodigo: TIntegerField;
    tittitnumero: TStringField;
    tittitvalor: TFloatField;
    tittitemissao: TDateField;
    tittitvctoinicial: TDateField;
    tittfdcodigo: TIntegerField;
    titsrfcodigo: TIntegerField;
    tittficodigo: TIntegerField;
    tittithora: TTimeField;
    tittithistorico: TStringField;
    titclbcodigo: TIntegerField;
    tittitvalorparcela: TFloatField;
    tittitparcelas: TIntegerField;
    tittitprevisao: TIntegerField;
    titmoecodigo: TIntegerField;
    tittitmoradia: TFloatField;
    tittitvalomulta: TFloatField;
    tittitpercmesmora: TFloatField;
    tittitvalodesc: TFloatField;
    tittitpercmulta: TFloatField;
    titflacodigo: TIntegerField;
    titbcocodigo: TStringField;
    titcarcodigo: TIntegerField;
    tittitdiasmulta: TIntegerField;
    tittitdiasdesc: TIntegerField;
    mfimfichave: TIntegerField;
    mfirfichave: TIntegerField;
    mfitmfcodigo: TIntegerField;
    mfimoecodigo: TIntegerField;
    mfimfivalor: TFloatField;
    mfimfidata: TDateField;
    mfimfihistorico: TStringField;
    mfimfivalorori: TFloatField;
    mfimfiparcela: TIntegerField;
    procedure bconfirmaClick(Sender: TObject);
    procedure csvgeralEnter(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure clccodigoExit(Sender: TObject);
    procedure clccodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tcscodigoExit(Sender: TObject);
    procedure toecodigoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcsv: Tfcsv;

  // Início ID do Módulo fracte
const
  vPlIdMd = '03.08.18.001-02';

  // Fim ID do Módulo fracte

implementation

{$R *.dfm}

procedure Tfcsv.bconfirmaClick(Sender: TObject);
var
  i: integer;
  vlTitCodigo: string;
  vlRficChave: string;
  Confirma: integer;
begin

  consulta.Close;
  consulta.SQL.Text := 'select toecfopsaida from toe where toecodigo=' + self.toecodigo.Field.AsString;
  consulta.Open;

  self.registrocfocfop.AsString := self.consulta.Fields[0].AsString;

  If self.tcscodigo.Field.AsString = '1' Then
    registrotdfcodigo.AsString := '06'
  Else If self.tcscodigo.Field.AsString = '3' Then
    registrotdfcodigo.AsString := '22'
  Else
    registrotdfcodigo.AsString := '29';

  inherited;

  if psituacao.Caption = 'Incluindo' then
    Confirma := Application.MessageBox(PChar('Deseja criar o registro de Contas a Pagar desta Fatura ?'), 'Atenção', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION)
  else
    Confirma := Idyes;

  If (Confirma = Idyes) Then
  Begin

    consulta.Close;
    consulta.SQL.Text := 'select csv.rfichave, rfi.titcodigo from csv, rfi where csv.rfichave=rfi.rfichave and csvchave=' + registrocsvchave.AsString;
    consulta.Open;

    if consulta.Fields[1].AsString <> '' then
    begin
      tit.Close;
      tit.Params[0].AsString := consulta.Fields[1].AsString;
      tit.Open;
      tit.Edit;
    end
    else
    begin
      tit.Close;
      tit.Params[0].AsString := '0';
      tit.Open;
      tit.Edit;
    end;
    titflacodigo.AsInteger := Acesso.Filial;
    titetdcodigo.AsInteger := registroetdcodigo.AsInteger;
    tittitnumero.AsString := registrocsvnumero.AsString;
    tittitvalor.AsCurrency := registrocsvvalor.AsCurrency - registrocsvdesconto.AsCurrency;
    tittitemissao.AsFloat := registrocsvemissao.AsFloat;

    tittitvctoinicial.AsFloat := registrocsvvencimento.AsFloat;

    tittithistorico.AsString := 'Cta - ' + registrotcsidentificacao.AsString + ' ' + registrocsvnumero.AsString;
    titclbcodigo.AsInteger := Acesso.Usuario;
    tittitvalorparcela.AsCurrency := tittitvalor.AsCurrency;

    tittfdcodigo.AsInteger := tfdPagar;
    titsrfcodigo.AsInteger := srfEmAberto;
    tittficodigo.AsInteger := tfiFatura;

    tittithora.AsFloat := Time;
    tittitparcelas.AsInteger := 1; // verificar
    tittitprevisao.AsInteger := senNao;
    titmoecodigo.AsInteger := 1; // moeda 1 - Real

    tittitmoradia.AsFloat := 0;
    tittitpercmesmora.AsFloat := 0;

    tittitdiasmulta.AsInteger := 0;
    tittitvalomulta.AsCurrency := 0;
    tittitpercmulta.AsFloat := 0;

    tittitdiasdesc.AsInteger := 0;
    tittitvalodesc.AsCurrency := 0;

    titflacodigo.AsInteger := Acesso.Filial;
    titbcocodigo.AsString := '000';
    titcarcodigo.AsInteger := 1;

    tit.Post;

    // zcone.Commit;
    rfi.Close;
    rfi.Params[0].AsInteger := tittitcodigo.AsInteger;
    rfi.Open;

    if rfi.IsEmpty then
      rfi.Append
    else
      rfi.Edit;

    rfititcodigo.AsInteger := tittitcodigo.AsInteger;
    rfietdcodigo.AsInteger := self.registroetdcodigo.AsInteger;
    rfitfdcodigo.AsInteger := tittfdcodigo.AsInteger;
    rfiflacodigo.AsInteger := titflacodigo.AsInteger;
    rfitficodigo.AsInteger := tittficodigo.AsInteger;
    rfibcocodigo.AsString := titbcocodigo.AsString;
    rficarcodigo.AsInteger := titcarcodigo.AsInteger;
    rfirfiemissao.AsFloat := tittitemissao.AsFloat;
    rfirfivencimento.AsFloat := tittitvctoinicial.AsFloat;
    rfirfinumero.AsString := tittitnumero.AsString;
    rfirfivalor.AsCurrency := tittitvalor.AsCurrency;
    rfirfihistorico.AsString := tittithistorico.AsString;
    rfisrfcodigo.AsInteger := titsrfcodigo.AsInteger;
    rfifrrcodigo.AsInteger := 1;
    rfirfimoradia.AsFloat := tittitmoradia.AsFloat;
    rfirfipercmesmora.AsFloat := tittitpercmesmora.AsFloat;
    rfirfirepetir.AsInteger := 1;
    rfirfiprevisao.AsInteger := tittitprevisao.AsInteger;
    rfirfivalorparcela.AsFloat := tittitvalorparcela.AsFloat;
    rfimoecodigo.AsInteger := titmoecodigo.AsInteger;

    rfirfidatamulta.AsFloat := tittitdiasmulta.AsInteger + rfirfivencimento.AsFloat;
    rfirfivalomulta.AsFloat := tittitvalomulta.AsFloat;
    rfirfivalodesc.AsFloat := tittitvalodesc.AsFloat;
    rfirfidatadesc.AsFloat := rfirfivencimento.AsFloat - tittitdiasdesc.AsFloat;
    rfirfipercmulta.AsFloat := tittitpercmulta.AsFloat;
    rfirfipercmulta.AsFloat := tittitpercmulta.AsFloat;
    rfi.Post;

    mfi.Close;
    mfi.Params[0].AsInteger := rfirfichave.AsInteger;
    mfi.Open;

    if mfi.IsEmpty then
      mfi.Append
    else
      mfi.Edit;

    mfirfichave.AsInteger := self.rfirfichave.AsInteger;
    mfitmfcodigo.AsInteger := tmfAPagar;

    mfimoecodigo.AsInteger := rfimoecodigo.AsInteger;
    mfimfivalor.AsFloat := self.rfirfivalor.AsFloat;
    mfimfidata.AsFloat := self.rfirfiemissao.AsFloat;
    mfimfihistorico.AsString := 'Registro Inicial';
    mfimfivalorori.AsFloat := self.rfirfivalor.AsFloat;
    mfimfiparcela.AsInteger := 1;
    mfi.Post;

  End;
end;

procedure Tfcsv.clccodigoEnter(Sender: TObject);
begin
  inherited;
  self.txtFiltro := ' tcscodigo=' + chr(39) + tcscodigo.Field.AsString + chr(39);
end;

procedure Tfcsv.clccodigoExit(Sender: TObject);
begin
  inherited;

  validasaida(Sender);
end;

procedure Tfcsv.csvgeralEnter(Sender: TObject);
begin
  inherited;
  csvgeral.Field.AsFloat := csvvalor.Field.AsFloat - csvdesconto.Field.AsFloat;
end;

procedure Tfcsv.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;

  self.txtFiltro := ' tcscodigo=' + chr(39) + tcscodigo.Field.AsString + chr(39);
end;

procedure Tfcsv.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;

  registrocsvregistro.AsFloat := date;
  registrocsvdesconto.AsFloat := 0;
  registrocsvbicm.AsFloat := 0;
  registrocsvicm.AsFloat := 0;
  registrocsvbicms.AsFloat := 0;
  registrocsvicms.AsFloat := 0;
  registrocsvpis.AsFloat := 0;
  registrocsvcofins.AsFloat := 0;
  registrocsvaliqicm.AsFloat := 0;
  registrosdecodigo.AsString := '00';
end;

procedure Tfcsv.tcscodigoExit(Sender: TObject);
begin
  inherited;

  validasaida(Sender);

  self.txtFiltro := ' tcscodigo=' + chr(39) + tcscodigo.Field.AsString + chr(39);
end;

procedure Tfcsv.toecodigoEnter(Sender: TObject);
begin
  txtFiltro := '';
end;

end.
