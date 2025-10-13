unit uffca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPegaBase, Uni, Data.DB, MemDS, DBAccess,
  Vcl.ComCtrls, uFuncoes, Vcl.ExtCtrls;

type
  Tffca = class(TForm)
    cav: TUniQuery;
    cavcavchave: TIntegerField;
    cavcavpasta: TStringField;
    cavacocodigo: TIntegerField;
    cavetdcodigo: TIntegerField;
    cavcavregistro: TDateField;
    cavumocodigo: TIntegerField;
    cavcrfcodigo: TIntegerField;
    cavcavvaloracao: TFloatField;
    cavcavdiavcto: TIntegerField;
    cavcavpercentualmes: TFloatField;
    cavcavvalormes: TFloatField;
    cavcavpercentualmulta: TFloatField;
    cavcavpercentualjuros: TFloatField;
    cavcavobservacao: TStringField;
    cavclbcodigo: TIntegerField;
    cti: TUniQuery;
    ctictichave: TIntegerField;
    cticavchave: TIntegerField;
    ctititcodigo: TIntegerField;
    tit: TUniQuery;
    tittitcodigo: TIntegerField;
    titetdcodigo: TIntegerField;
    tittfdcodigo: TIntegerField;
    titflacodigo: TIntegerField;
    tittficodigo: TIntegerField;
    titbcocodigo: TStringField;
    titcarcodigo: TIntegerField;
    tittitemissao: TDateField;
    tittithora: TTimeField;
    titclbcodigo: TIntegerField;
    tittitparcelas: TIntegerField;
    tittitvctoinicial: TDateField;
    tittitnumero: TStringField;
    tittitvalorparcela: TFloatField;
    tittitvalor: TFloatField;
    tittithistorico: TStringField;
    titsrfcodigo: TIntegerField;
    tittitmoradia: TFloatField;
    tittitpercmesmora: TFloatField;
    tittitrepetir: TIntegerField;
    tittitprevisao: TIntegerField;
    titmoecodigo: TIntegerField;
    tittitdiasdesc: TIntegerField;
    tittitvalodesc: TFloatField;
    tittitdiasmulta: TIntegerField;
    tittitpercmulta: TFloatField;
    tittitvalomulta: TFloatField;
    tittngcodigo: TIntegerField;
    titphgcodigo: TIntegerField;
    rfi: TUniQuery;
    rfirfichave: TIntegerField;
    rfititcodigo: TIntegerField;
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
    rfirfidatamulta: TDateField;
    rfirfivalomulta: TFloatField;
    rfirfivalodesc: TFloatField;
    rfirfidatadesc: TDateField;
    rfirfipercmulta: TFloatField;
    rfirfidtultbaixa: TDateField;
    rfirfidtprevisao: TDateField;
    rfirfisituacao: TIntegerField;
    rfitngcodigo: TIntegerField;
    rfirfimarca: TIntegerField;
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
    mfimfisituacao: TIntegerField;
    mostra: TProgressBar;
    cfg: TUniQuery;
    cfgcfgcodigo: TIntegerField;
    cfgcfgportadorpadrao: TIntegerField;
    cfgcfgtipodocpadrao: TIntegerField;
    cfgcfgviaassinar: TIntegerField;
    cfgcfgcontrolalimite: TIntegerField;
    cfgcfgfiltrarrec: TIntegerField;
    car: TUniQuery;
    carcarcodigo: TIntegerField;
    carcaridentificacao: TStringField;
    carbcocodigo: TStringField;
    carctacodigo: TIntegerField;
    carcarconvenio: TStringField;
    carcarnumerocar: TStringField;
    carcarobs1: TStringField;
    carcarobs2: TStringField;
    carcarobs3: TStringField;
    carcaraceite: TIntegerField;
    carcardescontado: TIntegerField;
    carcarregistrado: TIntegerField;
    carcarnumarqrem: TStringField;
    carcarlayout: TIntegerField;
    carcarcontrato: TStringField;
    carcarretorno: TStringField;
    carcardiasmulta: TIntegerField;
    carcarpercmulta: TFloatField;
    carcardiasdesc: TIntegerField;
    carcarpercdesc: TFloatField;
    carcarpercmorames: TFloatField;
    carcarserienossonum: TIntegerField;
    carcarmodalidade: TStringField;
    carcarcodigocedente: TStringField;
    carcargeraboleto: TIntegerField;
    carcardiasjuros: TIntegerField;
    cum: TUniQuery;
    cumcumchave: TIntegerField;
    cumumocodigo: TIntegerField;
    cumcumdata: TDateField;
    cumcumvalor: TFloatField;
    cfgcfgphgpadrao: TIntegerField;
    tmFechar: TTimer;
    cri: TUniQuery;
    cricrichave: TIntegerField;
    cricavchave: TIntegerField;
    crirfichave: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure tmFecharTimer(Sender: TObject);
  private
    { Private declarations }
    Fzcone: TUniConnection;
    function ExecutaFaturamento(pCavChave: String): string;
    procedure AtribuiConexoes;
    procedure CarregaContratos(pCavChave: string);
    procedure GeraMovimentoFinanceiro;
    procedure ProcessaContratos;
    procedure CarregaConfiguracos;
    procedure GeraRegistroFinanceiro(pTitCcodigo: string; vVencimento: TDate; vParcela: integer = 1);
  protected

    Acesso: TAcesso;

  published
    property zcone: TUniConnection read Fzcone write Fzcone;
  public
    { Public declarations }
    vpCavChave: string;
    vpRetorno: string;
    vpParcelas: integer;
  end;

