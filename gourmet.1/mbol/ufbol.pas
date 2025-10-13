unit ufbol;

interface

uses
  MIdasLib, Winapi.Windows, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls,
  Vcl.ExtCtrls, Uni, ACBrBoleto, ACBrBoletoFCFR, ACBrBase, ufuncoes, Data.DB,
  MemDS, DBAccess, System.DateUtils, ACBrMail, System.IOUtils, System.Math, UPegaBase, Datasnap.DBClient, IdComponent, IdMessage, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP, DASQLMonitor, UniSQLMonitor, IdAttachment, IdAttachmentFile, Vcl.StdCtrls, Vcl.DBCtrls,
  ACBrUtil;

type
  Tfbol = class(TForm)
    ACBrBoleto: TACBrBoleto;
    PlTitulo: TPanel;
    PnlAguarde: TPanel;
    plMostrar: TPanel;
    mostra: TProgressBar;
    bol: TUniQuery;
    geb: TUniQuery;
    gbr: TUniQuery;
    gebgebcodigo: TIntegerField;
    gebcarcodigo: TIntegerField;
    gbrgbrcodigo: TIntegerField;
    gbrgebcodigo: TIntegerField;
    gbrrfichave: TIntegerField;
    bolbolchave: TIntegerField;
    bolgebcodigo: TIntegerField;
    bolsblcodigo: TIntegerField;
    bolrfichave: TIntegerField;
    bolbolnossonumero: TStringField;
    bolbolvalorabatimento: TFloatField;
    bolbolvalormorajuros: TFloatField;
    bolbolvalordesconto: TFloatField;
    bolboldatamorajuros: TDateField;
    bolboldatadesconto: TDateField;
    bolboldataabatimento: TDateField;
    bolboldataprotesto: TDateField;
    bolbolpercentualmulta: TFloatField;
    car: TUniQuery;
    carcarcodigo: TIntegerField;
    carcarconvenio: TStringField;
    carcarobs1: TStringField;
    carcarobs2: TStringField;
    carcarobs3: TStringField;
    carcaraceite: TIntegerField;
    carcardescontado: TIntegerField;
    carcarregistrado: TIntegerField;
    carcarcontrato: TStringField;
    carcardiasmulta: TIntegerField;
    carcarpercmulta: TFloatField;
    carcardiasdesc: TIntegerField;
    carcarpercdesc: TFloatField;
    carcarpercmorames: TFloatField;
    carcarserienossonum: TIntegerField;
    qConsulta: TUniQuery;
    AtualCarRfi: TUniQuery;
    carbcocodigo: TStringField;
    cfg: TUniQuery;
    cfgetdcodigo: TIntegerField;
    cfgetdidentificacao: TStringField;
    cfgetdapelido: TStringField;
    cfgetddoc1: TStringField;
    cfgedrrua: TStringField;
    cfgedrnumero: TStringField;
    cfgedrcxpostal: TStringField;
    cfgedrcomple: TStringField;
    cfgedrbairro: TStringField;
    cfgedrcep: TStringField;
    cfgetftelefone: TStringField;
    cfgcddnome: TStringField;
    cfgufssigla: TStringField;
    carctaagencia: TStringField;
    carctaagenciadig: TStringField;
    carctanumero: TStringField;
    carctanumerodig: TStringField;
    carcarmodalidade: TStringField;
    carcarcodigocedente: TStringField;
    cfgcfgdiretorioboletos: TStringField;
    BolRfi: TUniQuery;
    gbrrfipercmulta: TFloatField;
    gbrrfimoradia: TFloatField;
    BolRfirfichave: TIntegerField;
    BolRfietdcodigo: TIntegerField;
    BolRfietdidentificacao: TStringField;
    BolRfietddoc1: TStringField;
    BolRfiedrrua: TStringField;
    BolRfiedrnumero: TStringField;
    BolRfiedrbairro: TStringField;
    BolRficddnome: TStringField;
    BolRfiufssigla: TStringField;
    BolRfiedrcep: TStringField;
    BolRfirfinumero: TStringField;
    BolRfirfivencimento: TDateField;
    BolRfirfivalor: TFloatField;
    BolRfibolpercentualmulta: TFloatField;
    BolRfibolvalormorajuros: TFloatField;
    BolRfiboldatamorajuros: TDateField;
    BolRfibolvalordesconto: TFloatField;
    BolRfiboldatadesconto: TDateField;
    BolRfibolvalorabatimento: TFloatField;
    BolRfiboldataabatimento: TDateField;
    BolRfiboldataprotesto: TDateField;
    carcarnumerocar: TStringField;
    gbrbolchave: TIntegerField;
    BolRfirfiemissao: TDateField;
    BolRfitpecodigo: TIntegerField;
    bolbolseqnossonum: TIntegerField;
    qNossoNum: TUniQuery;
    BolRfibolseqnossonum: TIntegerField;
    brm: TUniQuery;
    qNumRemessa: TUniQuery;
    rmb: TUniQuery;
    rmbrmbcodigo: TIntegerField;
    rmbcarcodigo: TIntegerField;
    rmbrmbnumero: TIntegerField;
    brmbolchave: TIntegerField;
    TimerProcessa: TTimer;
    BolRfibolvenda: TStringField;
    ACBrMail: TACBrMail;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    etdeteemail: TStringField;
    gbrtitcodigo: TIntegerField;
    leb: TUniQuery;
    leblebcodigo: TIntegerField;
    lebgebcodigo: TIntegerField;
    lebtitcodigo: TIntegerField;
    lebclbcodigo: TIntegerField;
    leblebstatus: TStringField;
    leblebmensagem: TStringField;
    tteb: TUniQuery;
    ttebtitcodigo: TIntegerField;
    ttebetdcodigo: TIntegerField;
    cfgcfgemailnfe: TStringField;
    cfgcfgemailservidornfe: TStringField;
    cfgcfgemailsenhanfe: TStringField;
    cfgcfgmailportnfe: TStringField;
    cfgcfgemailusatls: TIntegerField;
    cfgDataAtual: TDateTimeField;
    gbrrfivencimento: TDateField;
    BolRfibolemissao: TDateField;
    bolbolemissao: TDateField;
    consulta: TUniQuery;
    BolRfirfisaldogeral: TFloatField;
    ClientDataSet1: TClientDataSet;
    SMTP: TIdSMTP;
    IO_OpenSSL: TIdSSLIOHandlerSocketOpenSSL;
    IdMessage1: TIdMessage;
    cfgcfgcodigo: TIntegerField;
    cfgcfgetdempresa: TIntegerField;
    cfgcfgprouso: TIntegerField;
    cfgcfgtoeusofora: TIntegerField;
    cfgcfgtoeusointe: TIntegerField;
    cfgcfgtoecuffora: TIntegerField;
    cfgcfgtoecufinte: TIntegerField;
    cfgcfgviasnfe: TIntegerField;
    cfgcfgnumeronfe: TIntegerField;
    cfgcfgserienfe: TStringField;
    cfgcfgnumeronfce: TIntegerField;
    cfgcfgserienfce: TStringField;
    cfgcfgobs1: TIntegerField;
    cfgcfgobs2: TIntegerField;
    cfgcfgobs3: TIntegerField;
    cfgcfgobs4: TIntegerField;
    cfgcfgdescrinfe: TIntegerField;
    cfgcfgnumecertif: TStringField;
    cfgcfgsenhacertificado: TStringField;
    cfgcfgmodonfe: TIntegerField;
    cfgcrtcodigo: TIntegerField;
    cfgcfgcstterceiros: TStringField;
    cfgufscodigo: TStringField;
    cfgcddcodigo: TStringField;
    cfgedrinscest: TStringField;
    cfgctdboxedominio: TStringField;
    cfgcfgmensagempdv: TStringField;
    cfgcfgtrmimpfis1: TIntegerField;
    cfgcfgtrmimpfis2: TIntegerField;
    cfgcfgtrmtef1: TIntegerField;
    cfgcfgtrmtef2: TIntegerField;
    cfgcfgimpnfe1: TIntegerField;
    cfgcfgimpnfe2: TIntegerField;
    cfgcfgimpnfc1: TIntegerField;
    cfgcfgimpnfc2: TIntegerField;
    cfgcfgimpnfc3: TIntegerField;
    cfgcfgservarqnfes: TStringField;
    cfgcfgusanfc: TIntegerField;
    qEteMes: TUniQuery;
    qEteMesetecodigo: TIntegerField;
    qEteMeseteemail: TStringField;
    qEteMesetdidentificacao: TStringField;
    plinfo: TPanel;
    Dcfg: TDataSource;
    cfgdiretorioboletos: TDBText;
    BolRfirfihistorico: TStringField;
    ACBrBoletoFCFR: TACBrBoletoFCFR;
    cfgcfglayout: TIntegerField;
    eca: TUniQuery;
    ecaecachave: TIntegerField;
    ecaetdcodigo: TIntegerField;
    ecameccodigo: TStringField;
    ecaecadiasparaprotesto: TIntegerField;
    ecaecadiasmulta: TIntegerField;
    ecaecapercmulta: TFloatField;
    ecaecadiasdesc: TIntegerField;
    ecaecapercdesc: TFloatField;
    ecaecapercmorames: TFloatField;
    ecaecadiasjuros: TIntegerField;
    carcardefinicaoindividual: TIntegerField;
    bolboldataamulta: TDateField;
    carcardiasparaprotesto: TIntegerField;
    carmeccodigo: TStringField;
    bolnumero: TUniQuery;
    regeca: TUniQuery;
    regecaecachave: TIntegerField;
    regecaetdcodigo: TIntegerField;
    regecameccodigo: TStringField;
    regecaecadiasjuros: TIntegerField;
    regecaecadiasparaprotesto: TIntegerField;
    regecaecadiasmulta: TIntegerField;
    regecaecapercmulta: TFloatField;
    regecaecadiasdesc: TIntegerField;
    regecaecapercdesc: TFloatField;
    regecaecapercmorames: TFloatField;
    carcarlayout: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure TimerProcessaTimer(Sender: TObject);
    procedure ACBrMailAfterMailProcess(Sender: TObject);
    procedure ACBrMailMailException(const AMail: TACBrMail; const E: Exception; var ThrowIt: Boolean);
  private
    { Private declarations }

    Titulo: TACBrTitulo;

    Fzcone: TUniConnection;
    FAcesso: TAcesso;
    FBolChave: Integer;
    FGebCodigo: Integer;
    FDiretorioBase: String;
    FArquivoFastReport: String;
    FDiretorioLogo: String;
    FCarteira: Integer;
    FDiretorioRemessa: String;
    FBancoEspecDoc: String;
    FBancoLocalPag: String;
    FRmbCodigo: Integer;
    FRotina: TRotinasBoletos;
    FUsuario: Integer;
    procedure SetBolChave(const Value: Integer);
    procedure SetGebCodigo(const Value: Integer);
    procedure Setzcone(const Value: TUniConnection);

    procedure AdicionaBoletoLista(vBolChave: Integer);
    procedure AjustaDiretorios;
    procedure DefineBanco;
    procedure DefineCedente;
    procedure EnviarEmail;
    procedure GerarBoletos;
    procedure ReGerarRemessa;
    procedure GerarRemessa;
    procedure ImprimirBoleto;
    procedure ImprimirGrupoBoletos;
    procedure RegistraBoletos;
    function FormataNossoNum(vSeqNossoNum: Integer): String;
    procedure SalvarLogErro(eMessage, eStackTrace: String);

    (* Envio de E-mail *)
    procedure DefineParametrosEmail;
    procedure RegistraLogEmail(pTitulo: Integer; pStatus, pMensagem: String);
    function ValidaEmail(pEtdCodigo: Integer; var EnderecoEmail: String): Boolean;

    procedure SetArquivoFastReport(const Value: String);
    procedure SetDiretorioBase(const Value: String);
    procedure SetDiretorioLogo(const Value: String);
    procedure SetCarteira(const Value: Integer);
    procedure SetDiretorioRemessa(const Value: String);
    procedure SetRmbCodigo(const Value: Integer);
    procedure SetRotina(const Value: TRotinasBoletos);
    procedure SetAcesso(const Value: TAcesso);
    procedure Inicializar;
    function EnviaEmail(destino, copias, texto, assunto, xml, pdf, nome_cliente, nome_empresa: String): Boolean;
    function AjustarNossoNumero: Boolean;
    function EnviaEmailACBR(destino, copias, texto, assunto, xml, pdf, nome_cliente, nome_empresa: String): Boolean;

  published
    property zcone: TUniConnection read Fzcone write Setzcone;
    property GebCodigo: Integer read FGebCodigo write SetGebCodigo;
    property BolChave: Integer read FBolChave write SetBolChave;
    property Carteira: Integer read FCarteira write SetCarteira;
    property RmbCodigo: Integer read FRmbCodigo write SetRmbCodigo;
    property Rotina: TRotinasBoletos read FRotina write SetRotina;
    property Acesso: TAcesso read FAcesso write SetAcesso;

    (* Bancos *)
    property BancoEspecDoc: String read FBancoEspecDoc write FBancoEspecDoc;
    property BancoLocalPag: String read FBancoLocalPag write FBancoLocalPag;

    (* Configurações *)
    property ArquivoFastReport: String write SetArquivoFastReport;
    property DiretorioBase: String read FDiretorioBase write SetDiretorioBase;
    property DiretorioLogo: String read FDiretorioLogo write SetDiretorioLogo;
    property DiretorioRemessa: String read FDiretorioRemessa write SetDiretorioRemessa;

    (* Envio de E-mail *)
    property Usuario: Integer read FUsuario write FUsuario;
  public
    { Public declarations }
  end;

