unit uftit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  ufuncoes;

type
  Tftit = class(Tfrmbase)
    registrotitcodigo: TIntegerField;
    registroetdcodigo: TIntegerField;
    registrotitnumero: TStringField;
    registrotitvalor: TFloatField;
    registrotitemissao: TDateField;
    registrotitvctoinicial: TDateField;
    registrotfdcodigo: TIntegerField;
    registrosrfcodigo: TIntegerField;
    registrotficodigo: TIntegerField;
    registrotithora: TTimeField;
    registrotithistorico: TStringField;
    registroclbcodigo: TIntegerField;
    registrotitvalorparcela: TFloatField;
    registrotitparcelas: TIntegerField;
    registrotitprevisao: TIntegerField;
    registromoecodigo: TIntegerField;
    registrotitmoradia: TFloatField;
    registrotitvalomulta: TFloatField;
    registrotitpercmesmora: TFloatField;
    registrotitvalodesc: TFloatField;
    registrotitpercmulta: TFloatField;
    registroflacodigo: TIntegerField;
    registrobcocodigo: TStringField;
    registrocarcodigo: TIntegerField;
    registrotitdiasmulta: TIntegerField;
    registrotitdiasdesc: TIntegerField;
    Label1: TLabel;
    titcodigo: TDBEdit;
    Label2: TLabel;
    tithistorico: TDBEdit;
    Label3: TLabel;
    titvalor: TDBEdit;
    cfgcfgetdempresa: TIntegerField;
    Label4: TLabel;
    titvctoinicial: TDBEdit;
    tit: TUniQuery;
    rfi: TUniQuery;
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
    mfi: TUniQuery;
    mfimfichave: TIntegerField;
    mfirfichave: TIntegerField;
    mfitmfcodigo: TIntegerField;
    mfimoecodigo: TIntegerField;
    mfimfivalor: TFloatField;
    mfimfidata: TDateField;
    mfimfihistorico: TStringField;
    mfimfivalorori: TFloatField;
    mfimfiparcela: TIntegerField;
    mfiflacodigo: TIntegerField;
    mlt: TUniQuery;
    mltmltchave: TIntegerField;
    mltmfichave: TIntegerField;
    mltltechave: TIntegerField;
    mltflacodigo: TIntegerField;
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
    lte: TUniQuery;
    lteltechave: TIntegerField;
    ltetfdcodigo: TIntegerField;
    lteltedata: TDateField;
    ltelteprincipal: TFloatField;
    lteltejuros: TFloatField;
    lteltedesconto: TFloatField;
    lteltetotal: TFloatField;
    ltelteextenso: TStringField;
    lteltehistorico: TStringField;
    lteltemulta: TFloatField;
    lteltesituacao: TIntegerField;
    lteflacodigo: TIntegerField;
    lteclbcodigo: TIntegerField;
    ltectacodigo: TIntegerField;
    ltelteregistro: TDateTimeField;
    lteltetroco: TFloatField;
    registrophgcodigo: TIntegerField;
    phg: TUniQuery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    registrophgidentificacao: TStringField;
    Label5: TLabel;
    phgcodigo: TDBEdit;
    procedure bconfirmaClick(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    function AjustaRfi(vtitcodigo: string; vVencimento: TDate; vParcela: Integer; vvalor: Double): Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftit: Tftit;

implementation

{$R *.dfm}

procedure Tftit.bconfirmaClick(Sender: TObject);
begin

  registrotitvalorparcela.AsFloat := titvalor.Field.AsFloat;
  inherited;

  AjustaRfi(registrotitcodigo.AsString, registrotitvctoinicial.AsFloat, 1, titvalor.Field.AsFloat);

end;

procedure Tftit.FormShow(Sender: TObject);
begin
  inherited;
  if vChaveMestre = '2' then
  begin
    self.Caption := 'Registro Manual - a Crédito';
  end;

  if vChaveMestre = '1' then
  begin
    self.Caption := 'Registro Manual - a Débito';
  end;

end;

procedure Tftit.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;

  registroetdcodigo.AsInteger := cfgcfgetdempresa.AsInteger;
  registrotitnumero.AsString := 'REG.MANUAL';
  registrotitemissao.AsString := hoje(application, zcone);
  // registrotitvctoinicial.AsString := hoje(application, zcone);
  registrotfdcodigo.AsString := vChaveMestre;
  registrosrfcodigo.AsInteger := srfQuitado;
  registrotficodigo.AsInteger := tfiOutros;
  registrotithora.AsString := timetostr(time);
  registroclbcodigo.AsInteger := acesso.Usuario;
  registrotitvalorparcela.AsFloat := 0;
  registrotitparcelas.AsInteger := 1;
  registrotitprevisao.AsInteger := 0;
  registromoecodigo.AsInteger := 1;
  registrotitmoradia.AsFloat := 0;
  registrotitvalomulta.AsFloat := 0;
  registrotitpercmesmora.AsFloat := 0;
  registrotitvalodesc.AsFloat := 0;
  registrotitpercmulta.AsFloat := 0;
  registroflacodigo.AsInteger := acesso.Filial;
  registrobcocodigo.AsString := '000';
  registrocarcodigo.AsInteger := 1;
  registrotitdiasmulta.AsInteger := 0;
  registrotitdiasdesc.AsInteger := 0;

end;

function Tftit.AjustaRfi(vtitcodigo: string; vVencimento: TDate; vParcela: Integer; vvalor: Double): Integer;
begin

  tit.Connection := zcone;

  tit.Close;
  tit.SQL.Text := 'SELECT tit.titcodigo, tit.etdcodigo, tit.titvalor, tit.titnumero, tit.titemissao, ';
  tit.SQL.Add('tit.titvalorparcela, tit.titparcelas, tit.titvctoinicial, tit.tfdcodigo, tit.srfcodigo,');
  tit.SQL.Add('tit.tficodigo, tit.tithora, tit.clbcodigo, tit.tithistorico, tit.flacodigo, tit.bcocodigo,');
  tit.SQL.Add('tit.carcodigo, tit.titprevisao, tit.moecodigo, tit.titmoradia, tit.titdiasmulta, tit.titvalomulta,');
  tit.SQL.Add('tit.titpercmesmora, tit.titvalodesc, tit.titdiasdesc, tit.titpercmulta ');
  tit.SQL.Add('FROM tit ');
  tit.SQL.Add('WHERE tit.titcodigo=' + vtitcodigo);
  tit.Open;

  if not tit.IsEmpty then
  begin
    rfi.Close;
    rfi.Filter := 'titcodigo=' + vtitcodigo;
    rfi.Filtered := true;
    rfi.Open;

    if rfi.IsEmpty then
      rfi.Append
    else
      rfi.Edit;

    rfititcodigo.AsString := vtitcodigo;
    rfietdcodigo.AsInteger := titetdcodigo.AsInteger;
    rfitfdcodigo.AsInteger := tittfdcodigo.AsInteger;
    rfiflacodigo.AsInteger := titflacodigo.AsInteger;
    rfitficodigo.AsInteger := tittficodigo.AsInteger;
    rfibcocodigo.AsString := titbcocodigo.AsString;
    rficarcodigo.AsInteger := titcarcodigo.AsInteger;
    rfirfiemissao.AsFloat := tittitemissao.AsFloat;
    rfirfivencimento.AsFloat := vVencimento;
    rfirfinumero.AsString := tittitnumero.AsString + '-' + IntToStr(vParcela);
    rfirfivalor.AsFloat := vvalor;
    rfirfihistorico.AsString := tittithistorico.AsString;
    rfisrfcodigo.AsInteger := titsrfcodigo.AsInteger;
    rfifrrcodigo.AsInteger := 1;
    rfirfimoradia.AsFloat := 0;
    rfirfipercmesmora.AsFloat := 0;
    rfirfirepetir.AsInteger := 0;
    rfirfiprevisao.AsInteger := 0;
    rfirfivalorparcela.AsFloat := vvalor;
    rfimoecodigo.AsInteger := 1;
    rfi.Post;

  end;

  lte.Close;
  lte.FilterSQL := 'ltedata=' + QuotedStr(ajustadata( rfirfiemissao.AsString)) + ' and  clbcodigo=' + acesso.Usuario.ToString + ' and lteprincipal=' +
    buscatroca(floattostr(vvalor), ',', '.');
  lte.Filtered := true;
  lte.Open;

  if lte.IsEmpty then
    lte.Append
  else
    lte.Edit;

  ltetfdcodigo.AsString := vChaveMestre;
  lteltedata.AsFloat := titvctoinicial.Field.AsFloat;
  ltelteprincipal.AsFloat := vvalor;
  lteltejuros.AsFloat := 0;
  lteltedesconto.AsFloat := 0;
  lteltetotal.AsFloat := vvalor;
  lteltemulta.AsFloat := 0;
  lteltesituacao.AsInteger := 0;
  lteflacodigo.AsInteger := acesso.Filial;
  lteclbcodigo.AsInteger := acesso.Usuario;
  ltelteregistro.AsString := agora(application, zcone);
  lte.Post;

  // registro
  mfi.Close;
  mfi.Filter := 'rfichave=' + rfirfichave.AsString + ' and tmfcodigo=' + tmfAReceber.ToString;
  mfi.Filtered := true;
  mfi.Open;

  if mfi.IsEmpty then
    mfi.Append
  else
    mfi.Edit;

  mfirfichave.AsInteger := self.rfirfichave.AsInteger;
  mfitmfcodigo.AsInteger := tmfAReceber;
  mfimoecodigo.AsInteger := 1;
  mfimfivalor.AsFloat := rfirfivalor.AsFloat;
  mfimfidata.AsString := hoje(application, zcone);
  mfimfihistorico.AsString := '';
  mfimfivalorori.AsFloat := rfirfivalor.AsFloat;
  mfimfiparcela.AsInteger := 0;
  mfi.Post;

  mlt.Close;
  mlt.Filter := 'ltechave=' + self.lteltechave.AsString + ' and mfichave=' + mfimfichave.AsString;
  mlt.Filtered := true;
  mlt.Open;

  if mlt.IsEmpty then
    mlt.Append
  else
    mlt.Edit;

  mltmfichave.AsInteger := self.mfimfichave.AsInteger;
  mltltechave.AsInteger := self.lteltechave.AsInteger;
  mltflacodigo.AsInteger := acesso.Filial;
  mlt.Post;

  mfi.Close;
  mfi.Filter := 'rfichave=' + rfirfichave.AsString + ' and tmfcodigo=' + tmfRecebimento.ToString;
  mfi.Filtered := true;
  mfi.Open;

  if mfi.IsEmpty then
    mfi.Append
  else
    mfi.Edit;

  mfirfichave.AsInteger := rfirfichave.AsInteger;
  mfitmfcodigo.AsInteger := tmfRecebimento;
  mfimoecodigo.AsInteger := 1;
  mfimfivalor.AsCurrency := rfirfivalor.AsCurrency;
  mfimfidata.AsFloat := rfirfivencimento.AsFloat;
  mfimfihistorico.AsString := 'Liquidação Automática';
  mfimfivalorori.AsCurrency := rfirfivalor.AsCurrency;
  mfimfiparcela.AsInteger := 1;
  mfi.Post;

  mlt.Close;
  mlt.Filter := 'ltechave=' + self.lteltechave.AsString + ' and mfichave=' + mfimfichave.AsString;
  mlt.Filtered := true;
  mlt.Open;

  if mlt.IsEmpty then
    mlt.Append
  else
    mlt.Edit;

  mltmfichave.AsInteger := self.mfimfichave.AsInteger;
  mltltechave.AsInteger := self.lteltechave.AsInteger;
  mltflacodigo.AsInteger := acesso.Filial;
  mlt.Post;

  rfi.Edit;
  rfisrfcodigo.AsInteger := srfQuitado;
  rfi.Post;



 { mlg.Close;
  mlg.Filter := 'ltechave=' + self.lteltechave.AsString;
  mlg.Filtered := true;
  mlg.Open;

  if mlg.IsEmpty then
    mlg.Append
  else
    mlg.Edit;

  mlgclbcodigo.AsInteger := acesso.Usuario;
  mlgmlgsituacao.AsInteger := 0;
  mlgflacodigo.AsInteger := acesso.Filial;
  mlgmlgdata.AsFloat := rfirfiemissao.AsFloat;
  mlgltechave.AsInteger := lteltechave.AsInteger;
  mlg.Post;

  rmgmlgchave.AsInteger := mlgmlgchave.AsInteger;
  rmgphgcodigo.AsString := '';
  rmgrmgdata.AsFloat := rfirfiemissao.AsFloat;
  rmgrmgvalor.AsFloat := vvalor;
  rmgrmgcomplemento.AsString := '';
  rmgpcgcodigo.AsInteger := 0;
  rmgpcgcredito.AsInteger := 0;
  rmgrmginclusao.AsString := agora(application, zcone);
  rmgrmgtipo.AsInteger := 0;

  if vChaveMestre = '1' then
    rmgcedcodigo.AsInteger := 0
  else
    rmgcedcodigo.AsInteger := 1;
  rmg.Post;}


  Result := rfirfichave.AsInteger;

end;

end.