var
  ffca: Tffca;

implementation

{$R *.dfm}

function ProcessaFaturamento(AOwner: TComponent; Conexao: TUniConnection; pCavChave: string; pAcesso: TAcesso; pParcelas: integer = 1): string;
Var
  i: integer;
Begin
  Application.CreateForm(Tffca, ffca);
  try
    ffca.zcone := Conexao;
    ffca.vpCavChave := pCavChave;
    ffca.vpParcelas := pParcelas;
    ffca.Acesso := pAcesso;
    ffca.vpRetorno := ffca.ExecutaFaturamento(pCavChave);
    Result := ffca.vpRetorno;
  finally
    ffca.Free;
  end;
End;

exports ProcessaFaturamento;

procedure Tffca.CarregaConfiguracos;
begin
  cfg.close;
  cfg.ParamByName('cfgcodigo').AsInteger := Acesso.Filial;
  cfg.Open;

  car.close;
  car.FilterSQL := 'carcodigo=' + cfgcfgportadorpadrao.AsString;
  car.Open;

end;

function Tffca.ExecutaFaturamento(pCavChave: String): string;
begin
  self.ShowModal;
end;

procedure Tffca.tmFecharTimer(Sender: TObject);
begin
  close;
end;

procedure Tffca.FormShow(Sender: TObject);
begin
  tmFechar.Enabled := False;

  AtribuiConexoes;

  CarregaConfiguracos;

  CarregaContratos(vpCavChave);

  ProcessaContratos;

end;