var
  fbol: Tfbol;

const
  EmailConfirmado = 'C';
  EmailComFalha = 'F';

implementation

uses
  ACBrBoletoConversao;

{$R *.dfm}

function ModuloBoleto(AOwner: TComponent; conexao: TUniConnection; vRotina: TRotinasBoletos; Acesso: TAcesso; vGebCodigo: Integer = 0; vBolChave: Integer = 0;
  vRmbCodigo: Integer = 0): Boolean;
begin
  (*
    ** Verifica se tela já está carregada pela aplicação e bloqueia a abertura **
    *** Corrige problema onde o usuário pode pressionar rapidamente tecla de atalho repetidas vezes ***
  *)
  if not(AOwner.FindComponent('fbol') = nil) then
    Exit;

  fbol := Tfbol.Create(AOwner);
  try
    fbol.zcone := conexao;
    fbol.cfg.ParamByName('flacodigo').AsInteger := Acesso.Filial;
    fbol.cfg.Open;

    if fbol.cfg.IsEmpty then
    begin
      fbol.cfg.Close;
      fbol.cfg.ParamByName('flacodigo').AsInteger := 1;
      fbol.cfg.Open;

    end;

    fbol.GebCodigo := vGebCodigo;
    fbol.Acesso := Acesso;
    fbol.BolChave := vBolChave;
    fbol.RmbCodigo := vRmbCodigo;

    fbol.Rotina := vRotina;

    fbol.ShowModal;
  finally
    fbol.Free;
  end;
end;

exports ModuloBoleto;

function ModuloBoletoEmail(AOwner: TComponent; pConexao: TUniConnection; Acesso: TAcesso; pGebCodigo, pUsuario: Integer): Boolean;
begin
  (*
    ** Verifica se tela já está carregada pela aplicação e bloqueia a abertura **
    *** Corrige problema onde o usuário pode pressionar rapidamente tecla de atalho repetidas vezes ***
  *)
  if not(AOwner.FindComponent('fbol') = nil) then
    Exit;

  fbol := Tfbol.Create(AOwner);
  try
    fbol.zcone := pConexao;
    fbol.cfg.ParamByName('flacodigo').AsInteger := Acesso.Filial;

    fbol.cfg.Open;

    if fbol.cfg.IsEmpty then
    begin
      fbol.cfg.Close;
      fbol.cfg.ParamByName('flacodigo').AsInteger := 1;
      fbol.cfg.Open;

    end;

    fbol.Acesso := Acesso;

    fbol.GebCodigo := pGebCodigo;
    fbol.Usuario := pUsuario;
    fbol.Rotina := rblEnvioEmail;

    fbol.ShowModal;
  finally
    FreeAndNil(fbol);
  end;
end;

exports ModuloBoletoEmail;

{ Tfbol }

procedure Tfbol.ACBrMailAfterMailProcess(Sender: TObject);
var
  vlTitulo: Integer;
begin
  vlTitulo := StrToInt(SomenteNumeros(TACBrMail(Sender).Subject));

  RegistraLogEmail(vlTitulo, EmailConfirmado, 'E-mail enviado com sucesso.');
end;

procedure Tfbol.ACBrMailMailException(const AMail: TACBrMail; const E: Exception; var ThrowIt: Boolean);
var
  vlTitulo: Integer;
begin
  vlTitulo := StrToInt(SomenteNumeros(AMail.Subject));

  RegistraLogEmail(vlTitulo, EmailComFalha, E.Message);

  Application.MessageBox(PChar('Não foi possível concluir o envio de e-mail.' + sLineBreak + 'Mensagem: ' + E.Message), 'Falha no envio de e-mail', MB_ICONERROR + MB_OK);

  ThrowIt := False;
  ModalResult := mrCancel;
end;

procedure Tfbol.AdicionaBoletoLista(vBolChave: Integer);
begin
  BolRfi.Close;
  BolRfi.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  BolRfi.ParamByName('bolchave').AsInteger := vBolChave;
  BolRfi.Open;

  if BolRfi.IsEmpty then
  begin
    BolRfi.Close;
    BolRfi.ParamByName('flacodigo').AsInteger := 1;
    BolRfi.ParamByName('bolchave').AsInteger := vBolChave;
    BolRfi.Open;

  end;

  Titulo := ACBrBoleto.CriarTituloNaLista;

  Titulo.DataDocumento := BolRfibolemissao.AsFloat; // bolbolemissao.AsDateTime;
  // BolRfibolemissao.AsFloat;
  Titulo.NumeroDocumento := BolRfirfinumero.AsString;
  Titulo.Vencimento := BolRfirfivencimento.AsFloat;

  Titulo.TipoImpressao := tipNormal;

  Titulo.EspecieDoc := BancoEspecDoc;
  Titulo.LocalPagamento := BancoLocalPag;

  Titulo.Aceite := atNao;
  if carcaraceite.AsInteger = 1 then
    Titulo.Aceite := atSim;

  Titulo.Carteira := carcarnumerocar.AsString;
  Titulo.NossoNumero := FormataNossoNum(BolRfibolseqnossonum.AsInteger);

  Titulo.ValorDocumento := BolRfirfisaldogeral.AsFloat;

  Titulo.PercentualMulta := StrToCurrDef(BolRfibolpercentualmulta.AsString, 0);

  Titulo.ValorMoraJuros := StrToCurrDef(BolRfibolvalormorajuros.AsString, 0);

  if BolRfiboldatamorajuros.AsString <> '' then
    Titulo.DataMoraJuros := StrToDateDef(BolRfiboldatamorajuros.AsString, 0)
  else
    Titulo.DataMoraJuros := IncDay(BolRfirfivencimento.AsFloat, 1);

  Titulo.ValorDesconto := StrToCurrDef(BolRfibolvalordesconto.AsString, 0);
  Titulo.DataDesconto := StrToDateDef(BolRfiboldatadesconto.AsString, 0);

  Titulo.ValorAbatimento := StrToCurrDef(BolRfibolvalorabatimento.AsString, 0);
  Titulo.DataAbatimento := StrToDateDef(BolRfiboldataabatimento.AsString, 0);

  Titulo.DataProtesto := StrToDateDef(BolRfiboldataprotesto.AsString, 0);

  if carcarobs1.AsString <> '' then
    Titulo.Mensagem.Add(carcarobs1.AsString);

  if carcarobs2.AsString <> '' then
    Titulo.Mensagem.Add(carcarobs2.AsString);

  if carcarobs2.AsString <> '' then
    Titulo.Mensagem.Add(carcarobs3.AsString);

  { if BolRfibolvenda.AsString <> '' then
    Titulo.Mensagem.Add(BolRfibolvenda.AsString); }

  if BolRfirfihistorico.AsString <> '' then
    Titulo.Mensagem.Add(BolRfirfihistorico.AsString);

  Titulo.OcorrenciaOriginal.Tipo := toRemessaRegistrar;

  Titulo.Sacado.NomeSacado := UpperSemAcento(BolRfietdidentificacao.AsString);

  Titulo.Sacado.CNPJCPF := BolRfietddoc1.AsString;
  // SomenteNumeros(BolRfietddoc1.AsString);
  case BolRfitpecodigo.AsInteger of
    tpeFisica:
      Titulo.Sacado.Pessoa := pFisica;
    tpeJuridica:
      Titulo.Sacado.Pessoa := pJuridica;
  end;

  Titulo.Sacado.Logradouro := UpperSemAcento(BolRfiedrrua.AsString);
  Titulo.Sacado.Numero := UpperSemAcento(BolRfiedrnumero.AsString);
  Titulo.Sacado.Bairro := UpperSemAcento(BolRfiedrbairro.AsString);
  Titulo.Sacado.Cidade := UpperSemAcento(BolRficddnome.AsString);
  Titulo.Sacado.UF := UpperSemAcento(BolRfiufssigla.AsString);
  Titulo.Sacado.CEP := SomenteNumeros(BolRfiedrcep.AsString);