procedure Tffca.GeraMovimentoFinanceiro;
begin

  tit.close;
  tit.Open;

  tit.Append;
  titetdcodigo.AsInteger := cavetdcodigo.AsInteger;
  tittfdcodigo.AsInteger := tfdReceber;
  titflacodigo.AsInteger := Acesso.Filial;
  tittficodigo.AsInteger := cfgcfgtipodocpadrao.AsInteger;
  titcarcodigo.AsString := cfgcfgportadorpadrao.AsString;
  titbcocodigo.AsString := carbcocodigo.AsString;
  tittitemissao.AsString := hoje(Application, zcone);
  tittithora.AsFloat := now;
  titclbcodigo.AsInteger := Acesso.Usuario;
  tittitparcelas.AsInteger := vpParcelas;

  If cavcavdiavcto.AsInteger < StrToInt(FormatDateTime('m', self.tittitemissao.AsFloat)) Then
    tittitvctoinicial.AsString := formatfloat('00', cavcavdiavcto.AsInteger) + '/' + FormatDateTime('mm', self.tittitemissao.AsFloat) + '/' +
      FormatDateTime('yyyy', self.tittitemissao.AsFloat)
  else
    tittitvctoinicial.AsString := formatfloat('00', cavcavdiavcto.AsInteger) + '/' + FormatDateTime('mm', IncMonth(self.tittitemissao.AsFloat)) + '/' +
      FormatDateTime('yyyy', self.tittitemissao.AsFloat);

  tittitnumero.AsString := 'Ctr.Nr.:' + formatfloat('00000000', cavcavchave.AsFloat);
  titsrfcodigo.AsInteger := srfEmAberto;
  tittitrepetir.AsInteger := 0;
  tittitprevisao.AsInteger := 0;

  if cavumocodigo.AsInteger = 1 then
    tittitvalorparcela.AsCurrency := cavcavvaloracao.AsCurrency
  else
  begin
    cum.close;
    cum.FilterSQL := 'umocodigo=' + cavumocodigo.AsString + ' and cumdata=' + QuotedStr(ajustadata(tittitvctoinicial.AsString));
    cum.Open;

    tittitvalorparcela.AsCurrency := (cumcumvalor.AsFloat * cavcavvaloracao.AsFloat) * (cavcavpercentualmes.AsFloat / 100);
  end;
  tittitvalor.AsCurrency := tittitvalorparcela.AsCurrency * vpParcelas;
  tittithistorico.AsString := 'Contrato nr. ' + formatfloat('00000000', cavcavchave.AsFloat);
  titmoecodigo.AsInteger := cavumocodigo.AsInteger;
  tittitpercmesmora.AsFloat := cavcavpercentualjuros.AsFloat;
  tittitmoradia.AsCurrency := (tittitvalorparcela.AsCurrency * (tittitpercmesmora.AsFloat / 100)) / 30;

  // tittngcodigo.AsInteger := 0;

  tittitdiasdesc.AsInteger := carcardiasdesc.AsInteger;
  tittitvalodesc.AsCurrency := tittitvalorparcela.AsCurrency * (carcarpercdesc.AsFloat / 100);
  tittitdiasmulta.AsInteger := carcardiasmulta.AsInteger;
  tittitpercmulta.AsFloat := carcarpercmulta.AsFloat;
  tittitvalomulta.AsCurrency := tittitvalorparcela.AsCurrency * (carcarpercmulta.AsFloat / 100);
  titphgcodigo.AsInteger := cfgcfgphgpadrao.AsInteger;
  tit.Post;

  cti.Append;
  cticavchave.AsInteger := cavcavchave.AsInteger;
  ctititcodigo.AsInteger := tittitcodigo.AsInteger;
  cti.Post;

  GeraRegistroFinanceiro(tittitcodigo.AsString, tittitvctoinicial.AsDateTime)


end;

procedure Tffca.GeraRegistroFinanceiro(pTitCcodigo: string; vVencimento: TDate; vParcela: integer = 1);
begin
  tit.close;
  tit.FilterSQL := 'titcodigo=' + pTitCcodigo;
  tit.Open;

  cri.close;
  cri.FilterSQL := 'cavchave=' + cavcavchave.AsString;
  cri.Open;

  if not tit.IsEmpty then
  begin

    rfi.Open;
    rfi.Append;
    rfititcodigo.AsString := tittitcodigo.AsString;
    rfietdcodigo.AsInteger := titetdcodigo.AsInteger;
    rfitfdcodigo.AsInteger := tittfdcodigo.AsInteger;
    rfiflacodigo.AsInteger := titflacodigo.AsInteger;
    rfitficodigo.AsInteger := tittficodigo.AsInteger;
    rfibcocodigo.AsString := titbcocodigo.AsString;
    rficarcodigo.AsInteger := titcarcodigo.AsInteger;
    rfirfiemissao.AsFloat := tittitemissao.AsFloat;

    if vParcela = 1 then
      rfirfivencimento.AsFloat := vVencimento
    else
      rfirfivencimento.AsFloat := IncMonth(tittitvctoinicial.AsFloat, vParcela);

    rfirfinumero.AsString := tittitnumero.AsString + '-' + Inttostr(vParcela);
    rfirfivalor.AsFloat := tittitvalorparcela.AsCurrency;
    rfirfihistorico.AsString := tittithistorico.AsString;
    rfisrfcodigo.AsInteger := titsrfcodigo.AsInteger;
    rfifrrcodigo.AsInteger := 1;
    rfirfimoradia.AsCurrency := tittitmoradia.AsCurrency;
    rfirfipercmesmora.AsFloat := tittitpercmesmora.AsFloat;
    rfirfirepetir.AsInteger := 1;
    rfirfiprevisao.AsInteger := 0;
    rfisrfcodigo.AsInteger := srfEmAberto;
    rfirfisituacao.AsInteger := 0;

    if cavumocodigo.AsInteger = 1 then
      rfirfivalorparcela.AsCurrency := cavcavvaloracao.AsCurrency
    else
    begin
      cum.close;
      cum.FilterSQL := 'umocodigo=' + cavumocodigo.AsString + ' and cumdata=' + QuotedStr(ajustadata(tittitvctoinicial.AsString));
      cum.Open;

      rfirfivalorparcela.AsCurrency := (cumcumvalor.AsFloat * cavcavvaloracao.AsFloat) * (cavcavpercentualmes.AsFloat / 100);
    end;

    rfirfivalorparcela.AsFloat := tittitvalorparcela.AsCurrency;

    rfimoecodigo.AsInteger := titmoecodigo.AsInteger;
    rfirfidatamulta.AsFloat := rfirfivencimento.AsFloat + carcardiasmulta.AsInteger;
    rfirfipercmulta.AsFloat := carcarpercmulta.AsFloat;
    rfirfivalomulta.AsCurrency := rfirfivalorparcela.AsCurrency * (carcarpercmulta.AsFloat / 100);

    rfirfidatadesc.AsFloat := rfirfivencimento.AsFloat - carcardiasdesc.AsInteger;
    rfirfivalodesc.AsCurrency := rfirfivalorparcela.AsCurrency * (carcarpercdesc.AsFloat / 100);

    rfi.Post;

    // atualiza o valor total do titulo
    tit.Edit;
    tittitvalor.AsCurrency := tittitvalor.AsCurrency + rfirfivalor.AsCurrency;
    tit.Post;

    // registro
    mfi.Open;
    mfi.Append;
    mfirfichave.AsInteger := self.rfirfichave.AsInteger;
    mfitmfcodigo.AsInteger := tmfAReceber;
    mfimoecodigo.AsInteger := titmoecodigo.AsInteger;;
    mfimfivalor.AsFloat := rfirfivalor.AsFloat;
    mfimfidata.AsFloat := rfirfivencimento.AsFloat;
    mfimfihistorico.AsString := '';
    mfimfivalorori.AsFloat := rfirfivalor.AsFloat;
    mfimfiparcela.AsInteger := 0;
    mfiflacodigo.AsInteger := Acesso.Filial;
    mfi.Post;

    cri.Append;
    cricavchave.AsInteger := cavcavchave.AsInteger;
    crirfichave.AsInteger := rfirfichave.AsInteger;
    cri.Post;

  end;

end;

procedure Tffca.ProcessaContratos;
begin
  cav.First;
  mostra.Max := cav.RecordCount;
  Application.ProcessMessages;
  while not cav.Eof do
  begin
    mostra.Position := mostra.Position + 1;
    Application.ProcessMessages;

    cti.close;
    cti.FilterSQL := 'cavchave=' + cavcavchave.AsString;
    cti.Open;

    if cti.IsEmpty then
    begin
      GeraMovimentoFinanceiro;
    end;

    cav.Next;
  end;
  tmFechar.Enabled := true;
end;

procedure Tffca.CarregaContratos(pCavChave: string);
begin
  cav.close;
  if pCavChave <> '' then
    cav.FilterSQL := 'cavchave=' + pCavChave;
  cav.Open;

end;

procedure Tffca.AtribuiConexoes;
var
  i: integer;
begin
  try
    for i := 0 to self.ComponentCount - 1 do
      if self.Components[i] is TUniQuery then
        (self.Components[i] as TUniQuery).Connection := zcone;
  finally
  end;
end;

end.