end;

procedure Tfbol.AjustaDiretorios;
begin
  DiretorioBase := cfgcfgdiretorioboletos.AsString + '\Boletos\';

  if not DirectoryExists(DiretorioBase) then
    raise Exception.Create('Diretório base inválido. Verifique nas configurações.');

  ArquivoFastReport := DiretorioBase + 'Report\BoletoNovo.fr3';
  DiretorioLogo := DiretorioBase + 'Logos';

  if not DirectoryExists(DiretorioBase + 'Remessa\' + ACBrBoleto.Banco.Numero.ToString + '\' + FormatDateTime('yyyy', Now)) then
    ForceDirectories(DiretorioBase + 'Remessa\' + ACBrBoleto.Banco.Numero.ToString + '\' + FormatDateTime('yyyy', Now));

  DiretorioRemessa := DiretorioBase + 'Remessa\' + ACBrBoleto.Banco.Numero.ToString + '\' + FormatDateTime('yyyy', Now);
end;

procedure Tfbol.DefineBanco;
var
  vlBcoCodigo: Integer;
begin
  vlBcoCodigo := carbcocodigo.AsInteger;

  BancoEspecDoc := 'DM';
  BancoLocalPag := 'PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO.';

  case vlBcoCodigo of
    1:
      ACBrBoleto.Banco.TipoCobranca := cobBancoDoBrasil;
    8, 33, 353:
      ACBrBoleto.Banco.TipoCobranca := cobSantander;
    104:
      ACBrBoleto.Banco.TipoCobranca := cobCaixaEconomica;
    237:
      ACBrBoleto.Banco.TipoCobranca := cobBradesco;
    341:
      begin
        ACBrBoleto.Banco.TipoCobranca := cobItau;
        BancoLocalPag := 'ATE O VENCIMENTO PAGUE PREFERENCIALMENTE NO ITAU' + sLineBreak + 'APOS O VENCIMENTO PAGUE SOMENTE NO ITAU';
      end;
    748:
      begin
        ACBrBoleto.Banco.TipoCobranca := cobSicred;
        BancoLocalPag := 'PAGÁVEL PREFERENCIALMENTE NAS COOPERATIVAS DE CRÉDITO DO SICREDI';
      end;
    399:
      ACBrBoleto.Banco.TipoCobranca := cobHSBC;
  end;
end;

procedure Tfbol.DefineCedente;
begin
  ACBrBoleto.Cedente.Agencia := carctaagencia.AsString;
  ACBrBoleto.Cedente.AgenciaDigito := carctaagenciadig.AsString;
  ACBrBoleto.Cedente.Conta := carctanumero.AsString;
  ACBrBoleto.Cedente.ContaDigito := carctanumerodig.AsString;

  ACBrBoleto.Cedente.CodigoCedente := carcarcodigocedente.AsString;
  ACBrBoleto.Cedente.Modalidade := carcarmodalidade.AsString;
  ACBrBoleto.Cedente.Convenio := carcarconvenio.AsString;

  ACBrBoleto.Cedente.Nome := UpperSemAcento(cfgetdidentificacao.AsString);
  ACBrBoleto.Cedente.CNPJCPF := cfgetddoc1.AsString;
  ACBrBoleto.Cedente.Logradouro := UpperSemAcento(cfgedrrua.AsString);
  ACBrBoleto.Cedente.NumeroRes := cfgedrnumero.AsString;
  ACBrBoleto.Cedente.Bairro := UpperSemAcento(cfgedrbairro.AsString);
  ACBrBoleto.Cedente.Cidade := UpperSemAcento(cfgcddnome.AsString);
  ACBrBoleto.Cedente.UF := UpperSemAcento(cfgufssigla.AsString);
  ACBrBoleto.Cedente.Telefone := cfgetftelefone.AsString;
end;

procedure Tfbol.DefineParametrosEmail;
begin
  { ACBrMail.From := cfgcfgemailnfe.AsString;
    ACBrMail.FromName := cfgetdidentificacao.AsString;
    ACBrMail.Host := cfgcfgemailservidornfe.AsString;
    ACBrMail.Password := cfgcfgemailsenhanfe.AsString;
    ACBrMail.Port := cfgcfgmailportnfe.AsString;
    ACBrMail.Username := cfgcfgemailnfe.AsString;


    if cfgcfgemailusatls.AsInteger > 0 then
    ACBrMail.SetTLS := True; }
end;

procedure Tfbol.EnviarEmail;
var
  vlMensagem: TStringList;
  vlEnderecoEmail: String;
  vlDirEmail: String;
  vlNomeArquivo: String;
  Str: String;
begin
  if not tteb.Active then
    tteb.Open;

  if not leb.Active then
    leb.Open;

  mostra.Max := tteb.RecordCount + 1;
  mostra.Position := 0;

  (* Define as configurações de E-mail *)
  DefineParametrosEmail;

  vlMensagem := TStringList.Create;
  vlMensagem.Add('Envio de boletos da empresa ' + cfgetdidentificacao.AsString);

  vlDirEmail := DiretorioBase + 'E-mail - ' + GebCodigo.ToString + ' - ' + Usuario.ToString;
  ForceDirectories(vlDirEmail);

  mostra.StepIt;
  Application.ProcessMessages;

  Inicializar;

  while not tteb.Eof do
  begin
    try
      (* Valida e-mail do cliente. *)
      if not(ValidaEmail(ttebetdcodigo.AsInteger, vlEnderecoEmail)) then
        raise Exception.Create('Endereço de e-mail inválido.');

      (* Limpa lista para poder adicionar a sequência de boletos do próximo Título *)
      ACBrBoleto.ListadeBoletos.Clear;

      gbr.Filter := 'titcodigo = ' + ttebtitcodigo.AsString;
      gbr.Filtered := True;
      gbr.Params[0].AsInteger := GebCodigo;
      gbr.Params[1].AsInteger := Acesso.Filial;
      gbr.Open;

      while not gbr.Eof do
      begin
        AdicionaBoletoLista(gbrbolchave.AsInteger);
        gbr.Next;
      end;

      vlNomeArquivo := 'Email gerado eletronicamente:' + #13 + #13 + #13 + 'Segue, em anexo, boleto(s) referente título Nr.: ' + ttebtitcodigo.AsString + #13 + #13 +
        'Qualquer duvida, estamos a disposição.' + #13 + #13 + 'Atenciosamente.' + #13 + #13 + cfgetdapelido.AsString + #13 + #13 + cfgetftelefone.AsString;

      ACBrBoleto.ACBrBoletoFC.NomeArquivo := vlDirEmail + '\' + ttebtitcodigo.AsString + '.pdf';
      ACBrBoleto.GerarPDF;

      EnviaEmail(vlEnderecoEmail, '', vlNomeArquivo, 'Boleto gerado por ' + cfgetdapelido.AsString, vlDirEmail + '\' + ttebtitcodigo.AsString + '.pdf', '', '', '');

      ShowMessage('Email(s) enviado(s) com sucesso !');
    except
      on E: Exception do
        if ModalResult = 0 then
          RegistraLogEmail(ttebtitcodigo.AsInteger, EmailComFalha, E.Message);
    end;

    if ModalResult > 0 then
      tteb.Last
    else
      tteb.Next;
  end;

  (* Remove os arquivos e as pastas dos PDFs *)
  for Str in TDirectory.GetFiles(vlDirEmail, '*.*', TSearchOption.soAllDirectories) do
    TFile.Delete(Str);

  RemoveDir(vlDirEmail);

end;

function Tfbol.FormataNossoNum(vSeqNossoNum: Integer): String;
var
  vlFormatacao: String;
const
  clNossoNumTam08 = '00000000';
  clNossoNumTam09 = '000000000';
  clNossoNumTam10 = '0000000000';
begin
  case ACBrBoleto.Banco.TipoCobranca of
    cobBancoDoBrasil:
      if Length(carcarconvenio.AsString) = 7 then
        vlFormatacao := clNossoNumTam10
      else
        vlFormatacao := clNossoNumTam08;
    cobBradesco:
      vlFormatacao := clNossoNumTam09;
    cobItau, cobSicred:
      vlFormatacao := clNossoNumTam08;

    (* Não definido corretamente - Ainda sem documentação do banco - Gabriel - 03/02/2015 *)
    cobHSBC, cobSantander, cobCaixaEconomica:
      vlFormatacao := clNossoNumTam08;
  end;

  Result := FormatFloat(vlFormatacao, vSeqNossoNum);
end;

procedure Tfbol.FormShow(Sender: TObject);
begin

  Self.Height := 270;
  Self.Width := 400;

  TimerProcessa.Enabled := True;
end;

procedure Tfbol.GerarBoletos;
begin

  if cfgcfglayout.AsInteger = 1 then
    ACBrBoletoFCFR.LayOut := lpadrao
  else if cfgcfglayout.AsInteger = 2 then
    ACBrBoletoFCFR.LayOut := lCarne
  else
    ACBrBoletoFCFR.LayOut := lpadrao;

  RegistraBoletos;

  ACBrBoleto.Imprimir;
end;

procedure Tfbol.ReGerarRemessa;
var
  vlNumeroRemessa: Integer;
begin
  ACBrBoleto.ListadeBoletos.Clear;

  brm.Close;
  brm.Params[0].AsInteger := RmbCodigo;
  brm.Open;

  while not brm.Eof do
  begin
    AdicionaBoletoLista(brmbolchave.AsInteger);
    brm.Next;
  end;
  qConsulta.Close;
  qConsulta.SQL.Text := 'SELECT rmbnumero FROM rmb where rmbcodigo=' + Inttostr(RmbCodigo);
  qConsulta.Open;

  vlNumeroRemessa := qConsulta.Fields[0].AsInteger;

  rmb.Edit;
  rmbrmbnumero.AsInteger := vlNumeroRemessa;
  rmb.Post;

  if carcarlayout.AsInteger = 240 then
    ACBrBoleto.LayoutRemessa := c240
  else if carcarlayout.AsInteger = 400 then
    ACBrBoleto.LayoutRemessa := c400;

  ACBrBoleto.GerarRemessa(vlNumeroRemessa);

  qConsulta.Close;
  qConsulta.SQL.Text := 'UPDATE bol JOIN brm ON bol.bolchave = brm.bolchave ';
  qConsulta.SQL.Add('SET bol.sblcodigo = 3 -- Remessa Gerada ');
  qConsulta.SQL.Add('WHERE brm.rmbcodigo = ' + Inttostr(RmbCodigo));
  qConsulta.ExecSQL;
end;

procedure Tfbol.GerarRemessa;
var
  vlNumeroRemessa: Integer;
begin
  ACBrBoleto.ListadeBoletos.Clear;

  brm.Close;
  brm.Params[0].AsInteger := RmbCodigo;
  brm.Open;

  while not brm.Eof do
  begin
    AdicionaBoletoLista(brmbolchave.AsInteger);
    brm.Next;
  end;

  qNumRemessa.Params[0].AsString := carbcocodigo.AsString;
  qNumRemessa.ExecSQL;

  vlNumeroRemessa := qNumRemessa.Fields[0].AsInteger;

  rmb.Edit;
  rmbrmbnumero.AsInteger := vlNumeroRemessa;
  rmb.Post;

  if carcarlayout.AsInteger = 240 then
    ACBrBoleto.LayoutRemessa := c240
  else if carcarlayout.AsInteger = 400 then
    ACBrBoleto.LayoutRemessa := c400;

  ACBrBoleto.GerarRemessa(vlNumeroRemessa);

  qConsulta.Close;
  qConsulta.SQL.Text := 'UPDATE bol JOIN brm ON bol.bolchave = brm.bolchave ';
  qConsulta.SQL.Add('SET bol.sblcodigo = 3 -- Remessa Gerada ');
  qConsulta.SQL.Add('WHERE brm.rmbcodigo = ' + Inttostr(RmbCodigo));
  qConsulta.ExecSQL;
end;

procedure Tfbol.ImprimirBoleto;
begin
  ACBrBoleto.ListadeBoletos.Clear;

  AdicionaBoletoLista(BolChave);

  if cfgcfglayout.AsInteger = 1 then
    ACBrBoletoFCFR.LayOut := lpadrao
  else if cfgcfglayout.AsInteger = 2 then
    ACBrBoletoFCFR.LayOut := lCarne
  else
    ACBrBoletoFCFR.LayOut := lpadrao;

  ACBrBoleto.Imprimir;
end;

procedure Tfbol.ImprimirGrupoBoletos;
begin
  ACBrBoleto.ListadeBoletos.Clear;

  gbr.Close;
  gbr.Params[0].AsInteger := GebCodigo;
  gbr.Params[1].AsInteger := Acesso.Filial;
  gbr.Open;

  mostra.Max := gbr.RecordCount;
  while not gbr.Eof do
  begin
    mostra.Position := mostra.Position + 1;
    AdicionaBoletoLista(gbrbolchave.AsInteger);
    gbr.Next;
  end;

  ACBrBoleto.Imprimir;
end;

procedure Tfbol.RegistraBoletos;
var
  vlSeqNossoNum: Integer;
begin
  AtualCarRfi.Params[0].AsInteger := GebCodigo;
  AtualCarRfi.ExecSQL;

  if not bol.Active then
    bol.Open;

  gbr.Close;
  gbr.Params[0].AsInteger := GebCodigo;
  gbr.Params[1].AsInteger := Acesso.Filial;
  gbr.Open;

  qNossoNum.Params[0].AsString := carbcocodigo.AsString;
  qNossoNum.Params[1].AsInteger := gbr.RecordCount;
  qNossoNum.ExecSQL;

  vlSeqNossoNum := qNossoNum.Fields[0].AsInteger;

  mostra.Max := gbr.RecordCount;

  while not gbr.Eof do
  begin
    mostra.Position := mostra.Position + 1;

    consulta.Close;
    consulta.SQL.Text := 'select rfichave,bolchave from bol where rfichave=' + gbrrfichave.AsString;
    consulta.Open;

    if consulta.IsEmpty then
      bol.Append
    else
    begin
      bol.Close;
      bol.Params[0].AsInteger := consulta.Fields[1].AsInteger;
      bol.Open;
      bol.Edit;
    end;

    if carcardefinicaoindividual.AsInteger = 1 then
    begin
      consulta.Close;
      consulta.SQL.Text := 'select etdcodigo, rfivalorparcela from rfi where rfichave=' + gbrrfichave.AsString;
      consulta.Open;

      eca.Close;
      eca.ParamByName('etdcodigo').AsInteger := consulta.FieldByName('etdcodigo').AsInteger;
      eca.Open;

      if eca.IsEmpty then
      begin

        regeca.Open;
        regeca.Append;
        regecaetdcodigo.AsInteger := consulta.FieldByName('etdcodigo').AsInteger;
        regecameccodigo.AsString := '00';
        regecaecadiasjuros.AsInteger := 1;
        regecaecadiasparaprotesto.AsInteger := carcardiasparaprotesto.AsInteger;
        regecaecadiasmulta.AsInteger := carcardiasmulta.AsInteger;
        regecaecapercmulta.AsFloat := carcarpercmulta.AsFloat;
        regecaecadiasdesc.AsInteger := carcardiasdesc.AsInteger;
        regecaecapercdesc.AsFloat := carcardiasdesc.AsFloat;
        regecaecapercmorames.AsFloat := carcarpercmorames.AsFloat;
        regeca.Post;

        eca.Close;
        eca.ParamByName('etdcodigo').AsInteger := consulta.FieldByName('etdcodigo').AsInteger;
        eca.Open;

      end;

      bolbolpercentualmulta.AsFloat := ecaecapercmulta.AsFloat;

      bolbolvalormorajuros.AsFloat := consulta.FieldByName('rfivalorparcela').AsFloat * ((ecaecapercmorames.AsFloat / 100) / 30);
      bolboldatamorajuros.AsFloat := IncDay(gbrrfivencimento.AsFloat, IfThen(ecaecadiasjuros.AsInteger = 0, 1, ecaecadiasjuros.AsInteger));

      if ecaecapercdesc.AsFloat > 0 then
      begin
        bolboldatadesconto.AsFloat := IncDay(gbrrfivencimento.AsFloat, IfThen(ecaecadiasdesc.AsInteger = 0, 1, ecaecadiasdesc.AsInteger));
        bolbolvalordesconto.AsFloat := consulta.FieldByName('rfivalorparcela').AsFloat * ((ecaecapercdesc.AsFloat / 100) / 30);;
      end
      else
        bolbolvalordesconto.AsFloat := 0;

      bolbolvalorabatimento.AsFloat := 0;

      if ecaecadiasparaprotesto.AsInteger > 0 then
      begin
        bolboldataabatimento.AsFloat := IncDay(gbrrfivencimento.AsFloat, ecaecadiasparaprotesto.AsInteger);
      end;

      if ecaecadiasmulta.AsInteger > 0 then
      begin
        bolboldataamulta.AsFloat := IncDay(gbrrfivencimento.AsFloat, ecaecadiasmulta.AsInteger);
        bolbolpercentualmulta.AsFloat := ecaecapercmulta.AsFloat;
      end;

      if ecaecadiasparaprotesto.AsFloat > 0 then
      begin
        bolboldataprotesto.AsFloat := IncDay(gbrrfivencimento.AsFloat, ecaecadiasparaprotesto.AsInteger);
      end
      else
      begin
        bolboldataprotesto.AsFloat := 0;
      end;
    end
    else
    begin
      bolbolpercentualmulta.AsFloat := gbrrfipercmulta.AsFloat;

      bolbolvalormorajuros.AsFloat := gbrrfimoradia.AsFloat;
      bolboldatamorajuros.AsFloat := IncDay(gbrrfivencimento.AsFloat, IfThen(carcardiasmulta.AsInteger = 0, 1, carcardiasmulta.AsInteger));

      if carcardiasdesc.AsInteger > 0 then
      begin
        bolboldatadesconto.AsFloat := IncDay(gbrrfivencimento.AsFloat, carcardiasdesc.AsInteger);
        bolbolvalordesconto.AsFloat := consulta.FieldByName('rfivalorparcela').AsFloat * ((carcarpercdesc.AsFloat / 100) / 30);;
      end
      else
        bolbolvalordesconto.AsFloat := 0;

      bolbolvalorabatimento.AsFloat := 0;

      if carcardiasparaprotesto.AsFloat > 0 then
      begin
        bolboldataprotesto.AsFloat := IncDay(gbrrfivencimento.AsFloat, carcardiasparaprotesto.AsInteger);
      end
      else
      begin
        bolboldataprotesto.AsFloat := 0;
      end;

    end;

    bolbolemissao.AsString := Hoje(Application, zcone);
    bolgebcodigo.AsInteger := GebCodigo;
    bolsblcodigo.AsInteger := 1; // 1 = Geração Pendente
    bolrfichave.AsInteger := gbrrfichave.AsInteger;

    (* Gera Nosso Numero *)
    bolbolseqnossonum.AsInteger := vlSeqNossoNum;
    Inc(vlSeqNossoNum);

    bol.Post;

    AdicionaBoletoLista(bolbolchave.AsInteger);

    bol.Edit;
    bolsblcodigo.AsInteger := 2; // sblGerado
    bolbolnossonumero.AsString := ACBrBoleto.Banco.MontarCampoNossoNumero(Titulo);
    bol.Post;

    gbr.Next;
  end;

end;

procedure Tfbol.RegistraLogEmail(pTitulo: Integer; pStatus, pMensagem: String);
begin
  leb.Append;
  lebgebcodigo.AsInteger := GebCodigo;
  lebclbcodigo.AsInteger := Usuario;
  lebtitcodigo.AsInteger := pTitulo;
  leblebstatus.AsString := pStatus;
  leblebmensagem.AsString := pMensagem;
  leb.Post;

  mostra.StepIt;
end;

procedure Tfbol.SalvarLogErro(eMessage, eStackTrace: String);
var
  vlMensagem: String;
  vlArquivo: String;
begin
  vlMensagem := 'Mensagem: ' + eMessage + sLineBreak + sLineBreak + eStackTrace;

  vlArquivo := ExtractFilePath(Application.ExeName) + 'Logs\Boletos\' + FormatDateTime('yyyymmddhhnnsszzz', cfgDataAtual.AsFloat) + '.txt';

  SalvarTextoEmArquivo(vlMensagem, vlArquivo);
end;

procedure Tfbol.SetArquivoFastReport(const Value: String);
begin
  FArquivoFastReport := Value;

  ACBrBoletoFCFR.FastReportFile := FArquivoFastReport;

end;

procedure Tfbol.SetBolChave(const Value: Integer);
begin
  FBolChave := Value;

  if FBolChave = 0 then
    Exit;

  bol.Close;
  bol.Params[0].AsInteger := FBolChave;
  bol.Open;

  GebCodigo := bolgebcodigo.AsInteger;
end;

procedure Tfbol.SetCarteira(const Value: Integer);
begin
  FCarteira := Value;

  car.Close;
  car.Params[0].AsInteger := FCarteira;
  car.Open;
end;

procedure Tfbol.SetDiretorioBase(const Value: String);
begin
  FDiretorioBase := Value;

  if not DirectoryExists(FDiretorioBase) then
    ForceDirectories(FDiretorioBase);
end;

procedure Tfbol.SetDiretorioLogo(const Value: String);
begin
  FDiretorioLogo := Value;

  ACBrBoletoFCFR.DirLogo := FDiretorioLogo;
end;

procedure Tfbol.SetDiretorioRemessa(const Value: String);
begin
  FDiretorioRemessa := Value;

  if not DirectoryExists(FDiretorioRemessa) then
    ForceDirectories(FDiretorioRemessa);

  ACBrBoleto.DirArqRemessa := FDiretorioRemessa;
end;

procedure Tfbol.SetGebCodigo(const Value: Integer);
begin
  FGebCodigo := Value;

  if FGebCodigo = 0 then
    Exit;

  geb.Close;
  geb.Params[0].AsInteger := FGebCodigo;
  geb.Open;

  Carteira := gebcarcodigo.AsInteger;
end;

procedure Tfbol.SetRmbCodigo(const Value: Integer);
begin
  FRmbCodigo := Value;

  if FRmbCodigo = 0 then
    Exit;

  rmb.Close;
  rmb.Params[0].AsInteger := FRmbCodigo;
  rmb.Open;

  Carteira := rmbcarcodigo.AsInteger;
end;

procedure Tfbol.SetAcesso(const Value: TAcesso);
begin
  FAcesso := Value;
end;

procedure Tfbol.SetRotina(const Value: TRotinasBoletos);
var
  vlTituloRotina: String;
begin
  FRotina := Value;

  case FRotina of
    rblGeracao:
      vlTituloRotina := 'Geração de Boletos';
    rblReimpressao:
      vlTituloRotina := 'Impressão de Boletos';
    rblEnvioEmail:
      vlTituloRotina := 'Envio de e-mail de Boletos';
    rblReimpressaoGrupo:
      vlTituloRotina := 'Impressão de Grupo de Boletos';
    rblGerarRemessa:
      vlTituloRotina := 'Geração de Remessa';
    rblReGerarRemessa:
      vlTituloRotina := 'Regeração de Remessa';
    rblAjustarNossoNumero:
      vlTituloRotina := 'Ajustar Nosso Número';

  end;

  PlTitulo.Caption := vlTituloRotina;
end;

procedure Tfbol.Setzcone(const Value: TUniConnection);
var
  i: Integer;
begin
  Fzcone := Value;

  for i := 0 to fbol.ComponentCount - 1 do
    if fbol.Components[i] is TUniQuery then
      (fbol.Components[i] as TUniQuery).Connection := fbol.Fzcone;
end;

procedure Tfbol.TimerProcessaTimer(Sender: TObject);
begin
  TimerProcessa.Enabled := False;

  try
    DefineBanco;
    DefineCedente;
    AjustaDiretorios;

    case Rotina of
      rblGeracao:
        GerarBoletos;
      rblReimpressao:
        ImprimirBoleto;
      rblReimpressaoGrupo:
        ImprimirGrupoBoletos;
      rblEnvioEmail:
        EnviarEmail;
      rblGerarRemessa:
        GerarRemessa;
      rblReGerarRemessa:
        ReGerarRemessa;
      rblAjustarNossoNumero:
        AjustarNossoNumero;

    end;

    ModalResult := mrOk;

  except
    on E: Exception do
    begin
      Application.MessageBox(PChar(E.Message), 'Módulo de Boletos - Erro', MB_ICONERROR + MB_OK);
      SalvarLogErro(E.Message, E.StackTrace);
      ModalResult := mrCancel;
    end;
  end;
end;

function IntToStrZero(const NumInteiro: Int64; Tamanho: Integer): String;
begin
  Result := Poem_Zeros(Inttostr(NumInteiro), Tamanho);
end;

Function Calcular11(fsDocto: string): Integer;
Var
  A, N, Base, Tamanho, ValorCalc: Integer;
  ValorCalcSTR: String;
  fsSomaDigitos: Integer;
  fsDigitoFinal: Integer;
  fsModuloFinal: Integer;
  fsMultIni: Integer;
  fsMultFim: Integer;
  fsMultAtu: Integer;

begin
  fsSomaDigitos := 0;
  fsDigitoFinal := 0;
  fsModuloFinal := 0;
  fsMultIni := 2;
  fsMultFim := 9;
  fsMultAtu := 0;

  if (fsMultAtu >= fsMultIni) and (fsMultAtu <= fsMultFim) then
    Base := fsMultAtu
  else
    Base := fsMultIni;
  Tamanho := Length(fsDocto);

  { Calculando a Soma dos digitos de traz para diante, multiplicadas por BASE }
  For A := 1 to Tamanho do
  begin
    N := StrToIntDef(fsDocto[Tamanho - A + 1], 0);
    ValorCalc := (N * Base);

    fsSomaDigitos := fsSomaDigitos + ValorCalc;

    if fsMultIni > fsMultFim then
    begin
      Dec(Base);
      if Base < fsMultFim then
        Base := fsMultIni;
    end
    else
    begin
      Inc(Base);
      if Base > fsMultFim then
        Base := fsMultIni;
    end;
  end;

  begin
    fsModuloFinal := fsSomaDigitos mod 11;

    if fsModuloFinal < 2 then
      fsDigitoFinal := 0
    else
      fsDigitoFinal := 11 - fsModuloFinal;
  end;

  if (fsDigitoFinal > 9) then
    fsDigitoFinal := 0
  else;

  Result := fsDigitoFinal;
end;

function Tfbol.AjustarNossoNumero: Boolean;
var
  vlNossoNumero: string;
  vlDocumento: string;
  vlCarteira: string;
  vlDigito: string;
begin
  bolnumero.Close;
  bolnumero.SQL.Text := 'SELECT bol.bolchave, bol.rfichave, bol.bolnossonumero,  v_rfi.carcodigo, bol.bolemissao  FROM bol,  v_rfi ';
  bolnumero.SQL.Add('WHERE bol.rfichave = v_rfi.rfichave and bolchave=' + Inttostr(BolChave));
  bolnumero.Open;

  vlNossoNumero := Copy(bolnumero.FieldByName('bolnossonumero').AsString, 4, 6);

  car.Close;
  car.ParamByName('carcodigo').AsString := bolnumero.FieldByName('carcodigo').AsString;
  car.Open;

  vlDocumento := carctaagencia.AsString + FormatFloat('00', carctaagenciadig.AsInteger) + FormatFloat('00000', carctanumero.AsInteger) +
    FormatDateTime('yy', bolnumero.FieldByName('bolemissao').AsDateTime) + FormatFloat('000000', StrToInt(vlNossoNumero));

  /// BBBB PP CCCCCNUNUNUNU
  vlDigito := Inttostr(Calcular11(vlDocumento));

  vlNossoNumero := FormatDateTime('yy', bolnumero.FieldByName('bolemissao').AsDateTime) + '/' + vlNossoNumero + '-' + vlDigito;

  bolnumero.Edit;
  bolnumero.FieldByName('bolnossonumero').AsString := vlNossoNumero;
  bolnumero.Post;

  Result := True;
end;

function Tfbol.ValidaEmail(pEtdCodigo: Integer; var EnderecoEmail: String): Boolean;
var
  vlSeparador: String;
begin
  vlSeparador := '';
  EnderecoEmail := '';

  etd.Close;
  etd.Params[0].AsInteger := pEtdCodigo;
  etd.Open;

  if not etd.IsEmpty then
  begin
    Result := True;

    while not etd.Eof do
    begin
      EnderecoEmail := EnderecoEmail + vlSeparador + etdeteemail.AsString;
      vlSeparador := ';';

      etd.Next;
    end;

  end
  else
    Result := False;
end;

procedure Tfbol.Inicializar;
begin

  cfg.Close;
  cfg.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  cfg.Open;

  if fbol.cfg.IsEmpty then
  begin
    fbol.cfg.Close;
    fbol.cfg.ParamByName('flacodigo').AsInteger := 1;
    fbol.cfg.Open;

  end;

  // Define configurações do servidor para envio de email.
  with SMTP do
  begin
    IOHandler := IO_OpenSSL;
    Host := LowerCase(cfgcfgemailservidornfe.AsString); // 'smtp.live.com'; // 'smtp.gmail.com';
    Username := LowerCase(cfgcfgemailnfe.AsString); // 'email@hotmail.com'; // 'email@gmail.com';
    Password := Trim(cfgcfgemailsenhanfe.AsString); // 'senha';
    Port := cfgcfgmailportnfe.AsInteger; // 587; // 465;
    case cfgcfgemailusatls.AsInteger of
      0:
        UseTLS := UtNoTLSSupport;
      1:
        UseTLS := UtUseExplicitTLS;
      2:
        UseTLS := UtUseImplicitTLS;
      3:
        UseTLS := UtUseRequireTLS;
    end;
    AuthType := SatDefault;
    ConnectTimeout := 10000;
    ReadTimeout := 10000;
  end;

  with IO_OpenSSL do
  begin
    SSLOptions.Method := sslvSSLv23;
    SSLOptions.Mode := sslmClient;
  end;

  // fnfe.LerConfiguracao;
end;

Function Tfbol.EnviaEmailACBR(destino, copias, texto, assunto, xml, pdf, nome_cliente, nome_empresa: String): Boolean;
Var
  Attachmentxml: TIdAttachment;
  Attachmentpdf: TIdAttachment;
begin

  with ACBrMail do
  begin
    Clear;

    Subject := assunto;
    FromName := nome_empresa;

  end;

end;

Function Tfbol.EnviaEmail(destino, copias, texto, assunto, xml, pdf, nome_cliente, nome_empresa: String): Boolean;
Var
  Attachmentxml: TIdAttachment;
  Attachmentpdf: TIdAttachment;
  vEnviado: Boolean;
  vlMensagemErro, vlDiretorioErro: String;

Begin

  vEnviado := False;
  Result := vEnviado;

  if Trim(cfgcfgemailnfe.AsString) = '' then
  begin
    Application.MessageBox(PChar('Email do emitente não cadastrado.' + #13 + #13 + 'Entre em contato com suporte da Mizio Sistemas - (66) 3544-2765.'), 'ATENÇÃO',
      MB_OK + MB_ICONWARNING);
    Exit;
  end;

  if (Trim(destino) = '') and (Trim(copias) = '') then
  begin
    Application.MessageBox(PChar('Nenhum email cadastrado para envio.' + #13 + #13 + 'Verifique no cadastro da entidade!!'), 'ATENÇÃO', MB_OK + MB_ICONWARNING);
    Exit;
  end;

  Try

    IdMessage1.Clear;
    IdMessage1.Body.Clear;
    IdMessage1.Body.Text := texto; // Corpo da mensagem.
    IdMessage1.Subject := assunto; // Assunto
    IdMessage1.From.Text := LowerCase(cfgcfgemailnfe.AsString); // Email de envio da mensagem
    IdMessage1.From.Name := nome_empresa; // Nome para apresentação
    IdMessage1.CCList.EMailAddresses := copias; // Com cópia
    IdMessage1.BccList.EMailAddresses := '';
    IdMessage1.Recipients.EMailAddresses := destino; // email destino

    if FileExists(xml) then
      Attachmentxml := TIdAttachmentFile.Create(IdMessage1.MessageParts, xml);

    { if FileExists(pdf) then
      Attachmentpdf := TIdAttachmentFile.Create(IdMessage1.MessageParts, pdf); }

    // Conectando e enviando
    Try

      SMTP.Connect(); // Inicia conexão

      If SMTP.Connected Then
      Begin

        SMTP.Send(IdMessage1); // Se conectado envia email

        vEnviado := True;
        SMTP.Disconnect; // Desconecta

        if Attachmentxml.FileName <> '' then
          Attachmentxml.Free;

        { if Attachmentpdf.FileName <> '' then
          Attachmentpdf.Free; }
      End;
    Except
      On E: Exception Do // Definição da variável e do tipo Exception
      Begin
        vEnviado := False;

        vlMensagemErro := 'Não foi possível enviar o email.' + #13 + #13 + 'Mensagem: ' + #13 + E.Message;
        Application.MessageBox(PChar(vlMensagemErro), 'Erro Envio de Email', MB_OK + MB_ICONERROR);

        SalvarLogErro(E.Message, E.StackTrace);

        SMTP.Disconnect;
        Sleep(1000);

        If SMTP.Connected Then
          SMTP.Disconnect;
      End;
    End;
  Finally

  End;

  Result := vEnviado;
End;

end.
