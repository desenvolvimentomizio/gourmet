unit ufnfce;

interface

uses
  Winapi.Windows, System.SysUtils, Vcl.Forms, ACBrNFeDANFEFRDM,
  ACBrNFeDANFEClass, ACBrNFeDANFEFR, ACBrValidador, Uni,
  ACBrBase, ACBrDFe, ACBrNFe, Vcl.ComCtrls, System.Classes, Vcl.Controls,
  Vcl.ExtCtrls, Vcl.Dialogs, System.StrUtils, System.Math, uFuncoes,
  pcnConversao, pcnConversaoNFe, uPegaBase, MemDS, DBAccess, Data.DB, DateUtils, Vcl.StdCtrls,
  ACBrMail, IdComponent, IdMessage, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  IdSMTP, IdAttachment, IdAttachmentFile, ACBrDFeReport, ACBrDFeDANFeReport, ACBrDFeUtil;

type
  Tfnfce = class(TForm)
    ACBrNFe: TACBrNFe;
    ACBrValidador: TACBrValidador;

    consulta: TUniQuery;
    rec: TUniQuery;
    mes: TUniQuery;
    itm: TUniQuery;
    etd: TUniQuery;
    toe: TUniQuery;
    enf: TUniQuery;
    mev: TUniQuery;
    cfg: TUniQuery;
    trm: TUniQuery;
    mic: TUniQuery;
    oic: TUniQuery;
    qDtl: TUniQuery;
    rni: TUniQuery;
    NumeroNFCe: TUniQuery;
    mesxml: TUniQuery;
    disponivel: TUniQuery;
    limite: TUniQuery;
    yoe: TUniQuery;
    itmncm: TUniQuery;

    recreccodigo: TIntegerField;
    recrecmotivo: TStringField;
    recrecdthoraentrada: TDateTimeField;
    recrecdthorasaida: TDateTimeField;

    mesmeschave: TIntegerField;
    mestoecodigo: TIntegerField;
    mesetdcodigo: TIntegerField;
    mesmestotal: TFloatField;
    mesrefcodigo: TIntegerField;
    mestfpcodigo: TIntegerField;
    mestdfcodigo: TStringField;
    mesmesnumero: TIntegerField;
    mesmesserie: TStringField;
    mesedritem: TIntegerField;
    mesmesdatanfe: TDateField;
    mesmescoocupom: TIntegerField;
    mesmesdatacupom: TDateField;
    mesmesprotocolo: TStringField;
    mesmeschavenfe: TStringField;
    mesmesregistro: TDateField;
    mestemcodigo: TIntegerField;

    itmcfocfop: TStringField;
    itmprocodigo: TIntegerField;
    itmpronome: TStringField;
    itmpronomereduzido: TStringField;
    itmproncm: TStringField;
    itmitmdesccomple: TStringField;
    itmitmquantidade: TFloatField;
    itmunisimbolo: TStringField;
    itmitmvalor: TFloatField;
    itmitmdesconto: TFloatField;
    itmitmchave: TIntegerField;
    itmcstcodigo: TStringField;
    itmicmcodigo: TStringField;
    itmitmicm: TFloatField;
    itmitmbicm: TFloatField;
    itmitmaliqipi: TFloatField;
    itmitmbipi: TFloatField;
    itmitmipi: TFloatField;
    itmitmvlribpt: TFloatField;
    itmpunqtdtribtotal: TFloatField;
    itmunisimbolotrib: TStringField;
    itmproanpcodigo: TIntegerField;
    itmitmtotal: TFloatField;
    itmitmcargatrib: TFloatField;

    etdetddoc1: TStringField;
    etdedrcep: TStringField;
    etdedrrua: TStringField;
    etdedrnumero: TStringField;
    etdedrbairro: TStringField;
    etdcddcodigo: TStringField;
    etdcddnome: TStringField;
    etdufssigla: TStringField;
    etdetftelefone: TStringField;
    etdtpecodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    etdedrinscest: TStringField;

    toettecodigo: TIntegerField;
    toetoeidentificacao: TStringField;
    toetoecodigo: TIntegerField;

    enfenfchave: TIntegerField;
    enftencodigo: TIntegerField;
    enfenfregistroevento: TDateField;
    enfenfchaveevento: TStringField;
    enfenfseqevento: TIntegerField;
    enfenfdescricao: TStringField;
    enfenfxml: TBlobField;
    enfenfcstat: TIntegerField;
    enfenfxmotivo: TStringField;

    mevmevchave: TIntegerField;
    mevenfchave: TIntegerField;
    mevmeschave: TIntegerField;

    cfgcfgcodigo: TIntegerField;
    cfgcfgservarqnfes: TStringField;
    cfgcfgnumecertif: TStringField;
    cfgcfgetdempresa: TIntegerField;
    cfgcfgviasnfe: TIntegerField;
    cfgcfgserienfe: TStringField;
    cfgcfgserienfce: TStringField;
    cfgcfgdescrinfe: TIntegerField;
    cfgcfgemailnfe: TStringField;
    cfgcfgemailservidornfe: TStringField;
    cfgcfgemailsenhanfe: TStringField;
    cfgcfgmailportnfe: TStringField;
    cfgcfgemailusatls: TIntegerField;
    cfgcrtcodigo: TIntegerField;
    cfgetdapelido: TStringField;
    cfgetdidentificacao: TStringField;
    cfgetddoc1: TStringField;
    cfgufscodigo: TStringField;
    cfgcddcodigo: TStringField;
    cfgedrinscest: TStringField;
    cfgedrrua: TStringField;
    cfgedrnumero: TStringField;
    cfgedrbairro: TStringField;
    cfgedrcep: TStringField;
    cfgcddnome: TStringField;
    cfgufssigla: TStringField;
    cfgetftelefone: TStringField;
    cfgcfgusanfc: TIntegerField;
    cfgcfgtoken1nfce: TStringField;
    cfgcfgnumecertifa1: TStringField;
    cfgcfgmodonfe: TIntegerField;
    cfgcfgidtokennfce: TStringField;
    cfgcfgviaassinar: TIntegerField;
    cfgcfgsenhacertificadoa1: TStringField;

    trmtciporta: TStringField;
    trmecfcodigo: TIntegerField;
    trmtrmcodigo: TIntegerField;
    trmtipcodigo: TIntegerField;

    micmicchave: TIntegerField;
    micmeschave: TIntegerField;
    micidccodigo: TIntegerField;
    micidcnome: TStringField;
    micidcdoc: TStringField;

    oicoicchave: TIntegerField;
    oicorcchave: TIntegerField;
    oicidccodigo: TIntegerField;
    oicidcnome: TStringField;
    oicidcdoc: TStringField;

    PlTitulo: TPanel;
    plStatusSefaz: TPanel;
    Panel1: TPanel;

    rnirnichave: TIntegerField;
    rnirniano: TStringField;
    rnirnimes: TStringField;
    rnitdfcodigo: TStringField;
    rnirninumeroinicial: TIntegerField;
    rnirninumerofinal: TIntegerField;
    rnirnijutificativa: TStringField;

    mesclbidentificacao: TStringField;
    itmitmcargatribest: TFloatField;
    mesmesprodutos: TFloatField;
    cfgcfgmensagempdv: TStringField;
    plestagio: TPanel;
    mesmesobs: TStringField;
    info: TMemo;

    mesxmlmeschave: TIntegerField;
    mesxmlmesarqxml: TBlobField;
    mesxmlflacodigo: TIntegerField;
    etdetdnfemodelos: TStringField;
    itmcspcodigo: TStringField;
    itmcsfcodigo: TStringField;

    disponivelrfisaldocapital: TFloatField;

    limiteetdcodigo: TIntegerField;
    limiteetllimitetotal: TFloatField;
    yoeansanexo: TStringField;
    cfgcfgtoesubstforaestado: TIntegerField;
    cfgcfgtoesubstnoestado: TIntegerField;

    itmncmtoecodigo: TIntegerField;
    cfgcfgprevisualizarimpressao: TIntegerField;
    cfgcfgversao: TStringField;
    ACBrValidadorBarra: TACBrValidador;
    itmpunbarra: TStringField;
    itmpunbarrasistema: TIntegerField;
    SMTP: TIdSMTP;
    IO_OpenSSL: TIdSSLIOHandlerSocketOpenSSL;
    IdMessage1: TIdMessage;
    mesmesemissao: TDateField;
    toeitm: TUniQuery;
    toeitmtoecodigo: TIntegerField;
    toeitmcstcodigo: TStringField;
    toeitmcsicodigo: TStringField;
    toeitmcspcodigo: TStringField;
    toeitmcfgpercentualpis: TFloatField;
    toeitmcsfcodigo: TStringField;
    toeitmcfgpercentualcofins: TFloatField;
    itmcsicodigo: TStringField;
    itmtoecodigo: TIntegerField;
    cfgcfgusacstnoproduto: TIntegerField;
    itmcst: TUniQuery;
    itmcstitmchave: TIntegerField;
    itmcstcstcodigo: TStringField;
    itmcstcsicodigo: TStringField;
    itmcstcspcodigo: TStringField;
    itmcstcsfcodigo: TStringField;
    itmcstitmaliqpis: TFloatField;
    itmcstitmaliqcofins: TFloatField;
    itmcstitmaliqipi: TFloatField;
    ncm: TUniQuery;
    toettocodigo: TIntegerField;
    mostra: TProgressBar;
    ACBrNFeDANFCEFR1: TACBrNFeDANFCEFR;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    Fzcone: TUniConnection;

    function LerConfiguracaoDAV: Boolean;
    function AjustaSituacaoNFCe(vMesChave: string; vFlaCodigo: string = '1'): Boolean;
    procedure CancelaNFCe(vMesChave: string; vFlaCodigo: string = '1');
    function ConsultaServicoSEFAZNFCE: string;
    function EmiteNFCe(vMesChave: string; vImprimir: Boolean; vFlaCodigo: string = '1'): Boolean;
    function GeraNFCe(vMesChave: string; vFlaCodigo: string = '1'): Boolean;
    function ReGeraNFCe(vMesChave: string; vFlaCodigo: string = '1'): Boolean;
    function ImprimeNFCe(vMesChave: string; vFlaCodigo: string = '1'; vVisualizar: Boolean = False): Boolean;
    function EmailNFCe(vMesChave: string; vFlaCodigo: string = '1'; vVisualizar: Boolean = False; vemails: string = ''): Boolean;
    function VerificaExistencia(vMesChave: string; vFlaCodigo: string = '1'): Boolean;
    function GeraNomeArqNFCe(vMesChave: string; vFlaCodigo: string = '1'): string;
    procedure AjustaCaminhoGeralNF(Data: TDate);
    procedure InicializaTabelas;
    function ValidaProdutos(vMesChave: string; vFlaCodigo: string = '1'): Boolean;
    function ValidaConsumidor(vMesChave: string; vFlaCodigo: string = '1'): Boolean;
    function AssinaNota(vACBrNFe: TACBrNFe; vMesChave: string; vFlaCodigo: string = '1'): Boolean;
    function SalvaEmCoontigencia(vACBrNFe: TACBrNFe; vMesChave: string; vFlaCodigo: string = '1'): Boolean;
    function SalvaNormal(vACBrNFe: TACBrNFe; vMesChave: string; vFlaCodigo: string = '1'): Boolean;

    function ValidaNota(vACBrNFe: TACBrNFe; vMesChave: string; vFlaCodigo: string = '1'): Boolean;
    function Geraxml(vChaveNFE: string; vFlaCodigo: string = '1'): Boolean;
    function ReGeraxml(vChaveNFE: string; vFlaCodigo: string = '1'): Boolean;

    procedure entraemcontigencia(vStatSEFAZ: string);
    function GeraNomeArqNFCeTipo(vMesChave: string; vTipoEmissao: Integer; vFlaCodigo: string = '1'): string;
    function ConsultaNFCe(vMesChave, vArqNFCe: String; vFlaCodigo: string = '1'): Boolean;
    function InutilizarNumerosNFCe(vFlaCodigo: string = '1'): Boolean;
    procedure Setzcone(const Value: TUniConnection);
    procedure SalvarLogErro(eMessage, eStackTrace: String);
    function InutilizarNumerosNFCeDireto(vFlaCodigo: string = '1'): Boolean;
    procedure VerifieAjustaItemcomSubstituicao(usEmitente, ufDestinatario: string);

    function EnviarEmail(destino, copias, texto, assunto, xml, pdf, nome_cliente, nome_empresa: String): Boolean;
    procedure Inicializar;
    function GeraxmlCont(vChaveNFE: string; vFlaCodigo: string = '1'): Boolean;

  protected
    // procedure ActionChange(Sender: TObject; CheckDefaults: Boolean); override;
    { Private declarations }
    vpConsultaVisivel: Boolean;
  published
    property zcone: TUniConnection read Fzcone write Setzcone;

  public
    { Public declarations }
    Acesso: TAcesso;
    vpFilial: string;
    vpPastaPrincipal: string;
    vpMesChave: String;
    vpFlacodigo: String;

    vpDataAtual: Double;
    vpSubPastaDoc: string;
    vpAAAAMMNNNFCe: string;
    vpTrmCodigo: string;
    vpClbCodigo: string;

    vpNomeArquivoNFCe: string;
    vPastaPrincipal: string;

    vpConsultouSEFAZ: Boolean;

    vpDataHoraSEFAZ: Tdatetime;
  end;

const
  (* Tipos de Emissão de NFCe *)
  temiNormal = 1;
  temiContingencia = 2;
  temiContingenciOffLine = 9;

var
  fnfce: Tfnfce;

  (* Identifica situação do Web Service como Normal - OnLine *)
  vpWSNormal: Boolean = True;

implementation

{$R *.dfm}

function modulonfce(AOwner: TComponent; conexao: TUniConnection; vMesChave: string; vFuncao: string; Acesso: TAcesso; vImprimir: Boolean; vConsultouSefaz: Boolean;
  vemail: string): Boolean;
begin
  try
    fnfce := Tfnfce.Create(AOwner);

    fnfce.zcone := conexao;
    fnfce.Acesso := Acesso;
    fnfce.vpTrmCodigo := Acesso.Terminal.ToString;
    fnfce.vpClbCodigo := Acesso.Usuario.ToString;
    fnfce.vpFlacodigo := Acesso.Filial.ToString;

    (*
      * Variável que identifica se já foi feita primeira consulta do Status da SEFAZ
      * para reverter o problemas dos certificados digitais de cartão
    *)
    fnfce.vpConsultouSEFAZ := vConsultouSefaz;
    if fnfce.vpConsultouSEFAZ then
    begin
      fnfce.plStatusSefaz.Caption := 'SEFAZ on-line';
      application.ProcessMessages;
    end
    else
    begin
      fnfce.plStatusSefaz.Caption := 'SEFAZ sem acesso';
      application.ProcessMessages;
    end;

    fnfce.InicializaTabelas;

    (* Ajusta pasta Principal de salvamento dos arquivos. *)
    if fnfce.cfgcfgservarqnfes.AsString = '' then
      fnfce.vpPastaPrincipal := ExtractFilePath(application.ExeName)
    else
      fnfce.vpPastaPrincipal := fnfce.cfgcfgservarqnfes.AsString;

    if Copy(fnfce.vpPastaPrincipal, Length(fnfce.vpPastaPrincipal), 1) <> '\' then
      fnfce.vpPastaPrincipal := fnfce.vpPastaPrincipal + '\';

    fnfce.vpSubPastaDoc := 'arqnfces';

    (* Ajusta as configurações do Componente *)
    if not fnfce.LerConfiguracaoDAV then
    begin
      ShowMessage('Verifique as configurações para emissão de NFCe');
      Exit;
    end;

    if fnfce.cfgcfgservarqnfes.AsString = '' then
    begin
      fnfce.vPastaPrincipal := ExtractFilePath(application.ExeName);
    end
    else
    begin
      fnfce.vPastaPrincipal := fnfce.cfgcfgservarqnfes.AsString;
    end;

    (* Atribui a variável a data atual do servidor *)




    // fnfce.vpDataAtual := strtodatetime(agora(application, fnfce.zcone));

    fnfce.vpConsultaVisivel := False;

    // fnfce.ConsultaServicoSEFAZNFCE;

    fnfce.vpDataAtual := now(); // fnfce.vpDataHoraSEFAZ;

    fnfce.AjustaCaminhoGeralNF(fnfce.vpDataAtual);

    (* Identifica se Contingência está Ativa *)
    if fnfce.rec.Active = False then
      fnfce.rec.Open;

    if fnfce.rec.IsEmpty then
    begin
      case ansiIndexStr(vFuncao, ['EmiteNFCe', 'ImprimeNFCe', 'CancelaNFCe', 'ConsultaServicoSEFAZNFCE', 'VerificaExistencia', 'AjustaSituacaoNFCe', 'InutilizarNumerosNFCE',
        'InutilizarNumerosNFCEDireto', 'GerarXML', 'ReGerarXML', 'VisualizaNFCe', 'EmailNFCe', 'GerarXMLCont']) of
        12:
          vpWSNormal := False;
      else
        vpWSNormal := True;
      end;
    end
    else
      vpWSNormal := False;

    if (vMesChave <> '0') and (vMesChave <> '') then
      fnfce.vpNomeArquivoNFCe := fnfce.GeraNomeArqNFCe(vMesChave, fnfce.vpFlacodigo);

    fnfce.vpMesChave := vMesChave;

    case ansiIndexStr(vFuncao, ['EmiteNFCe', 'ImprimeNFCe', 'CancelaNFCe', 'ConsultaServicoSEFAZNFCE', 'VerificaExistencia', 'AjustaSituacaoNFCe', 'InutilizarNumerosNFCE',
      'InutilizarNumerosNFCEDireto', 'GerarXML', 'ReGerarXML', 'VisualizaNFCe', 'EmailNFCe', 'GerarXMLCont']) of
      0:
        Result := fnfce.EmiteNFCe(vMesChave, vImprimir, fnfce.vpFlacodigo);
      1:
        Result := fnfce.ImprimeNFCe(vMesChave, fnfce.vpFlacodigo);
      2:
        fnfce.CancelaNFCe(vMesChave, fnfce.vpFlacodigo);
      3:
        begin
          fnfce.vpConsultaVisivel := True;
          fnfce.ConsultaServicoSEFAZNFCE;
        end;
      4:
        Result := fnfce.VerificaExistencia(vMesChave, fnfce.vpFlacodigo);
      5:
        Result := fnfce.AjustaSituacaoNFCe(vMesChave, fnfce.vpFlacodigo);
      6:
        Result := fnfce.InutilizarNumerosNFCe;
      7:
        Result := fnfce.InutilizarNumerosNFCeDireto;
      8:
        Result := fnfce.Geraxml(vMesChave, fnfce.vpFlacodigo);
      9:
        Result := fnfce.ReGeraxml(vMesChave, fnfce.vpFlacodigo);
      10:
        Result := fnfce.ImprimeNFCe(vMesChave, fnfce.vpFlacodigo, True);
      11:
        Result := fnfce.EmailNFCe(vMesChave, fnfce.vpFlacodigo, True, vemail);
      12:
        Result := fnfce.GeraxmlCont(vMesChave, fnfce.vpFlacodigo);

    end;

  finally

    System.Classes.UnRegisterClass(TACBrValidador);

    System.Classes.UnRegisterClass(TACBrNFe);
    System.Classes.UnRegisterClass(TMemo);

    FreeAndNil(fnfce);
  end;
end;

exports modulonfce;

(*
  *
  ****** Verifica Pré-existência da NFe *******
  *
*)

function RoundCurrency(const Value: Currency): Currency;
var
  V64: Int64 absolute Result;
  Decimals: Integer;
begin
  Result := Value;
  Decimals := V64 mod 100;
  Dec(V64, Decimals);
  case Decimals of
    - 99 .. -50:
      Dec(V64, 100);
    50 .. 99:
      Inc(V64, 100);
  end;
end;

function Tfnfce.ValidaConsumidor(vMesChave: string; vFlaCodigo: String = '1'): Boolean;
var
  vlNrDoc: string;
  vlNrCEP: string;

begin

  mes.Close;
  mes.Params[0].AsString := vMesChave;
  mes.Params[1].AsString := vFlaCodigo;
  mes.Open;

  etd.Close;
  etd.ParamByName('etdcodigo').AsInteger := mesetdcodigo.AsInteger;
  etd.ParamByName('edritem').AsInteger := mesedritem.AsInteger;
  etd.Open;

  if Trim(LowerCase(etdetdidentificacao.AsString)) <> 'consumidor' then
  begin

    vlNrDoc := SomenteNumeros(Self.etdetddoc1.AsString);

    case Length(vlNrDoc) of
      11:
        ACBrValidador.TipoDocto := docCPF;
      14:
        ACBrValidador.TipoDocto := docCNPJ;
    end;

    if vlNrDoc <> '0' then
    begin
      ACBrValidador.Documento := vlNrDoc;

      if not ACBrValidador.Validar then
      begin
        application.MessageBox(PChar('Erro preenchimento dos dados da NFC-e.' + #13 + #13 + #13 + 'Número do documento inválido para o Cliente:' + #13 + #13 +
          etdetdidentificacao.AsString), 'Emissão como CONSUMIDOR', MB_OK + MB_ICONERROR);
        Result := False;
        Exit;
      end;
      Result := True;
    end
    else
    begin
      Result := False;
    end;

  end
  else
  begin
    Result := True;
  end;
end;

function Tfnfce.GeraxmlCont(vChaveNFE: string; vFlaCodigo: string = '1'): Boolean;
begin
  try
    Result := False;

    if not vpConsultouSEFAZ then
    begin
      vpConsultaVisivel := False;
      ConsultaServicoSEFAZNFCE;
    end;

    PlTitulo.Caption := 'Gerar NFC-e';

    fnfce.Show;

    plestagio.Caption := 'Carga dos dados';

    mes.Close;
    mes.Params[0].AsString := vChaveNFE;
    mes.Params[1].AsString := vFlaCodigo;
    mes.Open;

    plestagio.Caption := 'Ajusta pastas';

    (* Ajusta caminho para poder localizar arquivo com base na data do campo mesregistro *)
    AjustaCaminhoGeralNF(Self.mesmesregistro.AsFloat);
    plestagio.Caption := 'Verifica pré-existencia';

    plestagio.Caption := 'Recarrega Dados';

    { mes.Close;
      mes.Params[0].AsString := vChaveNFE;
      mes.Params[1].AsString := vFlaCodigo;
      mes.Open; }

    plestagio.Caption := 'Consulta Pastas';

    (* Ajusta caminho para data atual pois não é uma NFE válida *)
    AjustaCaminhoGeralNF(vpDataAtual);

    plestagio.Caption := 'Valida consumidor';

    (* Se NÃO validar o cadastro do destinatário abandona emissão *)
    { if not ValidaConsumidor(vChaveNFE, fnfce.vpFlacodigo) then

      Exit; }

    plestagio.Caption := 'Valida produtos';

    (* Se NÃO validas os itens do registros abandona a geração da NFCe *)
    if not ValidaProdutos(vChaveNFE) then
      Exit;

    plestagio.Caption := 'Gera NFC-e';

    (* Se retornou erro na geração da NFCe abandona *)
    if not GeraNFCe(vChaveNFE, fnfce.vpFlacodigo) then
      Exit;

    (*
      Identifica situação do Web Service da SEFAZ
      Se não estiver normal salva NFe como Contingência
    *)
    vpWSNormal := False;

    if not vpWSNormal then
    begin
      plestagio.Caption := 'Salva em contingencia';

      if Self.SalvaEmCoontigencia(ACBrNFe, vChaveNFE) then
      begin
        vpNomeArquivoNFCe := GeraNomeArqNFCe(vChaveNFE, vFlaCodigo);

        Result := True;
      end;
    end
    else if Self.SalvaNormal(ACBrNFe, vChaveNFE, vFlaCodigo) then
    begin
      plestagio.Caption := 'Salva normal';

      vpNomeArquivoNFCe := GeraNomeArqNFCe(vChaveNFE, vFlaCodigo);

      Result := True;
    end;
  finally

    fnfce.Close;
  end;

end;

function Tfnfce.Geraxml(vChaveNFE: string; vFlaCodigo: string = '1'): Boolean;
begin
  try
    Result := False;

    if not vpConsultouSEFAZ then
    begin
      vpConsultaVisivel := False;
      ConsultaServicoSEFAZNFCE;
    end;

    PlTitulo.Caption := 'Gerar NFC-e';

    fnfce.Show;

    plestagio.Caption := 'Carga dos dados';

    mes.Close;
    mes.Params[0].AsString := vChaveNFE;
    mes.Params[1].AsString := vFlaCodigo;
    mes.Open;

    plestagio.Caption := 'Ajusta pastas';

    (* Ajusta caminho para poder localizar arquivo com base na data do campo mesregistro *)
    AjustaCaminhoGeralNF(Self.mesmesregistro.AsFloat);
    plestagio.Caption := 'Verifica pré-existencia';

    plestagio.Caption := 'Recarrega Dados';

    { mes.Close;
      mes.Params[0].AsString := vChaveNFE;
      mes.Params[1].AsString := vFlaCodigo;
      mes.Open; }

    plestagio.Caption := 'Consulta Pastas';

    (* Ajusta caminho para data atual pois não é uma NFE válida *)
    AjustaCaminhoGeralNF(vpDataAtual);

    plestagio.Caption := 'Valida consumidor';

    (* Se NÃO validar o cadastro do destinatário abandona emissão *)
    { if not ValidaConsumidor(vChaveNFE, fnfce.vpFlacodigo) then

      Exit; }

    plestagio.Caption := 'Valida produtos';

    (* Se NÃO validas os itens do registros abandona a geração da NFCe *)
    if not ValidaProdutos(vChaveNFE) then
      Exit;

    plestagio.Caption := 'Gera NFC-e';

    (* Se retornou erro na geração da NFCe abandona *)
    if not GeraNFCe(vChaveNFE, fnfce.vpFlacodigo) then
      Exit;

    (*
      Identifica situação do Web Service da SEFAZ
      Se não estiver normal salva NFe como Contingência
    *)

    if not vpWSNormal then
    begin
      plestagio.Caption := 'Salva em contingencia';

      if Self.SalvaEmCoontigencia(ACBrNFe, vChaveNFE) then
      begin
        vpNomeArquivoNFCe := GeraNomeArqNFCe(vChaveNFE, vFlaCodigo);

        Result := True;
      end;
    end
    else if Self.SalvaNormal(ACBrNFe, vChaveNFE, vFlaCodigo) then
    begin
      plestagio.Caption := 'Salva normal';

      vpNomeArquivoNFCe := GeraNomeArqNFCe(vChaveNFE, vFlaCodigo);

      Result := True;
    end;
  finally

    fnfce.Close;
  end;

end;

function Tfnfce.ReGeraxml(vChaveNFE: string; vFlaCodigo: string = '1'): Boolean;
begin
  try
    Result := False;

    if not vpConsultouSEFAZ then
    begin
      vpConsultaVisivel := False;
      // ConsultaServicoSEFAZNFCE;
    end;

    PlTitulo.Caption := 'Gerar NFC-e';

    fnfce.Show;

    plestagio.Caption := 'Carga dos dados';

    mes.Close;
    mes.Params[0].AsString := vChaveNFE;
    mes.Params[1].AsString := vFlaCodigo;
    mes.Open;

    plestagio.Caption := 'Ajusta pastas';

    (* Ajusta caminho para poder localizar arquivo com base na data do campo mesregistro *)
    AjustaCaminhoGeralNF(Self.mesmesregistro.AsFloat);
    plestagio.Caption := 'Verifica pré-existencia';

    plestagio.Caption := 'Recarrega Dados';

    { mes.Close;
      mes.Params[0].AsString := vChaveNFE;
      mes.Params[1].AsString := vFlaCodigo;
      mes.Open; }

    plestagio.Caption := 'Consulta Pastas';

    (* Ajusta caminho para data atual pois não é uma NFE válida *)
    AjustaCaminhoGeralNF(vpDataAtual);

    plestagio.Caption := 'Valida consumidor';

    (* Se NÃO validar o cadastro do destinatário abandona emissão *)
    { if not ValidaConsumidor(vChaveNFE, fnfce.vpFlacodigo) then

      Exit; }

    plestagio.Caption := 'Valida produtos';

    (* Se NÃO validas os itens do registros abandona a geração da NFCe *)
    { if not ValidaProdutos(vChaveNFE) then
      Exit; }

    plestagio.Caption := 'Gera NFC-e';

    (* Se retornou erro na geração da NFCe abandona *)
    if not ReGeraNFCe(vChaveNFE, fnfce.vpFlacodigo) then
      Exit;

    (*
      Identifica situação do Web Service da SEFAZ
      Se não estiver normal salva NFe como Contingência
    *)

  finally

    fnfce.Close;
  end;

end;

function Tfnfce.ValidaProdutos(vMesChave: string; vFlaCodigo: string): Boolean;
var
  (* Utilizados para chamada do mvpr - Validação de Produtos *)
  ValidarProdutos: function(AOwner: TComponent; conexao: TUniConnection; ChaveMes: string; CodigoFilial: string = '1'; VerificaNCM: Boolean = True): Boolean;
  vPodeProdutos: Boolean;
  PackMvpr: HModule;

begin
  Result := True;
  PackMvpr := LoadPackage('modulos\mvpr.bpl');

  If PackMvpr <> 0 Then
    Try
      @ValidarProdutos := GetProcAddress(PackMvpr, PChar('ValidaProdutos'));

      If Assigned(ValidarProdutos) Then
        Result := ValidarProdutos(application, zcone, vMesChave, vFlaCodigo);

    Finally
      // DoUnLoadPackage(application, PackMvpr);
    End;

end;

procedure Tfnfce.InicializaTabelas;
var
  vlQtTabelas: Integer;
begin
  try
    try

      consulta.Connection := fnfce.zcone;
      rec.Connection := fnfce.zcone;
      mes.Connection := fnfce.zcone;
      itm.Connection := fnfce.zcone;
      etd.Connection := fnfce.zcone;
      toe.Connection := fnfce.zcone;
      enf.Connection := fnfce.zcone;
      mev.Connection := fnfce.zcone;
      cfg.Connection := fnfce.zcone;
      trm.Connection := fnfce.zcone;
      mic.Connection := fnfce.zcone;
      oic.Connection := fnfce.zcone;
      qDtl.Connection := fnfce.zcone;
      rni.Connection := fnfce.zcone;
      NumeroNFCe.Connection := fnfce.zcone;
      mesxml.Connection := fnfce.zcone;
      disponivel.Connection := fnfce.zcone;
      limite.Connection := fnfce.zcone;
      ncm.Connection := fnfce.zcone;
      itmncm.Connection := fnfce.zcone;

      cfg.Close;
      cfg.ParamByName('flacodigo').AsInteger := Acesso.Filial;
      cfg.Open;

      trm.Close;
      trm.SQL.Text := 'SELECT DISTINCT tci.tciporta, mit.ecfcodigo, cit.trmcodigo, mit.tipcodigo FROM tci ';
      trm.SQL.Add('INNER JOIN mit  ON tci.mitcodigo = mit.mitcodigo ');
      trm.SQL.Add('INNER JOIN cit ON cit.tcicodigo = tci.tcicodigo ');
      trm.SQL.Add('WHERE  tci.trmcodigo = ' + vpTrmCodigo);
      trm.SQL.Add(' and  cit.trmcodigo=' + vpTrmCodigo);
      trm.SQL.Add(' AND mit.tipcodigo=2');
      trm.Open;

      Panel1.Caption := 'TRM: ' + trmtrmcodigo.AsString + ' Aguarde ...';

    except
      on e: EAccessViolation do
      begin
        MessageDlg('Houve uma violação de acesso, com a mensagem' + e.Message, MtError, [MbOk], 0);
      end;
    end;

  finally

  end;
end;

function Tfnfce.GeraNomeArqNFCe(vMesChave: string; vFlaCodigo: String = '1'): string;
var
  vlArqNFCe: String;
  vData: Double;
  vlCNPJ: String;
  vlNrNFCe, vlNrSer: Integer;
  vlUfCod: string;
begin
  vlArqNFCe := '';

  try
    mes.Close;
    mes.Params[0].AsString := vMesChave;
    mes.Params[1].AsString := vFlaCodigo;
    mes.Open;

    mesxml.Close;
    mesxml.Params[0].AsString := vMesChave;
    mesxml.Params[1].AsString := vFlaCodigo;
    mesxml.Open;

    if mesmesnumero.AsInteger = 0 then
      Exit;

    if mesmesdatanfe.AsFloat = 0 then
      vData := mesmesregistro.AsFloat
    else
      vData := mesmesdatanfe.AsFloat;

    if mesmeschavenfe.AsString <> '' then
    begin
      vlArqNFCe := mesmeschavenfe.AsString;
      vlArqNFCe := vpPastaPrincipal + vpSubPastaDoc + '\' + FormatDateTime('yyyymm', vData) + '\' + vlArqNFCe + '-nfe.xml';
    end;
    if not DirectoryExists(vpPastaPrincipal + vpSubPastaDoc + '\' + FormatDateTime('yyyymm', vData)) then
    begin
      ForceDirectories(vpPastaPrincipal + vpSubPastaDoc + '\' + FormatDateTime('yyyymm', vData));
    end;

    if not mesxml.IsEmpty then
    begin
      if mesxmlmesarqxml.AsString <> '' then
      begin
        if FileExists(vlArqNFCe) = False then
        begin
          if vlArqNFCe <> '' then
          begin
            mesxmlmesarqxml.SaveToFile(vlArqNFCe);
          end;
        end;
      end;

    end;

    if FileExists(vlArqNFCe) then
      Exit;

    (* Tenta encontrar arquivo da NFCe com geração NORMAL *)
    vlCNPJ := SomenteNumeros(Self.cfgetddoc1.AsString);
    vlUfCod := Copy(Self.cfgcddcodigo.AsString, 1, 2);

    vlNrNFCe := mesmesnumero.AsInteger;
    if mesmesserie.AsString <> '' then
      vlNrSer := mesmesserie.AsInteger
    else
      vlNrSer := 1;

    vlCNPJ := SomenteNumeros(vlCNPJ);

    // nome da nota com emissao normal
    vlArqNFCe := Copy(vlUfCod, 1, 2);
    vlArqNFCe := vlArqNFCe + FormatDateTime('yymm', vData);
    vlArqNFCe := vlArqNFCe + vlCNPJ;
    vlArqNFCe := vlArqNFCe + '65';
    vlArqNFCe := vlArqNFCe + FormatFloat('000', vlNrSer);
    vlArqNFCe := vlArqNFCe + FormatFloat('000000000', vlNrNFCe);
    vlArqNFCe := vlArqNFCe + '1';
    vlArqNFCe := vlArqNFCe + FormatFloat('00000000', vlNrNFCe);
    vlArqNFCe := vlArqNFCe + Modulo11(Trim(vlArqNFCe));
    vlArqNFCe := vlArqNFCe + '-nfe.xml';

    vlArqNFCe := vpPastaPrincipal + vpSubPastaDoc + '\' + FormatDateTime('yyyymm', vData) + '\' + vlArqNFCe;

    if FileExists(vlArqNFCe) then
      Exit;

    (* Tenta encontrar arquivo da NFCe com emissão em CONTINGÊNCIA - CÓD 2 *)
    vlArqNFCe := Copy(vlUfCod, 1, 2);
    vlArqNFCe := vlArqNFCe + FormatDateTime('yymm', vData);
    vlArqNFCe := vlArqNFCe + vlCNPJ;
    vlArqNFCe := vlArqNFCe + '65';
    vlArqNFCe := vlArqNFCe + FormatFloat('000', vlNrSer);
    vlArqNFCe := vlArqNFCe + FormatFloat('000000000', vlNrNFCe);
    vlArqNFCe := vlArqNFCe + '2';
    vlArqNFCe := vlArqNFCe + FormatFloat('00000000', vlNrNFCe);
    vlArqNFCe := vlArqNFCe + Modulo11(Trim(vlArqNFCe));
    vlArqNFCe := vlArqNFCe + '-nfe.xml';

    vlArqNFCe := vpPastaPrincipal + vpSubPastaDoc + '\' + FormatDateTime('yyyymm', vData) + '\' + vlArqNFCe;

    if FileExists(vlArqNFCe) then
      Exit;

    (* Tenta encontrar arquivo da NFCe com emissão em CONTINGÊNCIA OFFLINE - CÓD 9 *)
    vlArqNFCe := Copy(vlUfCod, 1, 2);
    vlArqNFCe := vlArqNFCe + FormatDateTime('yymm', vData);
    vlArqNFCe := vlArqNFCe + vlCNPJ;
    vlArqNFCe := vlArqNFCe + '65';
    vlArqNFCe := vlArqNFCe + FormatFloat('000', vlNrSer);
    vlArqNFCe := vlArqNFCe + FormatFloat('000000000', vlNrNFCe);
    vlArqNFCe := vlArqNFCe + '9';
    vlArqNFCe := vlArqNFCe + FormatFloat('00000000', vlNrNFCe);
    vlArqNFCe := vlArqNFCe + Modulo11(Trim(vlArqNFCe));
    vlArqNFCe := vlArqNFCe + '-nfe.xml';

    vlArqNFCe := vpPastaPrincipal + vpSubPastaDoc + '\' + FormatDateTime('yyyymm', vData) + '\' + vlArqNFCe;

    if FileExists(vlArqNFCe) then
      Exit;

    (* Se chegou até aqui é porque arquivo não existe *)
    vlArqNFCe := '';
  finally
    Result := vlArqNFCe;
  end;
end;

function Tfnfce.GeraNomeArqNFCeTipo(vMesChave: string; vTipoEmissao: Integer; vFlaCodigo: string = '1'): string;
var
  vlArqNFCe: String;
  vlData: Double;
  vlCNPJ: String;
  vlNrNFCe, vlNrSer: Integer;
  vlUfCod: string;
begin
  mes.Close;
  mes.Params[0].AsString := vMesChave;
  mes.Params[1].AsString := vFlaCodigo;
  mes.Open;

  if mesmesnumero.AsInteger = 0 then
    Exit;

  if mesmesdatanfe.AsFloat = 0 then
    vlData := mesmesregistro.AsFloat
  else
    vlData := mesmesdatanfe.AsFloat;

  (* Carrega dados para formação do nome do arquivo *)
  vlCNPJ := SomenteNumeros(Self.cfgetddoc1.AsString);
  vlUfCod := Copy(Self.cfgcddcodigo.AsString, 1, 2);

  vlNrNFCe := mesmesnumero.AsInteger;
  vlNrSer := mesmesserie.AsInteger;
  vlCNPJ := SomenteNumeros(vlCNPJ);

  (* Gera chave *)
  vlArqNFCe := Copy(vlUfCod, 1, 2);
  vlArqNFCe := vlArqNFCe + FormatDateTime('yymm', vlData);
  vlArqNFCe := vlArqNFCe + vlCNPJ;
  vlArqNFCe := vlArqNFCe + '65';
  vlArqNFCe := vlArqNFCe + FormatFloat('000', vlNrSer);
  vlArqNFCe := vlArqNFCe + FormatFloat('000000000', vlNrNFCe);

  (* Define o tipo de emissão - 1=Normal 2=Contingencia 9=ContingenciaOffLine *)
  vlArqNFCe := vlArqNFCe + IntToStr(vTipoEmissao);

  vlArqNFCe := vlArqNFCe + FormatFloat('00000000', vlNrNFCe);
  vlArqNFCe := vlArqNFCe + Modulo11(Trim(vlArqNFCe));
  vlArqNFCe := vlArqNFCe + '-nfe.xml';

  vlArqNFCe := vpPastaPrincipal + vpSubPastaDoc + '\' + FormatDateTime('yyyymm', vlData) + '\' + vlArqNFCe;

  Result := vlArqNFCe;
end;

function Tfnfce.VerificaExistencia(vMesChave: string; vFlaCodigo: string = '1'): Boolean;
begin
  Result := False;

  if FileExists(vpNomeArquivoNFCe) then
    if AjustaSituacaoNFCe(vMesChave, vFlaCodigo) then
      Result := True;
end;

function Tfnfce.ConsultaNFCe(vMesChave, vArqNFCe: String; vFlaCodigo: string = '1'): Boolean;
Var
  nProt: String;
  vnrnfe: String;
  vchNFe: String;
  vdtNFe: String;
  vhrNFe: String;
  vCodStatusNFe: String;
  vMsgStatusNFe: String;
  vRetorno: Boolean;
Begin
  vRetorno := False;

  try
    If not FileExists(vArqNFCe) Then
      Exit;

    ACBrNFe.NotasFiscais.Clear;
    ACBrNFe.Configuracoes.Geral.VersaoQRCode := veqr200;

    ACBrNFe.NotasFiscais.LoadFromFile(vArqNFCe);
    ACBrNFe.Configuracoes.WebServices.Visualizar := False;
    ACBrNFe.Consultar;

    vdtNFe := DateToStr(ACBrNFe.WebServices.consulta.DhRecbto);
    vhrNFe := TimeToStr(ACBrNFe.WebServices.consulta.DhRecbto);

    nProt := ACBrNFe.WebServices.consulta.Protocolo;
    vchNFe := ACBrNFe.WebServices.consulta.NFeChave;

    vCodStatusNFe := IntToStr(ACBrNFe.WebServices.consulta.cStat);
    vMsgStatusNFe := ACBrNFe.WebServices.consulta.xMotivo;

    vnrnfe := IntToStr(ACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNF);

    (* Verifica código de retorno é igual a 100 - Uso Autorizado *)
    If (ACBrNFe.WebServices.consulta.cStat = 100) or (ACBrNFe.WebServices.consulta.cStat = 104) Then
      Try
        vRetorno := True;

        { consulta.Close;
          consulta.SQL.Text := 'set @disable_triggers=1';
          consulta.ExecSQL; }

        consulta.Close;
        consulta.SQL.Text := 'UPDATE mes SET ';
        consulta.SQL.Add('mesregistro = ''' + ajustadata(vdtNFe) + ''', ');
        consulta.SQL.Add('mesnumero = ''' + vnrnfe + ''', ');
        consulta.SQL.Add('meschavenfe = ''' + vchNFe + ''', ');
        consulta.SQL.Add('tdfcodigo = ''65'', ');
        consulta.SQL.Add('temcodigo = 5, ');
        consulta.SQL.Add('mesprotocolo = ''' + nProt + ''' WHERE ');
        consulta.SQL.Add('meschave = ' + vMesChave + ' and flacodigo=' + vFlaCodigo);
        consulta.ExecSQL;

        { consulta.Close;
          consulta.SQL.Text := 'set @disable_triggers=null';
          consulta.ExecSQL; }

        consulta.Close;
        consulta.SQL.Text := 'select mesregistro,mesnumero, meschavenfe,tdfcodigo,mesprotocolo from mes where meschave=' + vMesChave;
        consulta.Open;

        ShowMessage('Emissão: ' + consulta.Fields[0].AsString + ''#13'' + (* *)
          'Nr. NFE: ' + consulta.Fields[1].AsString + ''#13'' + (* *)
          'Chave  : ' + consulta.Fields[2].AsString + ''#13'' + #13 + #13 + (* *)
          'Código Status: ' + vCodStatusNFe + #13 + (* *)
          'Status - NFE : ' + vMsgStatusNFe + #13 + (* *)
          'Protocolo Nr.: ' + nProt + #13 + (* *)
          'Data  e  Hora: ' + vdtNFe + ' - ' + vhrNFe);

        consulta.Close;

      Except
      End;
  finally
    Result := vRetorno;
  end;
End;

function Tfnfce.EmiteNFCe(vMesChave: string; vImprimir: Boolean; vFlaCodigo: string = '1'): Boolean;
begin

  { consulta.Close;
    consulta.SQL.Text := 'select etdnfemodelos from etd,mes where etd.etdcodigo=mes.etdcodigo and mes.etdcodigo=' + vpMesChave;
    consulta.Open;

    if (consulta.FieldByName('etdnfemodelos').AsString = '99') or (consulta.FieldByName('etdnfemodelos').AsString = '65') then
    begin }

  try
    Result := False;

    { if not vpConsultouSEFAZ then
      begin
      vpConsultaVisivel := False;
      ConsultaServicoSEFAZNFCE;
      end; }

    PlTitulo.Caption := 'Gerar NFC-e';
    info.Lines.Add('Inicio: ' + datetimetostr(now));
    fnfce.Show;
    mostra.max := 10;
    application.ProcessMessages;

    plestagio.Caption := 'Carga dos dados';

    info.Lines.Add('Abrindo movimento: ' + datetimetostr(now));

    mes.Close;
    mes.Params[0].AsString := vMesChave;
    mes.Params[1].AsString := vFlaCodigo;
    mes.Open;

    mostra.position := 2;
    application.ProcessMessages;

    info.Lines.Add('Movimento aberto: ' + datetimetostr(now));

    plestagio.Caption := 'Ajusta pastas';

    (* Ajusta caminho para poder localizar arquivo com base na data do campo mesregistro *)
    AjustaCaminhoGeralNF(Self.mesmesregistro.AsFloat);
    plestagio.Caption := 'Verifica pré-existencia';
    mostra.position := 3;
    application.ProcessMessages;

    info.Lines.Add('Verificando pre-existencia da NFE: ' + datetimetostr(now));

    (* Verifica se NFCe já existe na base do SEFAZ *)
    { if VerificaExistencia(vMesChave) then
      Exit;

      info.Lines.Add('Verifica pre-existencia da NFE: ' + datetimetostr(now)); }

    plestagio.Caption := 'Recarrega Dados';

    info.Lines.Add('Reabrindo movimento: ' + datetimetostr(now));
    mostra.position := 4;
    application.ProcessMessages;

    { mes.Close;
      mes.Params[0].AsString := vMesChave;
      mes.Params[1].AsString := vFlaCodigo;
      mes.Open; }

    info.Lines.Add('Reaberto movimento: ' + datetimetostr(now));

    plestagio.Caption := 'Consulta Pastas';

    (* Ajusta caminho para data atual pois não é uma NFE válida *)
    AjustaCaminhoGeralNF(vpDataAtual);

    plestagio.Caption := 'Valida consumidor';

    info.Lines.Add('Validando consumidor: ' + datetimetostr(now));

    (* Se NÃO validar o cadastro do destinatário abandona emissão *)
    { if not ValidaConsumidor(vMesChave, fnfce.vpFlacodigo) then
      Exit; }

    info.Lines.Add('Consumidor validado: ' + datetimetostr(now));

    plestagio.Caption := 'Valida produtos';

    info.Lines.Add('Validando produtos: ' + datetimetostr(now));

    (* Se NÃO validas os itens do registros abandona a geração da NFCe *)
    if not ValidaProdutos(vMesChave) then
      Exit;

    info.Lines.Add('Produtos validados: ' + datetimetostr(now));

    plestagio.Caption := 'Gera NFC-e';

    info.Lines.Add('Gerando NFCE: ' + datetimetostr(now));

    (* Se retornou erro na geração da NFCe abandona *)
    if not GeraNFCe(vMesChave, fnfce.vpFlacodigo) then
      Exit;
    mostra.position := 5;
    application.ProcessMessages;

    info.Lines.Add('NFCE Gerada: ' + datetimetostr(now));

    (*
      Identifica situação do Web Service da SEFAZ
      Se não estiver normal salva NFe como Contingência
    *)
    if not vpWSNormal then
    begin
      plestagio.Caption := 'Salva em contingencia';
      mostra.position := 6;
      application.ProcessMessages;

      if Self.SalvaEmCoontigencia(ACBrNFe, vMesChave) then
      begin
        vpNomeArquivoNFCe := GeraNomeArqNFCe(vMesChave, vFlaCodigo);

        plestagio.Caption := 'Imprime a nota';

        info.Lines.Add('Imprimindo NFCE: ' + datetimetostr(now));

        if vImprimir then
          ImprimeNFCe(vMesChave, fnfce.vpFlacodigo);
        info.Lines.Add('NFCE Impressa: ' + datetimetostr(now));

        Result := True;
      end;
    end
    else if Self.SalvaNormal(ACBrNFe, vMesChave) then
    begin
      mostra.position := 7;
      application.ProcessMessages;

      plestagio.Caption := 'Salva normal';

      info.Lines.Add('Imprimindo NFCE: ' + datetimetostr(now));

      vpNomeArquivoNFCe := GeraNomeArqNFCe(vMesChave, vFlaCodigo);
      mostra.position := 8;
      application.ProcessMessages;

      if vImprimir then
        ImprimeNFCe(vMesChave, fnfce.vpFlacodigo);
      info.Lines.Add('NFCE Impressa: ' + datetimetostr(now));

      Result := True;
    end;
  finally
    mostra.position := 10;
    application.ProcessMessages;

    if not DirectoryExists(ExtractFilePath(application.ExeName) + 'logsnfce') then
      ForceDirectories(ExtractFilePath(application.ExeName) + 'logsnfce');

    info.Lines.SaveToFile(ExtractFilePath(application.ExeName) + 'logsnfce\' + FormatDateTime('yyyymmddnnss', now()) + '.txt');

    fnfce.Close;
  end;
  { end
    else
    begin
    ShowMessage('Documento fiscal não autorizado para este cliente!');
    Exit;
    end; }

end;

procedure Tfnfce.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := cafree;
end;

procedure Tfnfce.FormShow(Sender: TObject);
begin
  inherited;
  Self.Width := 520;
  Self.Height := 230;

  ACBrNFeDANFCEFR1.Sistema := '(66)3544-2765 Mizio Sistemas';
  ACBrNFe.DANFE := ACBrNFeDANFCEFR1;

end;

function Tfnfce.ImprimeNFCe(vMesChave: string; vFlaCodigo: string = '1'; vVisualizar: Boolean = False): Boolean;
var
  vlArqCompro: string;

begin
  cfg.Close;
  cfg.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  cfg.Open;

  Result := False;

  mes.Close;
  mes.Params[0].AsString := vMesChave;
  mes.Params[1].AsString := vFlaCodigo;
  mes.Open;

  AjustaCaminhoGeralNF(Self.mesmesregistro.AsFloat);
  vpNomeArquivoNFCe := Self.GeraNomeArqNFCe(vMesChave, vFlaCodigo);

  if vpNomeArquivoNFCe = '' then
    Exit;

  If FileExists(ExtractFilePath(application.ExeName) + 'report\DANFeNFCe.fr3') Then
  Begin
    qDtl.Close;
    qDtl.SQL.Clear;
    qDtl.SQL.Add('SELECT lte.ltetroco ');
    qDtl.SQL.Add('  FROM rfm ');
    qDtl.SQL.Add(' INNER JOIN mfi ON rfm.rfichave = mfi.rfichave ');
    qDtl.SQL.Add(' INNER JOIN mlt ON mlt.mfichave = mfi.mfichave ');
    qDtl.SQL.Add(' INNER JOIN lte ON mlt.ltechave = lte.ltechave ');
    qDtl.SQL.Add(' WHERE rfm.meschave = ' + vMesChave);
    qDtl.Open;

    (* Troco *)
    { if not qDtl.IsEmpty then
      ACBrNFeDANFEFR.vTroco := qDtl.Fields[0].AsFloat; }

    (* Operador *)
    ACBrNFeDANFCEFR1.Usuario := mesclbidentificacao.AsString;

    if Length(trmtciporta.AsAnsiString) > 0 then
    begin
      Panel1.Caption := 'Imprimindo em ' + Self.trmtciporta.AsAnsiString + ', aguarde ...';
      application.ProcessMessages;
      ACBrNFeDANFCEFR1.Impressora := Self.trmtciporta.AsAnsiString;
    end;

    { if Length(trmtciporta.AsAnsiString) > 0 then
      if IsValidatePrinter(trmtciporta.AsAnsiString) then
      ACBrNFeDANFEFR.Impressora := Self.trmtciporta.AsAnsiString; }

    if vVisualizar then
    begin
      ACBrNFeDANFCEFR1.MostraPreview := True;
      ACBrNFeDANFCEFR1.MostraStatus := True;
      ACBrNFeDANFCEFR1.MostraSetup := True;

    end
    else
    begin
      ACBrNFeDANFCEFR1.MostraPreview := False;
      ACBrNFeDANFCEFR1.MostraStatus := False;

    end;

    { if Length(ACBrNFeDANFEFR.Impressora) = 0 then
      begin
      ACBrNFeDANFEFR.MostrarPreview := True;
      ACBrNFeDANFEFR.MostrarStatus := True;
      ACBrNFeDANFEFR.ShowDialog := True;
      end; }

    ACBrNFeDANFCEFR1.FastFile := ExtractFilePath(application.ExeName) + 'report\DANFeNFCe.fr3';

    ACBrNFe.NotasFiscais.Clear;
    ACBrNFe.NotasFiscais.LoadFromFile(vpNomeArquivoNFCe);

    if vVisualizar then
    begin
      ACBrNFeDANFCEFR1.MostraPreview := True;
      ACBrNFeDANFCEFR1.MostraStatus := True;
      ACBrNFeDANFCEFR1.MostraSetup := True;
      ACBrNFe.NotasFiscais.Imprimir;

    end
    else
    begin
      if application.MessageBox(PChar('Cliente necessita do comprovante?' + #13 + 'Imprimir NFC-e?'), 'Atenção', MB_YESNO + MB_ICONWARNING) = IDYES then
      begin

        if cfgcfgprevisualizarimpressao.AsInteger = 1 then
        begin
          if vVisualizar then
          begin
            ACBrNFeDANFCEFR1.MostraPreview := True;
            ACBrNFeDANFCEFR1.MostraStatus := True;
            ACBrNFeDANFCEFR1.MostraSetup := True;
            ACBrNFe.NotasFiscais.Imprimir;

          end
          else
          begin

            ACBrNFeDANFCEFR1.MostraPreview := True;
            ACBrNFeDANFCEFR1.MostraStatus := True;

            ACBrNFe.NotasFiscais.Imprimir;
          end;
        end
        else
        begin
          ACBrNFeDANFCEFR1.MostraPreview := False;
          ACBrNFeDANFCEFR1.MostraStatus := False;

          ACBrNFe.NotasFiscais.Imprimir;
        end;

      end;

    end;

    ACBrNFeDANFCEFR1.PathPDF := vpPastaPrincipal + 'pdfs\';
    ACBrNFe.NotasFiscais.ImprimirPDF;
    ACBrNFe.NotasFiscais.Clear;

    Result := True;

    if cfgcfgviaassinar.AsInteger = 0 then
      Exit;

    (* Identifica se houve parte de pagamento a prazo *)
    consulta.Close;
    consulta.SQL.Clear;
    consulta.SQL.Add('SELECT rfm.meschave FROM rfm, mfi, mlt, dtl ');
    consulta.SQL.Add(' WHERE mfi.rfichave  = rfm.rfichave ');
    consulta.SQL.Add('   AND mfi.mfichave  = mlt.mfichave ');
    consulta.SQL.Add('   AND mlt.ltechave  = dtl.ltechave ');
    consulta.SQL.Add('   AND dtl.mdacodigo = 7 ');
    consulta.SQL.Add('   AND rfm.meschave  = ' + vMesChave);
    consulta.Open;

    if not consulta.IsEmpty then
    begin
      if vVisualizar then
      begin
        ImprimirComprovantesPDV(application, zcone, vMesChave, ExtractFilePath(application.ExeName) + 'Report\viaassinar.fr3', trmtciporta.AsString, tiImprimir);
      end
      else
      begin
        ImprimirComprovantesPDV(application, zcone, vMesChave, ExtractFilePath(application.ExeName) + 'Report\viaassinar.fr3', trmtciporta.AsString, tiImprimirDireto);
      end;
    end;
  End;
end;

function Tfnfce.EmailNFCe(vMesChave: string; vFlaCodigo: string = '1'; vVisualizar: Boolean = False; vemails: string = ''): Boolean;
var
  vlArqCompro: string;
  xml, pdf: string;
begin
  Result := False;

  mes.Close;
  mes.Params[0].AsString := vMesChave;
  mes.Params[1].AsString := vFlaCodigo;
  mes.Open;

  AjustaCaminhoGeralNF(Self.mesmesregistro.AsFloat);
  vpNomeArquivoNFCe := Self.GeraNomeArqNFCe(vMesChave, vFlaCodigo);

  if vpNomeArquivoNFCe = '' then
    Exit;

  If FileExists(ExtractFilePath(application.ExeName) + 'report\DANFeNFCe.fr3') Then
  Begin
    qDtl.Close;
    qDtl.SQL.Clear;
    qDtl.SQL.Add('SELECT lte.ltetroco ');
    qDtl.SQL.Add('  FROM rfm ');
    qDtl.SQL.Add(' INNER JOIN mfi ON rfm.rfichave = mfi.rfichave ');
    qDtl.SQL.Add(' INNER JOIN mlt ON mlt.mfichave = mfi.mfichave ');
    qDtl.SQL.Add(' INNER JOIN lte ON mlt.ltechave = lte.ltechave ');
    qDtl.SQL.Add(' WHERE rfm.meschave = ' + vMesChave);
    qDtl.Open;

    (* Troco *)
    { if not qDtl.IsEmpty then
      ACBrNFeDANFEFR.vTroco := qDtl.Fields[0].AsFloat; }

    (* Operador *)
    ACBrNFeDANFCEFR1.Usuario := mesclbidentificacao.AsString;

    if Length(trmtciporta.AsAnsiString) > 0 then
    begin
      Panel1.Caption := 'Prepagando email em ' + Self.trmtciporta.AsAnsiString + ', aguarde ...';
      application.ProcessMessages;
      ACBrNFeDANFCEFR1.Impressora := Self.trmtciporta.AsAnsiString;
    end;

    ACBrNFeDANFCEFR1.MostraPreview := False;
    ACBrNFeDANFCEFR1.MostraStatus := False;

    ACBrNFeDANFCEFR1.FastFile := ExtractFilePath(application.ExeName) + 'report\DANFeNFCe.fr3';

    ACBrNFe.NotasFiscais.Clear;
    ACBrNFe.NotasFiscais.LoadFromFile(vpNomeArquivoNFCe);

    xml := vpNomeArquivoNFCe;
    ACBrNFeDANFCEFR1.MostraPreview := False;
    ACBrNFeDANFCEFR1.MostraStatus := False;

    // ACBrNFe.NotasFiscais.Imprimir;

    ACBrNFeDANFCEFR1.PathPDF := vpPastaPrincipal + 'pdfs\';
    ACBrNFe.NotasFiscais.ImprimirPDF;
    pdf := ChangeFileExt(vpPastaPrincipal + 'pdfs\' + extractfilename(xml), '.pdf');

    ACBrNFe.NotasFiscais.Clear;

    EnviarEmail(vemails, '', 'NFCE emitida, enviada conforme sua solicitação', 'Segue Nota fiscal ao Consumidor solicitada.', xml, pdf, 'CONSUMIDOR', cfgetdapelido.AsString);

    Result := True;

  End;
end;

Function Tfnfce.EnviarEmail(destino, copias, texto, assunto, xml, pdf, nome_cliente, nome_empresa: String): Boolean;
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
    application.MessageBox(PChar('Email do emitente não cadastrado.' + #13 + #13 + 'Entre em contato com suporte da Mizio Sistemas - (66) 3544-2765.'), 'ATENÇÃO',
      MB_OK + MB_ICONWARNING);
    Exit;
  end;

  if (Trim(destino) = '') and (Trim(copias) = '') then
  begin
    application.MessageBox(PChar('Nenhum email cadastrado para envio.' + #13 + #13 + 'Verifique no cadastro da entidade!!'), 'ATENÇÃO', MB_OK + MB_ICONWARNING);
    Exit;
  end;

  Inicializar;
  Try

    IdMessage1.Clear;
    IdMessage1.Body.Clear;
    IdMessage1.Body.Text := texto + #13 + #13;
    IdMessage1.Subject := assunto; // Assunto
    IdMessage1.From.Text := LowerCase(cfgcfgemailnfe.AsString); // Email de envio da mensagem
    IdMessage1.From.Name := nome_empresa; // Nome para apresentação
    IdMessage1.CCList.EMailAddresses := copias; // Com cópia
    IdMessage1.BccList.EMailAddresses := '';
    IdMessage1.Recipients.EMailAddresses := destino; // email destino
    IdMessage1.ReceiptRecipient.Text := IdMessage1.From.Text;

    if FileExists(xml) then
      Attachmentxml := TIdAttachmentFile.Create(IdMessage1.MessageParts, xml);

    if FileExists(pdf) then
      Attachmentpdf := TIdAttachmentFile.Create(IdMessage1.MessageParts, pdf);

    // Conectando e enviando
    Try
      SMTP.Connect; // Inicia conexão

      If SMTP.Connected Then
      Begin

        SMTP.Send(IdMessage1); // Se conectado envia email

        vEnviado := True;
        SMTP.Disconnect; // Desconecta

        Attachmentxml.Free;
        Attachmentpdf.Free;
      End;
    Except
      On e: Exception Do // Definição da variável e do tipo Exception
      Begin
        vEnviado := False;

        vlMensagemErro := 'Não foi possível enviar o email.' + #13 + #13 + 'Mensagem: ' + #13 + e.Message;
        application.MessageBox(PChar(vlMensagemErro), 'Erro Envio de Email', MB_OK + MB_ICONERROR);

        SalvarLogErro(e.Message, e.StackTrace);

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

procedure Tfnfce.Inicializar;
begin

  cfg.Close;
  cfg.ParamByName('flacodigo').AsString := Acesso.Filial.ToString;
  cfg.Open;

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
    ConnectTimeout := 30000;
    ReadTimeout := 30000;
  end;

  with IO_OpenSSL do
  begin
    SSLOptions.Method := sslvSSLv23;
    SSLOptions.Mode := sslmClient;
  end;

  // fnfe.LerConfiguracao;
end;

function Tfnfce.GeraNFCe(vMesChave: string; vFlaCodigo: string = '1'): Boolean;
Var
  vErro: String;
  vMensagemErro: String;

  vMsgRetorno: String;

  vNumeroNFe: Integer;
  vChaveNFE: String;
  vProtocoloNFe: String;

  (* Acumuladores - Totais NFCe *)
  vlQtdItens: Integer;

  vlTotBC: Double;
  vlTotICMS: Double;

  vlTotDesc: Double;
  vlTotBruto: Double;
  vlTotLiq: Double;

  (* Carga Tributária *)
  vlTotTrib: Double;
  vlTotTribEst: Double;
  vlMensagemCargaTrib: string;

  (* Retornos da SEFAZ *)
  vCStat: Integer;
  vXMotivo: String;

  vDinheiro: Double;
  vChequeProprio: Double;
  vChequeTerceiros: Double;
  vCartaoDebito: Double;
  vCartaoCredito: Double;
  vViaBanco: Double;
  vConvenio: Double;
  vAFaturar: Double;
  vlTroco: Double;
  vTrocaDevolucao: Double;
  vVale: Double;
  vDoacao: Double;

  vlTotalItens: Double;
  vlTotalFinalizadores: Double;
  vlPercentualProdutos: Double;
  vlValorDiferenca: Double;

  (* CST e CSOSN *)
  vlCSTIcmsOK: Boolean;
  vlCSTIcms: TpcnCSTIcms;

  vlCSOSNIcmsOK: Boolean;
  vlCSOSNIcms: TpcnCSOSNIcms;
  ok: Boolean;

  { * exibe limite do cliente * }
  vlMensagemLimite: string;
  vlDatatual: string;

Begin
  info.Lines.Add('Inicio abertura tabelas: ' + datetimetostr(now));

  Result := False;

  vlQtdItens := 0;

  vlTotBC := 0;
  vlTotICMS := 0;

  vlTotDesc := 0;
  vlTotBruto := 0;
  vlTotLiq := 0;

  vlTotTrib := 0;
  vlTotTribEst := 0;
  vlMensagemCargaTrib := '';


  //
  // ****** Carrega consulta da tabela mes e itm ********
  //

  { mes.Close;
    mes.Params[0].AsString := vMesChave;
    mes.Params[1].AsString := vFlaCodigo;
    mes.Open; }

  itm.Close;
  itm.Params[0].AsString := vMesChave;
  itm.Params[1].AsString := vFlaCodigo;
  itm.Open;

  etd.Close;
  etd.ParamByName('etdcodigo').AsInteger := mesetdcodigo.AsInteger;
  etd.ParamByName('edritem').AsInteger := mesedritem.AsInteger;
  etd.Open;

  mic.Close;
  mic.Params[0].AsString := vMesChave;
  mic.Open;

  oic.Close;
  oic.Params[0].AsString := vMesChave;
  oic.Open;
  toe.Close;
  toe.SQL.Text := 'select ttecodigo,toeidentificacao,toecodigo,ttocodigo from toe where toecodigo=' + mestoecodigo.AsString;
  toe.Open;

  info.Lines.Add('Tabelas abertas: ' + datetimetostr(now));

  //
  // ***** Inicia GERAÇÃO da NFe *****
  //

  ACBrNFe.NotasFiscais.Clear;
  ACBrNFe.Configuracoes.Geral.VersaoQRCode := veqr200;
  Try

    With ACBrNFe.NotasFiscais.Add.NFe Do
    Begin

      (*
        *
        ********* Identificação da NFe - IDE ********
        *
      *)

      Ide.cUF := cfgufscodigo.AsInteger;
      // Ide.cNF -> Código da NFe definido por último.

      Ide.natOp := 'VENDA';

      Ide.hSaiEnt := vpDataAtual;

      // Ide.cNF -> Número da NFe definido por último.

      infNFe.Versao := cfgcfgversao.AsFloat;

      // infNFe.Versao :=StrTofloat( buscatroca( floattostr( cfgcfgversao.AsFloat),',','.'));

      if not vpWSNormal then
      begin
        Ide.hSaiEnt := mesmesemissao.AsDateTime;
        Ide.dEmi := mesmesemissao.AsDateTime;
        Ide.dSaiEnt := mesmesemissao.AsDateTime;
        Ide.hSaiEnt := mesmesemissao.AsDateTime;

      end
      else
      begin

        Ide.dEmi := vpDataAtual;
        Ide.dSaiEnt := vpDataAtual;
        Ide.hSaiEnt := vpDataAtual;
      end;

      vlDatatual := datetimetostr(vpDataAtual);

      Ide.indPag := ipVista;
      Ide.cUF := UFtoCUF(cfgufssigla.AsString);
      Ide.cMunFG := cfgcddcodigo.AsInteger;

      Ide.idDest := doInterna;

      Ide.finNFe := fnNormal;
      Ide.tpImp := tiNFCe;
      Ide.indFinal := cfConsumidorFinal;
      Ide.indPres := pcPresencial;
      Ide.modelo := 65;
      Ide.serie := cfgcfgserienfce.AsInteger;
      Ide.tpNF := tnSaida;

      if vpWSNormal then
      begin
        ACBrNFe.Configuracoes.Geral.FormaEmissao := teNormal;
        Ide.tpEmis := teNormal;
      end
      else
      begin
        if rec.Active = False then
          rec.Open;

        ACBrNFe.Configuracoes.Geral.FormaEmissao := teOffLine;
        Ide.tpEmis := teOffLine;
        Ide.dhCont := mesmesemissao.AsDateTime; // recrecdthoraentrada.AsFloat;
        Ide.xJust := 'Falha de comunicação com servidores da SEFAZ.';

      end;

      Ide.cMunFG := cfgcddcodigo.AsInteger;

      if cfgcfgmodonfe.AsInteger = 2 then
        Ide.tpAmb := taHomologacao;

      if cfgcfgmodonfe.AsInteger = 1 then
        Ide.tpAmb := taProducao;

      Ide.verProc := 'mizio_2018.8.0.1';

      (*
        *
        ****** Emitente da NFC-e - EMIT ********
        *
      *)

      Emit.CNPJCPF := SomenteNumeros(cfgetddoc1.AsString);
      Emit.IE := SomenteNumeros(cfgedrinscest.AsString);
      Emit.IEST := '';
      Emit.xNome := cfgetdidentificacao.AsString;
      Emit.xFant := cfgetdapelido.AsString;
      Emit.EnderEmit.fone := cfgetftelefone.AsString;
      Emit.EnderEmit.CEP := StrToInt(SomenteNumeros(cfgedrcep.AsString));
      Emit.EnderEmit.xLgr := cfgedrrua.AsString;
      Emit.EnderEmit.nro := cfgedrnumero.AsString;
      Emit.EnderEmit.xCpl := '';
      Emit.EnderEmit.xBairro := cfgedrbairro.AsString;
      Emit.EnderEmit.cMun := cfgcddcodigo.AsInteger;
      Emit.EnderEmit.xMun := cfgcddnome.AsString;
      Emit.EnderEmit.UF := UpperCase(cfgufssigla.AsString);
      Emit.EnderEmit.cPais := 1058;
      Emit.EnderEmit.xPais := 'BRASIL';

      case cfgcrtcodigo.AsInteger of
        1:
          Emit.CRT := crtSimplesNacional;
        2:
          Emit.CRT := crtSimplesExcessoReceita;
        3:
          Emit.CRT := crtRegimeNormal;
      end;

      (*
        *
        ********* Destinatário da NFe **********
        *
      *)

      if (Trim(LowerCase(etdetdidentificacao.AsString)) <> 'consumidor') and (ValidaConsumidor(vMesChave, vFlaCodigo)) then
      begin
        Dest.indIEDest := inNaoContribuinte;
        Dest.CNPJCPF := SomenteNumeros(Self.etdetddoc1.AsString);
        Dest.xNome := etdetdidentificacao.AsString;
        Dest.EnderDest.UF := etdufssigla.AsString;

        { Dest.CNPJCPF := SomenteNumeros(Self.etdetddoc1.AsString);
          Dest.EnderDest.CEP := StrToInt(SomenteNumeros(etdedrcep.AsString));
          Dest.EnderDest.xLgr := etdedrrua.AsString;
          Dest.EnderDest.nro := etdedrnumero.AsString;
          Dest.EnderDest.xCpl := '';
          Dest.EnderDest.xBairro := etdedrbairro.AsString;
          Dest.EnderDest.cMun := etdcddcodigo.AsInteger;
          Dest.EnderDest.xMun := etdcddnome.AsString;
          Dest.EnderDest.UF := UpperCase(etdufssigla.AsString);
          Dest.EnderDest.fone := etdetftelefone.AsString;

          Dest.indIEDest := inNaoContribuinte;
          Dest.IE := '';
          Dest.ISUF := '';

          Dest.xNome := etdetdidentificacao.AsString;
          Dest.EnderDest.cPais := 1058;
          Dest.EnderDest.xPais := 'BRASIL'; }
      end
      else
      begin
        if mic.RecordCount = 1 then
        begin
          Dest.indIEDest := inNaoContribuinte;
          Dest.CNPJCPF := SomenteNumeros(Self.micidcdoc.AsString);
          Dest.xNome := micidcnome.AsString;
          Dest.EnderDest.UF := Emit.EnderEmit.UF;
        end
        else if oic.RecordCount = 1 then
        begin
          Dest.indIEDest := inNaoContribuinte;
          Dest.CNPJCPF := SomenteNumeros(Self.oicidcdoc.AsString);
          Dest.xNome := oicidcnome.AsString;
          Dest.EnderDest.UF := Emit.EnderEmit.UF;
        end;
      end;

      (*
        *
        ********* Detalhamento de Produtos e Serviços - DET ***********
        *
      *)

      itm.Refresh;
      itm.IndexFieldNames := 'itmchave';
      itm.First;
      vlQtdItens := 1;

      toe.Close;
      toe.Connection := zcone;
      toe.SQL.Text := 'select toecodigo,ttecodigo,toeidentificacao,ttocodigo from toe where toecodigo=' + mestoecodigo.AsString;
      toe.Open;
      if toe.FieldByName('ttocodigo').AsInteger = 2 then
      begin
        VerifieAjustaItemcomSubstituicao(Emit.EnderEmit.UF, Dest.EnderDest.UF);
      end;

      itm.Close;
      itm.Params[0].AsString := vpMesChave;
      itm.Params[1].AsInteger := Acesso.Filial;
      itm.Open;

      itm.First;
      While Not itm.Eof Do
      Begin

        if cfgcfgusacstnoproduto.AsInteger = 0 then
        begin

          toeitm.Close;
          toeitm.Connection := zcone;
          toeitm.ParamByName('toecodigo').AsInteger := itmtoecodigo.AsInteger;
          toeitm.Open;

          itmcst.Close;
          itmcst.Connection := zcone;
          itmcst.ParamByName('itmchave').AsInteger := itmitmchave.AsInteger;
          itmcst.Open;

          itmcst.Edit;

          itmcstcstcodigo.AsString := toeitmcstcodigo.AsString;
          itmcstcsicodigo.AsString := toeitmcsicodigo.AsString;
          itmcstcspcodigo.AsString := toeitmcspcodigo.AsString;
          itmcstcsfcodigo.AsString := toeitmcsfcodigo.AsString;
          itmcstitmaliqpis.AsFloat := toeitmcfgpercentualpis.AsFloat;
          itmcstitmaliqcofins.AsFloat := toeitmcfgpercentualcofins.AsFloat;

          itmcst.Post;

        end;
        itm.Next;
      End;

      itm.Close;
      itm.Params[0].AsString := vpMesChave;
      itm.Params[1].AsInteger := Acesso.Filial;
      itm.Open;

      itm.First;
      While Not itm.Eof Do
      Begin

        With Det.Add Do
        Begin

          infAdProd := ''; // 'Teste de informacao adicional;Teste de Segunda Linha';
          Prod.nItem := vlQtdItens;
          Prod.ncm := SomenteNumeros(itmproncm.AsString);
          Prod.CFOP := Trim(Copy(itmcfocfop.AsString, 1, 1) + Copy(itmcfocfop.AsString, 2, 4));

          Prod.cProd := Self.itmprocodigo.AsString;

          ACBrValidadorBarra.TipoDocto := docGTIN;
          ACBrValidadorBarra.Documento := Copy(itmpunbarra.AsString, 2, 13);
          if ACBrValidadorBarra.Validar then
          begin
            if itmpunbarrasistema.AsInteger = 1 then
            begin
              Prod.cEAN := 'SEM GTIN';
              Prod.cEANTrib := Prod.cEAN;
            end
            else
            begin
              Prod.cEAN := Copy(itmpunbarra.AsString, 2, 13);
              Prod.cEANTrib := Prod.cEAN;
            end;
          end
          else
          begin
            Prod.cEAN := 'SEM GTIN';
            Prod.cEANTrib := Prod.cEAN;
          end;

          If cfgcfgdescrinfe.AsInteger = 0 Then
            Prod.xProd := BuscaTroca(Trim(itmpronome.AsString), '%', '');

          If cfgcfgdescrinfe.AsInteger = 1 Then
            Prod.xProd := BuscaTroca(Trim(itmpronomereduzido.AsString), '%', '');

          If (Copy(Prod.xProd, 1, 1) = '.') Then
            Prod.xProd := Trim(Copy(Prod.xProd, 2, 300));

          Prod.qCom := Self.itmitmquantidade.AsFloat;
          Prod.uCom := Self.itmunisimbolo.AsString;
          Prod.vProd := Self.itmitmtotal.AsFloat;
          Prod.vUnCom := Self.itmitmtotal.AsFloat / Self.itmitmquantidade.AsFloat;

          Prod.qTrib := Self.itmitmquantidade.AsFloat;
          Prod.vDesc := Self.itmitmdesconto.AsFloat;

          Prod.uTrib := Self.itmunisimbolo.AsString;
          Prod.vUnTrib := Self.itmitmtotal.AsFloat / Self.itmitmquantidade.AsFloat;

          vlTotDesc := vlTotDesc + Prod.vDesc;
          vlTotBruto := vlTotBruto + Prod.vProd;
          vlTotLiq := vlTotLiq + (vlTotBruto - vlTotDesc);

          With Imposto Do
          Begin

            Imposto.vTotTrib := itmitmcargatrib.AsFloat + itmitmcargatribest.AsFloat;

            (* Acumula totais de carga tributária por ente Federal e Estadual *)
            vlTotTrib := vlTotTrib + itmitmcargatrib.AsFloat;
            vlTotTribEst := vlTotTribEst + itmitmcargatribest.AsFloat;

            With ICMS Do
            Begin
              case Emit.CRT of
                crtSimplesNacional, crtSimplesExcessoReceita:
                  vlCSOSNIcms := StrToCSOSNIcms(vlCSOSNIcmsOK, itmcstcodigo.AsString);
                crtRegimeNormal:
                  vlCSTIcms := StrToCSTICMS(vlCSTIcmsOK, Copy(Self.itmcstcodigo.AsString, 2, 2));
              end;

              (* CST *)
              if vlCSTIcmsOK then
                CST := vlCSTIcms;

              (* CSOSN *)
              if vlCSOSNIcmsOK then
                CSOSN := vlCSOSNIcms;

              ICMS.modBC := dbiPrecoTabelado;
              If (LowerCase(Self.itmicmcodigo.AsString) = 'ff') Or (LowerCase(Self.itmicmcodigo.AsString) = 'ii') Or (LowerCase(Self.itmicmcodigo.AsString) = 'nn') Then
              Begin
                ICMS.pICMS := 0;
                ICMS.vICMS := 0;
                ICMS.vBC := 0;
              End
              Else
              Begin
                If (Self.itmitmicm.AsFloat = 0.01) or (Self.itmitmicm.AsFloat = 0) Then
                Begin
                  ICMS.pICMS := 0;
                  ICMS.vICMS := 0;
                  ICMS.vBC := 0;
                End
                Else
                Begin
                  ICMS.pICMS := Self.itmicmcodigo.AsFloat;
                  ICMS.vICMS := itmitmicm.AsFloat;
                  ICMS.vBC := itmitmbicm.Ascurrency;
                End;
              End;

              vlTotICMS := vlTotICMS + ICMS.vICMS;
              vlTotBC := vlTotBC + ICMS.vBC;
            End;

            pis.CST := StrToCSTPIS(ok, itmcspcodigo.AsString);
            COFINS.CST := StrToCSTCOFINS(ok, itmcsfcodigo.AsString);

          End;
          vlQtdItens := vlQtdItens + 1;

        End;

        itm.Next;
      End;

      (*
        *
        ******** Informações do Transporte da NF-e - TRANSP ********
        *
      *)

      Transp.modFrete := mfSemFrete;

      (*
        *
        ******* Totais da NFe *******
        *
      *)

      (* Trata mensagem referente Carga Tributária *)
      if (vlTotTrib + vlTotTribEst) > 0 then
      begin
        vlMensagemCargaTrib := 'Trib. aprox. R$ ';
        vlMensagemCargaTrib := vlMensagemCargaTrib + FormatFloat('#,###.00', RoundTo(vlTotTrib, -2)) + ' Federal';

        if vlTotTribEst > 0 then
          vlMensagemCargaTrib := vlMensagemCargaTrib + ' e ' + FormatFloat('#,###.00', RoundTo(vlTotTribEst, -2)) + ' Estadual';

        vlMensagemCargaTrib := vlMensagemCargaTrib + ';Fonte: IBPT 5oi7eW (Lei Federal 12.741/2012)';

      end;

      { * Exibe situação de credito do cliente * }
      vlMensagemLimite := '';

      limite.Close;
      limite.ParamByName('etdcodigo').AsInteger := mesetdcodigo.AsInteger;
      limite.Open;

      if not limite.IsEmpty then
      begin
        disponivel.Close;
        disponivel.ParamByName('etdcodigo').AsInteger := mesetdcodigo.AsInteger;
        disponivel.Open;
        if (mesetdcodigo.AsInteger <> 0) and (limiteetllimitetotal.Ascurrency > 0) then
        begin
          vlMensagemLimite := 'Limite R$ ' + FormatFloat('#,###.00', RoundTo(limiteetllimitetotal.Ascurrency, -2)) + #13 + 'Disponível R$ ' +
            FormatFloat('#,###.00', RoundTo(disponivelrfisaldocapital.Ascurrency - mesmestotal.Ascurrency, -2));
        end;

      end;

      InfAdic.infCpl := vlMensagemCargaTrib + #13 + ' ' + cfgcfgmensagempdv.AsString + #13 + #13 + mesmesobs.AsString + #13 + #13 + vlMensagemLimite;

      (*
        *
        ******* Totais da NFe *******
        *
      *)

      Total.ICMSTot.vTotTrib := RoundTo(vlTotTrib + vlTotTribEst, -2);
      Total.ICMSTot.vBC := vlTotBC;
      Total.ICMSTot.vICMS := RoundTo(vlTotICMS, -2);
      Total.ICMSTot.vProd := RoundTo(vlTotBruto, -2);
      Total.ICMSTot.vDesc := RoundTo(vlTotDesc, -2);
      Total.ICMSTot.vNF := RoundTo((vlTotBruto - vlTotDesc), -2);

      qDtl.Close;
      qDtl.SQL.Text := 'SELECT distinct  dtl.dtlvalor,  rfm.meschave,   dtl.mdacodigo, dtl.cedcodigo FROM rfm ';
      qDtl.SQL.Add('INNER JOIN mfi ON rfm.rfichave = mfi.rfichave ');
      qDtl.SQL.Add('INNER JOIN mlt ON mlt.mfichave = mfi.mfichave ');
      qDtl.SQL.Add('INNER JOIN dtl ON mlt.ltechave = dtl.ltechave ');
      qDtl.SQL.Add('WHERE rfm.meschave=' + Self.mesmeschave.AsString + ' ');
      qDtl.SQL.Add('GROUP BY dtl.mdacodigo ');
      qDtl.SQL.Add('ORDER BY dtl.mdacodigo');

      qDtl.Open;

      vDinheiro := 0;
      vChequeProprio := 0;
      vChequeTerceiros := 0;
      vCartaoDebito := 0;
      vCartaoCredito := 0;
      vViaBanco := 0;
      vConvenio := 0;
      vVale := 0;
      vDoacao := 0;
      vTrocaDevolucao := 0;

      vAFaturar := 0;

      vlTotalItens := 0;
      vlTotalFinalizadores := 0;
      vlPercentualProdutos := 0;

      vlTotalItens := RoundTo(vlTotBruto - vlTotDesc, -2);

      while not qDtl.Eof do
      begin
        if not(qDtl.FieldByName('mdacodigo').AsInteger in [11, 22, 33]) then
          vlTotalFinalizadores := vlTotalFinalizadores + qDtl.FieldByName('dtlvalor').Ascurrency;

        qDtl.Next;
      end;

      vlPercentualProdutos := mesmesprodutos.Ascurrency / mesmestotal.Ascurrency;

      qDtl.First;

      while not qDtl.Eof do
      begin
        case qDtl.FieldByName('mdacodigo').AsInteger of
          mdaDinheiro:
            vDinheiro := vDinheiro + qDtl.FieldByName('dtlvalor').Ascurrency;
          mdaTrocoDinheiro:
            begin
              // vDinheiro := vDinheiro - qDtl.FieldByName('dtlvalor').Ascurrency;
              vlTroco := vlTroco - qDtl.FieldByName('dtlvalor').Ascurrency;
            end;
          mdaChequeProprio:
            begin
              vChequeProprio := vChequeProprio + qDtl.FieldByName('dtlvalor').Ascurrency;
              vlTroco := vlTroco + qDtl.FieldByName('dtlvalor').Ascurrency;
            end;
          mdaTrocoChequeProprio:
            begin
              vChequeProprio := vChequeProprio - qDtl.FieldByName('dtlvalor').Ascurrency;
              vlTroco := vlTroco + qDtl.FieldByName('dtlvalor').Ascurrency;
            end;
          mdaChequeTerceiros:
            vChequeTerceiros := vChequeTerceiros + qDtl.FieldByName('dtlvalor').Ascurrency;
          mdaTrocoChequeTerceiros:
            vChequeTerceiros := vChequeTerceiros - qDtl.FieldByName('dtlvalor').Ascurrency;
          mdaCartaoDebito:
            vCartaoDebito := vCartaoDebito + qDtl.FieldByName('dtlvalor').Ascurrency;
          mdaCartaoCredito:
            vCartaoCredito := vCartaoCredito + qDtl.FieldByName('dtlvalor').Ascurrency;
          mdaViaBanco:
            vViaBanco := vViaBanco + qDtl.FieldByName('dtlvalor').Ascurrency;
          mdaConvenio:
            vConvenio := vConvenio + qDtl.FieldByName('dtlvalor').Ascurrency;
          mdaVale:
            vVale := vVale + qDtl.FieldByName('dtlvalor').Ascurrency;
          mdaDoacao:
            vDoacao := vDoacao + qDtl.FieldByName('dtlvalor').Ascurrency;

          mdaTrocaDevolucao:
            vTrocaDevolucao := vTrocaDevolucao + qDtl.FieldByName('dtlvalor').Ascurrency;

        end;
        qDtl.Next;
      end;

      if vDinheiro > 0 then
        if vlPercentualProdutos <> 0 then
          vDinheiro := vDinheiro * vlPercentualProdutos;

      if vChequeProprio > 0 then
        if vlPercentualProdutos <> 0 then
          vChequeProprio := vChequeProprio * vlPercentualProdutos;

      if vChequeTerceiros > 0 then
        if vlPercentualProdutos <> 0 then
          vChequeTerceiros := vChequeTerceiros * vlPercentualProdutos;

      if vCartaoDebito > 0 then
        if vlPercentualProdutos <> 0 then
          vCartaoDebito := vCartaoDebito * vlPercentualProdutos;

      if vCartaoCredito > 0 then
        if vlPercentualProdutos <> 0 then
          vCartaoCredito := vCartaoCredito * vlPercentualProdutos;

      if vConvenio > 0 then
        if vlPercentualProdutos <> 0 then
          vConvenio := vConvenio * vlPercentualProdutos;

      if vViaBanco > 0 then
        if vlPercentualProdutos <> 0 then
          vViaBanco := vViaBanco * vlPercentualProdutos;

      if vVale > 0 then
        if vlPercentualProdutos <> 0 then
          vVale := vVale * vlPercentualProdutos;

      if vDoacao > 0 then
        if vlPercentualProdutos <> 0 then
          vDoacao := vDoacao * vlPercentualProdutos;

      if vTrocaDevolucao > 0 then
        if vlPercentualProdutos <> 0 then
          vTrocaDevolucao := vTrocaDevolucao * vlPercentualProdutos;

      vlValorDiferenca := 0;
      vlValorDiferenca := vlTotalItens - (vDinheiro + vChequeProprio + vChequeTerceiros + vCartaoDebito + vCartaoCredito + vConvenio + vViaBanco + vVale + vTrocaDevolucao
        + vDoacao);

      vlValorDiferenca := RoundCurrency(vlValorDiferenca);

      if mesetdcodigo.AsInteger = 0 then
      begin
        if vDinheiro + vChequeProprio + vChequeTerceiros + vCartaoDebito + vCartaoCredito + vConvenio + vViaBanco + vTrocaDevolucao + vVale + vDoacao = 0 then
        begin
          vDinheiro := mesmestotal.Ascurrency;
          vlValorDiferenca := 0;
        end;

      end;

      if vDinheiro < 0 then
        vlValorDiferenca := vDinheiro;

      if vlTroco < 0 then
        vlTroco := vlTroco * -1;

      if vlTroco > 0 then
      begin
        ACBrNFe.NotasFiscais[0].NFe.pag.vTroco := vlTroco;
      end;

      if vDinheiro > 0 then
        with pag.Add do
        begin
          tPag := fpDinheiro;
          if vlValorDiferenca <> 0 then
          begin
            vPag := vDinheiro + vlValorDiferenca;
            vlValorDiferenca := 0;
          end
          else
          begin
            vPag := vDinheiro + vlTroco;

          end;
        end;

      if vChequeProprio > 0 then
        with pag.Add do
        begin
          tPag := fpCheque;
          if vlValorDiferenca <> 0 then
          begin
            vPag := vChequeProprio + vlValorDiferenca;
            vlValorDiferenca := 0;
          end
          else
            vPag := vChequeProprio;
        end;

      if vChequeTerceiros > 0 then
        with pag.Add do
        begin
          tPag := fpCheque;
          if vlValorDiferenca <> 0 then
          begin
            vPag := vChequeTerceiros + vlValorDiferenca;
            vlValorDiferenca := 0;
          end
          else
            vPag := vChequeTerceiros;
        end;

      if vCartaoDebito > 0 then
        with pag.Add do
        begin
          tPag := fpCartaoDebito;
          if vlValorDiferenca <> 0 then
          begin
            vPag := vCartaoDebito + vlValorDiferenca;
            vlValorDiferenca := 0;
          end
          else
            vPag := vCartaoDebito;
        end;

      if vCartaoCredito > 0 then
        with pag.Add do
        begin
          tPag := fpCartaoCredito;
          if vlValorDiferenca <> 0 then
          begin
            vPag := vCartaoCredito + vlValorDiferenca;
            vlValorDiferenca := 0;
          end
          else
            vPag := vCartaoCredito;
        end;

      if vConvenio > 0 then
        with pag.Add do
        begin
          tPag := fpCreditoLoja;
          if vlValorDiferenca <> 0 then
          begin
            vPag := vConvenio + vlValorDiferenca;
            vlValorDiferenca := 0;
          end
          else
            vPag := vConvenio;
        end;

      if vViaBanco > 0 then
        with pag.Add do
        begin
          tPag := fpOutro;
          if vlValorDiferenca <> 0 then
          begin
            vPag := vViaBanco + vlValorDiferenca;
            vlValorDiferenca := 0;
          end
          else
            vPag := vViaBanco;
        end;

      if vVale > 0 then
        with pag.Add do
        begin
          tPag := fpValePresente;
          if vlValorDiferenca <> 0 then
          begin
            vPag := vVale + vlValorDiferenca;
            vlValorDiferenca := 0;
          end
          else
            vPag := vVale;
        end;

      if vDoacao > 0 then
        with pag.Add do
        begin
          tPag := fpOutro;
          if vlValorDiferenca <> 0 then
          begin
            vPag := vDoacao + vlValorDiferenca;
            vlValorDiferenca := 0;
          end
          else
            vPag := vDoacao;
        end;

      if vTrocaDevolucao > 0 then
        with pag.Add do
        begin
          tPag := fpOutro;
          if vlValorDiferenca <> 0 then
          begin
            vPag := vTrocaDevolucao + vlValorDiferenca;
            vlValorDiferenca := 0;
          end
          else
            vPag := vTrocaDevolucao;

        end;

      { * showmessage(


        'Dinheiro: '+FloattoStr(vDinheiro)+  #13+
        'Cheque Proprio: '+FloattoStr(vChequeProprio)+#13+
        'Cheque Terceiros: '+FloattoStr(vChequeTerceiros)+#13+
        'Cartao Debito: '+FloattoStr(vCartaoDebito)+#13+
        'Cartao Credito: '+FloattoStr(vCartaoCredito)+#13+
        'Convenio: '+FloattoStr(vConvenio)+#13+
        'Via Banco: '+FloattoStr(vViaBanco)+#13+
        'Vale: '+FloattoStr(vViaBanco)+#13+
        'Troca Devolucao: '+FloattoStr(vTrocaDevolucao)+#13);* }

      { if (vDinheiro + vChequeProprio + vChequeTerceiros + vCartaoDebito + vCartaoCredito + vConvenio + vViaBanco + vVale + vTrocaDevolucao) <= 0 then
        begin

        with pag.Add do
        begin
        tPag := fpOutro;
        if vlValorDiferenca <> 0 then
        begin
        vPag := vlValorDiferenca;
        vlValorDiferenca := 0;
        end;

        end;
        end; }

      (*
        *
        ********* Identifica o Número da NF-e **********
        *
      *)
      if (Self.mesmesnumero.AsString <> '') and (Self.mesmesnumero.AsString <> '0') then
        vNumeroNFe := Self.mesmesnumero.AsInteger
      else
      begin

        // NumeroNFCe.Params[0].AsInteger := cfgcfgcodigo.AsInteger;
        NumeroNFCe.ExecSQL;
        vNumeroNFe := NumeroNFCe.Fields[0].AsInteger;
      end;

      Ide.nNF := vNumeroNFe;
      Ide.cNF := GerarCodigoDFe(vNumeroNFe);

      { consulta.Close;
        consulta.SQL.Text := 'set @disable_triggers=1';
        consulta.ExecSQL; }

      consulta.Close;
      consulta.SQL.Text := 'UPDATE mes SET ';
      consulta.SQL.Add('mesnumero = ' + IntToStr(vNumeroNFe) + ', ');
      consulta.SQL.Add('tdfcodigo = ''65'', ');
      consulta.SQL.Add('refcodigo = 9, ');
      consulta.SQL.Add('temcodigo = 4 ');
      consulta.SQL.Add('WHERE meschave = ' + vMesChave);
      consulta.ExecSQL;

      { consulta.Close;
        consulta.SQL.Text := 'set @disable_triggers=null';
        consulta.ExecSQL; }

      info.Lines.Add('Iniciar comunicação: ' + datetimetostr(now));

      if AssinaNota(ACBrNFe, vMesChave, vFlaCodigo) then
      begin
        info.Lines.Add('Nota Assinada: ' + datetimetostr(now));

        if ValidaNota(ACBrNFe, vMesChave, vFlaCodigo) then
        begin
          info.Lines.Add('Nota Validada: ' + datetimetostr(now));

          Result := True;
        end;
      end;

    End;
  Except
    On e: Exception Do
    Begin
      vErro := '';
      If e.Message <> '' Then
        vErro := e.Message;

      vMensagemErro := 'Erro preenchimento dos dados da NFC-e.';

      SalvarLogErro(vMensagemErro, e.StackTrace);

      vMensagemErro := vMensagemErro + #13 + #13 + #13 + 'Utilize a opção "Imprimir com NFC-e".';

      application.MessageBox(PChar(vMensagemErro), 'Erro Preenchimento NFC-e', MB_OK + MB_ICONERROR);

      Result := False;
    End;
  End;
End;

function Tfnfce.ReGeraNFCe(vMesChave: string; vFlaCodigo: string = '1'): Boolean;
Var
  vErro: String;
  vMensagemErro: String;

  vMsgRetorno: String;

  vNumeroNFe: Integer;
  vChaveNFE: String;
  vProtocoloNFe: String;

  (* Acumuladores - Totais NFCe *)
  vlQtdItens: Integer;

  vlTotBC: Double;
  vlTotICMS: Double;

  vlTotDesc: Double;
  vlTotBruto: Double;
  vlTotLiq: Double;

  (* Carga Tributária *)
  vlTotTrib: Double;
  vlTotTribEst: Double;
  vlMensagemCargaTrib: string;

  (* Retornos da SEFAZ *)
  vCStat: Integer;
  vXMotivo: String;

  vDinheiro: Double;
  vChequeProprio: Double;
  vChequeTerceiros: Double;
  vCartaoDebito: Double;
  vCartaoCredito: Double;
  vViaBanco: Double;
  vConvenio: Double;
  vAFaturar: Double;
  vTroco: Double;
  vTrocaDevolucao: Double;
  vVale: Double;
  vDoacao: Double;

  vlTotalItens: Double;
  vlTotalFinalizadores: Double;
  vlPercentualProdutos: Double;
  vlValorDiferenca: Double;

  (* CST e CSOSN *)
  vlCSTIcmsOK: Boolean;
  vlCSTIcms: TpcnCSTIcms;

  vlCSOSNIcmsOK: Boolean;
  vlCSOSNIcms: TpcnCSOSNIcms;

  { * Mensagem de limite * }

  vlMensagemLimite: string;

Begin
  if Self.mesmesnumero.AsString = '0' then
  begin
    Result := True;
    Exit;
  end;
  info.Lines.Add('Inicio abertura tabelas: ' + datetimetostr(now));

  Result := False;

  vlQtdItens := 0;

  vlTotBC := 0;
  vlTotICMS := 0;

  vlTotDesc := 0;
  vlTotBruto := 0;
  vlTotLiq := 0;

  vlTotTrib := 0;
  vlTotTribEst := 0;
  vlMensagemCargaTrib := '';



  //
  // ****** Carrega consulta da tabela mes e itm ********
  //

  { mes.Close;
    mes.Params[0].AsString := vMesChave;
    mes.Params[1].AsString := vFlaCodigo;
    mes.Open; }

  itm.Close;
  itm.Params[0].AsString := vMesChave;
  itm.Params[1].AsString := vFlaCodigo;
  itm.Open;

  etd.Close;
  etd.ParamByName('etdcodigo').AsInteger := mesetdcodigo.AsInteger;
  etd.ParamByName('edritem').AsInteger := mesedritem.AsInteger;
  etd.Open;

  mic.Close;
  mic.Params[0].AsString := vMesChave;
  mic.Open;

  oic.Close;
  oic.Params[0].AsString := vMesChave;
  oic.Open;

  toe.Close;
  toe.SQL.Text := 'select ttecodigo,toeidentificacao,toecodigo,ttocodigo from toe where toecodigo=' + mestoecodigo.AsString;
  toe.Open;

  info.Lines.Add('Tabelas abertas: ' + datetimetostr(now));

  //
  // ***** Inicia GERAÇÃO da NFe *****
  //

  ACBrNFe.NotasFiscais.Clear;
  ACBrNFe.Configuracoes.Geral.VersaoQRCode := veqr200;

  Try

    With ACBrNFe.NotasFiscais.Add.NFe Do
    Begin

      (*
        *
        ********* Identificação da NFe - IDE ********
        *
      *)

      Ide.cUF := cfgufscodigo.AsInteger;
      // Ide.cNF -> Código da NFe definido por último.

      vpDataAtual := mesmesregistro.AsFloat;

      Ide.natOp := 'VENDA';
      Ide.hSaiEnt := vpDataAtual;

      Ide.dEmi := vpDataAtual;
      Ide.dSaiEnt := vpDataAtual;
      Ide.hSaiEnt := vpDataAtual;

      Ide.indPag := ipVista;
      Ide.cUF := UFtoCUF(cfgufssigla.AsString);
      Ide.cMunFG := cfgcddcodigo.AsInteger;

      Ide.idDest := doInterna;

      Ide.finNFe := fnNormal;
      Ide.tpImp := tiNFCe;
      Ide.indFinal := cfConsumidorFinal;
      Ide.indPres := pcPresencial;
      Ide.modelo := 65;
      Ide.serie := cfgcfgserienfce.AsInteger;
      Ide.tpNF := tnSaida;

      if vpWSNormal then
      begin
        ACBrNFe.Configuracoes.Geral.FormaEmissao := teNormal;
        Ide.tpEmis := teNormal;
      end
      else
      begin
        if rec.Active = False then
          rec.Open;

        ACBrNFe.Configuracoes.Geral.FormaEmissao := teOffLine;
        Ide.tpEmis := teOffLine;
        Ide.dhCont := recrecdthoraentrada.AsFloat;
        Ide.xJust := 'Falha de comunicação com servidores da SEFAZ.';

      end;

      Ide.cMunFG := cfgcddcodigo.AsInteger;

      if cfgcfgmodonfe.AsInteger = 2 then
        Ide.tpAmb := taHomologacao;

      if cfgcfgmodonfe.AsInteger = 1 then
        Ide.tpAmb := taProducao;

      Ide.verProc := '2016.0.0.1';

      (*
        *
        ****** Emitente da NFC-e - EMIT ********
        *
      *)

      Emit.CNPJCPF := SomenteNumeros(cfgetddoc1.AsString);
      Emit.IE := SomenteNumeros(cfgedrinscest.AsString);
      Emit.IEST := '';
      Emit.xNome := cfgetdidentificacao.AsString;
      Emit.xFant := cfgetdapelido.AsString;
      Emit.EnderEmit.fone := cfgetftelefone.AsString;
      Emit.EnderEmit.CEP := StrToInt(SomenteNumeros(cfgedrcep.AsString));
      Emit.EnderEmit.xLgr := cfgedrrua.AsString;
      Emit.EnderEmit.nro := cfgedrnumero.AsString;
      Emit.EnderEmit.xCpl := '';
      Emit.EnderEmit.xBairro := cfgedrbairro.AsString;
      Emit.EnderEmit.cMun := cfgcddcodigo.AsInteger;
      Emit.EnderEmit.xMun := cfgcddnome.AsString;
      Emit.EnderEmit.UF := UpperCase(cfgufssigla.AsString);
      Emit.EnderEmit.cPais := 1058;
      Emit.EnderEmit.xPais := 'BRASIL';

      case cfgcrtcodigo.AsInteger of
        1:
          Emit.CRT := crtSimplesNacional;
        2:
          Emit.CRT := crtSimplesExcessoReceita;
        3:
          Emit.CRT := crtRegimeNormal;
      end;

      (*
        *
        ********* Destinatário da NFe **********
        *
      *)

      if (Trim(LowerCase(etdetdidentificacao.AsString)) <> 'consumidor') and (ValidaConsumidor(vMesChave, vFlaCodigo)) then
      begin
        Dest.indIEDest := inNaoContribuinte;
        Dest.CNPJCPF := SomenteNumeros(Self.etdetddoc1.AsString);
        Dest.xNome := etdetdidentificacao.AsString;

      end
      else
      begin
        if mic.RecordCount = 1 then
        begin
          Dest.indIEDest := inNaoContribuinte;
          Dest.CNPJCPF := SomenteNumeros(Self.micidcdoc.AsString);
          Dest.xNome := micidcnome.AsString;
        end
        else if oic.RecordCount = 1 then
        begin
          Dest.indIEDest := inNaoContribuinte;
          Dest.CNPJCPF := SomenteNumeros(Self.oicidcdoc.AsString);
          Dest.xNome := oicidcnome.AsString;
        end;
      end;

      (*
        *
        ********* Detalhamento de Produtos e Serviços - DET ***********
        *
      *)

      itm.Refresh;
      itm.IndexFieldNames := 'itmchave';
      itm.First;

      VerifieAjustaItemcomSubstituicao(Emit.EnderEmit.UF, Dest.EnderDest.UF);

      itm.Close;
      itm.Params[0].AsString := vpMesChave;
      itm.Params[1].AsInteger := Acesso.Filial;
      itm.Open;

      vlQtdItens := 1;

      While Not itm.Eof Do
      Begin

        With Det.Add Do
        Begin

          infAdProd := ''; // 'Teste de informacao adicional;Teste de Segunda Linha';
          Prod.nItem := vlQtdItens;
          Prod.ncm := SomenteNumeros(itmproncm.AsString);
          Prod.CFOP := Trim('5' + Copy(itmcfocfop.AsString, 2, 4));

          Prod.cProd := Self.itmprocodigo.AsString;

          If cfgcfgdescrinfe.AsInteger = 0 Then
            Prod.xProd := BuscaTroca(Trim(itmpronome.AsString), '%', '');

          If cfgcfgdescrinfe.AsInteger = 1 Then
            Prod.xProd := BuscaTroca(Trim(itmpronomereduzido.AsString), '%', '');

          If (Copy(Prod.xProd, 1, 1) = '.') Then
            Prod.xProd := Trim(Copy(Prod.xProd, 2, 300));

          Prod.qCom := Self.itmitmquantidade.AsFloat;
          Prod.uCom := Self.itmunisimbolo.AsString;
          Prod.vProd := Self.itmitmtotal.AsFloat;
          Prod.vUnCom := Self.itmitmtotal.AsFloat / Self.itmitmquantidade.AsFloat;

          Prod.qTrib := Self.itmitmquantidade.AsFloat;
          Prod.vDesc := Self.itmitmdesconto.AsFloat;

          Prod.uTrib := Self.itmunisimbolo.AsString;
          Prod.vUnTrib := Self.itmitmtotal.AsFloat / Self.itmitmquantidade.AsFloat;

          vlTotDesc := vlTotDesc + Prod.vDesc;
          vlTotBruto := vlTotBruto + Prod.vProd;
          vlTotLiq := vlTotLiq + (vlTotBruto - vlTotDesc);

          With Imposto Do
          Begin

            Imposto.vTotTrib := itmitmcargatrib.AsFloat + itmitmcargatribest.AsFloat;

            (* Acumula totais de carga tributária por ente Federal e Estadual *)
            vlTotTrib := vlTotTrib + itmitmcargatrib.AsFloat;
            vlTotTribEst := vlTotTribEst + itmitmcargatribest.AsFloat;

            With ICMS Do
            Begin
              case Emit.CRT of
                crtSimplesNacional, crtSimplesExcessoReceita:
                  vlCSOSNIcms := StrToCSOSNIcms(vlCSOSNIcmsOK, itmcstcodigo.AsString);
                crtRegimeNormal:
                  vlCSTIcms := StrToCSTICMS(vlCSTIcmsOK, Copy(Self.itmcstcodigo.AsString, 2, 2));
              end;

              (* CST *)
              if vlCSTIcmsOK then
                CST := vlCSTIcms;

              (* CSOSN *)
              if vlCSOSNIcmsOK then
                CSOSN := vlCSOSNIcms;

              ICMS.modBC := dbiPrecoTabelado;
              If (LowerCase(Self.itmicmcodigo.AsString) = 'ff') Or (LowerCase(Self.itmicmcodigo.AsString) = 'ii') Or (LowerCase(Self.itmicmcodigo.AsString) = 'nn') Then
              Begin
                ICMS.pICMS := 0;
                ICMS.vICMS := 0;
                ICMS.vBC := 0;
              End
              Else
              Begin
                If (Self.itmitmicm.AsFloat = 0.01) or (Self.itmitmicm.AsFloat = 0) Then
                Begin
                  ICMS.pICMS := 0;
                  ICMS.vICMS := 0;
                  ICMS.vBC := 0;
                End
                Else
                Begin
                  ICMS.pICMS := Self.itmicmcodigo.AsFloat;
                  ICMS.vICMS := itmitmicm.AsFloat;
                  ICMS.vBC := itmitmbicm.Ascurrency;
                End;
              End;

              vlTotICMS := vlTotICMS + ICMS.vICMS;
              vlTotBC := vlTotBC + ICMS.vBC;
            End;

          End;
          vlQtdItens := vlQtdItens + 1;
        End;
        itm.Next;
      End;

      (*
        *
        ******** Informações do Transporte da NF-e - TRANSP ********
        *
      *)

      Transp.modFrete := mfSemFrete;

      (*
        *
        ******* Totais da NFe *******
        *
      *)

      (* Trata mensagem referente Carga Tributária *)
      if (vlTotTrib + vlTotTribEst) > 0 then
      begin
        vlMensagemCargaTrib := 'Trib. aprox. R$ ';
        vlMensagemCargaTrib := vlMensagemCargaTrib + FormatFloat('#,###.00', RoundTo(vlTotTrib, -2)) + ' Federal';

        if vlTotTribEst > 0 then
          vlMensagemCargaTrib := vlMensagemCargaTrib + ' e ' + FormatFloat('#,###.00', RoundTo(vlTotTribEst, -2)) + ' Estadual';

        vlMensagemCargaTrib := vlMensagemCargaTrib + ';Fonte: IBPT 5oi7eW (Lei Federal 12.741/2012)';

      end;

      { * Exibe situação de credito do cliente * }
      vlMensagemLimite := '';

      limite.Close;
      limite.ParamByName('etdcodigo').AsInteger := mesetdcodigo.AsInteger;
      limite.Open;

      if not limite.IsEmpty then
      begin
        disponivel.Close;
        disponivel.ParamByName('etdcodigo').AsInteger := mesetdcodigo.AsInteger;
        disponivel.Open;

        if (mesetdcodigo.AsInteger <> 0) and (limiteetllimitetotal.Ascurrency > 0) then
        begin

          vlMensagemLimite := 'Limite R$ ' + FormatFloat('#,###.00', RoundTo(limiteetllimitetotal.Ascurrency, -2)) + #13 + 'Disponível R$ ' +
            FormatFloat('#,###.00', RoundTo(disponivelrfisaldocapital.Ascurrency - mesmestotal.Ascurrency, -2));

        end;
      end;

      InfAdic.infCpl := vlMensagemCargaTrib + #13 + ' ' + cfgcfgmensagempdv.AsString + #13 + #13 + mesmesobs.AsString + #13 + #13 + vlMensagemLimite;

      (*
        *
        ******* Totais da NFe *******
        *
      *)

      Total.ICMSTot.vTotTrib := RoundTo(vlTotTrib + vlTotTribEst, -2);
      Total.ICMSTot.vBC := vlTotBC;
      Total.ICMSTot.vICMS := RoundTo(vlTotICMS, -2);
      Total.ICMSTot.vProd := RoundTo(vlTotBruto, -2);
      Total.ICMSTot.vDesc := RoundTo(vlTotDesc, -2);
      Total.ICMSTot.vNF := RoundTo((vlTotBruto - vlTotDesc), -2);

      qDtl.Close;
      qDtl.SQL.Text := 'SELECT   dtl.dtlvalor,  rfm.meschave,   dtl.mdacodigo, dtl.cedcodigo FROM rfm ';
      qDtl.SQL.Add('INNER JOIN mfi ON rfm.rfichave = mfi.rfichave ');
      qDtl.SQL.Add('INNER JOIN mlt ON mlt.mfichave = mfi.mfichave ');
      qDtl.SQL.Add('INNER JOIN dtl ON mlt.ltechave = dtl.ltechave ');
      qDtl.SQL.Add('WHERE rfm.meschave=' + Self.mesmeschave.AsString + ' ');
      qDtl.SQL.Add('GROUP BY dtl.mdacodigo ');
      qDtl.SQL.Add('ORDER BY dtl.mdacodigo');

      qDtl.Open;

      vDinheiro := 0;
      vChequeProprio := 0;
      vChequeTerceiros := 0;
      vCartaoDebito := 0;
      vCartaoCredito := 0;
      vViaBanco := 0;
      vConvenio := 0;
      vVale := 0;
      vDoacao := 0;
      vTrocaDevolucao := 0;

      vAFaturar := 0;

      vlTotalItens := 0;
      vlTotalFinalizadores := 0;
      vlPercentualProdutos := 0;

      vlTotalItens := RoundTo(vlTotBruto - vlTotDesc, -2);

      while not qDtl.Eof do
      begin
        if not(qDtl.FieldByName('mdacodigo').AsInteger in [11, 22, 33]) then
          vlTotalFinalizadores := vlTotalFinalizadores + qDtl.FieldByName('dtlvalor').Ascurrency;

        qDtl.Next;
      end;

      vlPercentualProdutos := mesmesprodutos.Ascurrency / mesmestotal.Ascurrency;

      qDtl.First;

      while not qDtl.Eof do
      begin
        case qDtl.FieldByName('mdacodigo').AsInteger of
          mdaDinheiro:
            vDinheiro := vDinheiro + qDtl.FieldByName('dtlvalor').Ascurrency;
          mdaTrocoDinheiro:
            begin
              // vDinheiro := vDinheiro - qDtl.FieldByName('dtlvalor').Ascurrency;
              vTroco := vTroco - qDtl.FieldByName('dtlvalor').Ascurrency;
            end;
          mdaChequeProprio:
            begin
              vChequeProprio := vChequeProprio + qDtl.FieldByName('dtlvalor').Ascurrency;
              vTroco := vTroco + qDtl.FieldByName('dtlvalor').Ascurrency;
            end;
          mdaTrocoChequeProprio:
            begin
              vChequeProprio := vChequeProprio - qDtl.FieldByName('dtlvalor').Ascurrency;
              vTroco := vTroco + qDtl.FieldByName('dtlvalor').Ascurrency;
            end;
          mdaChequeTerceiros:
            vChequeTerceiros := vChequeTerceiros + qDtl.FieldByName('dtlvalor').Ascurrency;
          mdaTrocoChequeTerceiros:
            vChequeTerceiros := vChequeTerceiros - qDtl.FieldByName('dtlvalor').Ascurrency;
          mdaCartaoDebito:
            vCartaoDebito := vCartaoDebito + qDtl.FieldByName('dtlvalor').Ascurrency;
          mdaCartaoCredito:
            vCartaoCredito := vCartaoCredito + qDtl.FieldByName('dtlvalor').Ascurrency;
          mdaViaBanco:
            vViaBanco := vViaBanco + qDtl.FieldByName('dtlvalor').Ascurrency;
          mdaConvenio:
            vConvenio := vConvenio + qDtl.FieldByName('dtlvalor').Ascurrency;
          mdaVale:
            vVale := vVale + qDtl.FieldByName('dtlvalor').Ascurrency;
          mdaDoacao:
            vDoacao := vDoacao + qDtl.FieldByName('dtlvalor').Ascurrency;

          mdaTrocaDevolucao:
            vTrocaDevolucao := vTrocaDevolucao + qDtl.FieldByName('dtlvalor').Ascurrency;

        end;
        qDtl.Next;
      end;

      if vDinheiro > 0 then
        vDinheiro := vDinheiro * vlPercentualProdutos;

      if vChequeProprio > 0 then
        vChequeProprio := vChequeProprio * vlPercentualProdutos;

      if vChequeTerceiros > 0 then
        vChequeTerceiros := vChequeTerceiros * vlPercentualProdutos;

      if vCartaoDebito > 0 then
        vCartaoDebito := vCartaoDebito * vlPercentualProdutos;

      if vCartaoCredito > 0 then
        vCartaoCredito := vCartaoCredito * vlPercentualProdutos;

      if vConvenio > 0 then
        vConvenio := vConvenio * vlPercentualProdutos;

      if vViaBanco > 0 then
        vViaBanco := vViaBanco * vlPercentualProdutos;

      if vVale > 0 then
        vVale := vVale * vlPercentualProdutos;

      if vDoacao > 0 then
        vDoacao := vDoacao * vlPercentualProdutos;

      if vTrocaDevolucao > 0 then
        vTrocaDevolucao := vTrocaDevolucao * vlPercentualProdutos;

      vlValorDiferenca := 0;
      vlValorDiferenca := vlTotalItens - (vDinheiro + vChequeProprio + vChequeTerceiros + vCartaoDebito + vCartaoCredito + vConvenio + vViaBanco + vVale + vTrocaDevolucao
        + vDoacao);

      if vDinheiro < 0 then
        vlValorDiferenca := vDinheiro;

      if vDinheiro > 0 then
        with pag.Add do
        begin
          tPag := fpDinheiro;
          if vlValorDiferenca <> 0 then
          begin
            vPag := vDinheiro + vlValorDiferenca;
            vlValorDiferenca := 0;
          end
          else
            vPag := vDinheiro;
        end;

      if vChequeProprio > 0 then
        with pag.Add do
        begin
          tPag := fpCheque;
          if vlValorDiferenca <> 0 then
          begin
            vPag := vChequeProprio + vlValorDiferenca;
            vlValorDiferenca := 0;
          end
          else
            vPag := vChequeProprio;
        end;

      if vChequeTerceiros > 0 then
        with pag.Add do
        begin
          tPag := fpCheque;
          if vlValorDiferenca <> 0 then
          begin
            vPag := vChequeTerceiros + vlValorDiferenca;
            vlValorDiferenca := 0;
          end
          else
            vPag := vChequeTerceiros;
        end;

      if vCartaoDebito > 0 then
        with pag.Add do
        begin
          tPag := fpCartaoDebito;
          if vlValorDiferenca <> 0 then
          begin
            vPag := vCartaoDebito + vlValorDiferenca;
            vlValorDiferenca := 0;
          end
          else
            vPag := vCartaoDebito;
        end;

      if vCartaoCredito > 0 then
        with pag.Add do
        begin
          tPag := fpCartaoCredito;
          if vlValorDiferenca <> 0 then
          begin
            vPag := vCartaoCredito + vlValorDiferenca;
            vlValorDiferenca := 0;
          end
          else
            vPag := vCartaoCredito;
        end;

      if vConvenio > 0 then
        with pag.Add do
        begin
          tPag := fpCreditoLoja;
          if vlValorDiferenca <> 0 then
          begin
            vPag := vConvenio + vlValorDiferenca;
            vlValorDiferenca := 0;
          end
          else
            vPag := vConvenio;
        end;

      if vViaBanco > 0 then
        with pag.Add do
        begin
          tPag := fpOutro;
          if vlValorDiferenca <> 0 then
          begin
            vPag := vViaBanco + vlValorDiferenca;
            vlValorDiferenca := 0;
          end
          else
            vPag := vViaBanco;
        end;

      if vVale > 0 then
        with pag.Add do
        begin
          tPag := fpValePresente;
          if vlValorDiferenca <> 0 then
          begin
            vPag := vVale + vlValorDiferenca;
            vlValorDiferenca := 0;
          end
          else
            vPag := vVale;
        end;

      if vDoacao > 0 then
        with pag.Add do
        begin
          tPag := fpOutro;
          if vlValorDiferenca <> 0 then
          begin
            vPag := vDoacao + vlValorDiferenca;
            vlValorDiferenca := 0;
          end
          else
            vPag := vDoacao;
        end;

      if vTrocaDevolucao > 0 then
        with pag.Add do
        begin
          tPag := fpOutro;
          if vlValorDiferenca <> 0 then
          begin
            vPag := vTrocaDevolucao + vlValorDiferenca;
            vlValorDiferenca := 0;
          end
          else
            vPag := vTrocaDevolucao;

        end;

      (*
        *
        ********* Identifica o Número da NF-e **********
        *
      *)
      if (Self.mesmesnumero.AsString <> '') and (Self.mesmesnumero.AsString <> '0') then
        vNumeroNFe := Self.mesmesnumero.AsInteger
      else
      begin

        // NumeroNFCe.Params[0].AsInteger := cfgcfgcodigo.AsInteger;
        NumeroNFCe.ExecSQL;
        vNumeroNFe := NumeroNFCe.Fields[0].AsInteger;
      end;

      Ide.nNF := vNumeroNFe;
      Ide.cNF := GerarCodigoDFe(vNumeroNFe);

      { consulta.Close;
        consulta.SQL.Text := 'set @disable_triggers=1';
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'set @disable_triggers=null';
        consulta.ExecSQL; }

      info.Lines.Add('Iniciar comunicação: ' + datetimetostr(now));

      ACBrNFe.NotasFiscais.GerarNFe;
      ACBrNFe.NotasFiscais.Items[0].GerarXML;
      ACBrNFe.NotasFiscais.Items[0].GravarXML;

      { if AssinaNota(ACBrNFe, vMesChave, vFlaCodigo) then
        begin
        info.Lines.Add('Nota Assinada: ' + datetimetostr(now));

        if ValidaNota(ACBrNFe, vMesChave, vFlaCodigo) then
        begin
        info.Lines.Add('Nota Validada: ' + datetimetostr(now));

        Result := True;
        end;
        end; }

      Result := True;

    End;
  Except
    On e: Exception Do
    Begin
      vErro := '';
      If e.Message <> '' Then
        vErro := e.Message;

      vMensagemErro := 'Erro preenchimento dos dados da NFC-e.';

      SalvarLogErro(vMensagemErro, e.StackTrace);

      vMensagemErro := vMensagemErro + #13 + #13 + #13 + 'Utilize a opção "Imprimir com NFC-e".';

      application.MessageBox(PChar(vMensagemErro), 'Erro Preenchimento NFC-e', MB_OK + MB_ICONERROR);

      Result := False;
    End;
  End;
End;

function Tfnfce.AssinaNota(vACBrNFe: TACBrNFe; vMesChave: string; vFlaCodigo: string = '1'): Boolean;
var
  vErro: String;
  vMensagemErro: String;
begin
  Result := True;

  try

    // Assina e salva arquivo no Path definido
    vACBrNFe.NotasFiscais.Assinar;
  Except
    On e: Exception Do
    Begin
      vErro := '';
      If e.Message <> '' Then
        vErro := e.Message;

      vMensagemErro := 'Erro ao Assinar Digitalmente a NFC-e.';
      vMensagemErro := vMensagemErro + sLineBreak + 'Mensagem: ' + vErro;

      SalvarLogErro(vMensagemErro, e.StackTrace);

      vMensagemErro := vMensagemErro + sLineBreak + sLineBreak + sLineBreak + 'Utilize a opção "Imprimir com NFC-e".';

      application.MessageBox(PChar(vMensagemErro), 'Erro Geração NF-e', MB_OK + MB_ICONERROR);

      Result := False;
    End;
  end;
end;

function Tfnfce.ValidaNota(vACBrNFe: TACBrNFe; vMesChave: string; vFlaCodigo: string = '1'): Boolean;
var
  vlNumeroNFe: string;
  vErro: string;
  vMensagemErro: String;
begin
  Result := True;

  try

    // Valida Arquivo
    vACBrNFe.NotasFiscais.Validar;

  Except
    On e: Exception Do
    Begin
      vErro := '';
      If e.Message <> '' Then
        vErro := e.Message;

      vMensagemErro := 'Erro ao Validar a NFC-e.';
      vMensagemErro := vMensagemErro + sLineBreak + 'Mensagem: ' + vErro;

      SalvarLogErro(vMensagemErro, e.StackTrace);

      vMensagemErro := vMensagemErro + #13 + #13 + #13 + 'Utilize a opção "Imprimir com NFC-e".';

      application.MessageBox(PChar(vMensagemErro), 'Erro Geração NF-e', MB_OK + MB_ICONERROR);

      Result := False;
    End;
  end;
end;

function Tfnfce.SalvaEmCoontigencia(vACBrNFe: TACBrNFe; vMesChave: string; vFlaCodigo: string = '1'): Boolean;
var
  vChaveNFE: string;
  vProtocoloNFe: string;
  vErro: string;
begin
  try
    vChaveNFE := Copy(vACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);

    vProtocoloNFe := '000000000000000 ' + DateToStr(vpDataAtual) + ' ' + TimeToStr(vpDataAtual);

    { consulta.Close;
      consulta.SQL.Text := 'set @disable_triggers=1';
      consulta.ExecSQL; }

    consulta.Close;
    consulta.SQL.Text := 'UPDATE mes SET ';
    consulta.SQL.Add('mesdatanfe = ' + QuotedStr(ajustadata(DateToStr(vpDataAtual))) + ', ');
    consulta.SQL.Add('mesregistro = ' + QuotedStr(ajustadata(DateToStr(vpDataAtual))) + ', ');
    consulta.SQL.Add('tdfcodigo = ' + QuotedStr('65') + ', ');
    consulta.SQL.Add('refcodigo = 9, ');
    consulta.SQL.Add('mesprotocolo = ' + chr(39) + vProtocoloNFe + chr(39) + ', ');
    consulta.SQL.Add('temcodigo = 50, ');
    consulta.SQL.Add('meschavenfe = ' + QuotedStr(vChaveNFE) + ' WHERE ');
    consulta.SQL.Add('meschave = ' + vMesChave + ' and flacodigo=' + vFlaCodigo);
    consulta.ExecSQL;

    { consulta.Close;
      consulta.SQL.Text := 'UPDATE itm SET itm.itmsped = 1 WHERE itm.meschave = ' + vMesChave;
      consulta.ExecSQL;
      consulta.Close;
      consulta.SQL.Text := 'set @disable_triggers=null';
      consulta.ExecSQL; }

    vACBrNFe.NotasFiscais.Clear;
    ACBrNFe.Configuracoes.Geral.VersaoQRCode := veqr200;
    Result := True;
  Except
    On e: Exception Do
    Begin
      If e.Message = '' Then
        vErro := ''
      Else
        vErro := #13 + 'Erro: ' + e.Message;

      application.MessageBox(PChar('Erro ao Validar a NFC-e.' + #13 + 'Mensagem: ' + vErro + #13 + #13 + #13 + 'Utilize a opção "Imprimir com NFC-e".'), 'Erro Geração NF-e',
        MB_OK + MB_ICONERROR);
      Result := False;
      Exit;
    End;
  end;

end;

function Tfnfce.SalvaNormal(vACBrNFe: TACBrNFe; vMesChave: string; vFlaCodigo: string = '1'): Boolean;
var
  vChaveNFE: string;
  vProtocoloNFe: string;
  vCStat: Integer;
  vXMotivo: string;
  vErro: string;
  vlArqNFCe: String;
begin
  Try

    vACBrNFe.Enviar(0, False, True);

    vCStat := vACBrNFe.NotasFiscais.Items[0].NFe.procNFe.cStat;
    vXMotivo := vACBrNFe.NotasFiscais.Items[0].NFe.procNFe.xMotivo;

    // Se código de status = 100 - Autorizado o uso da NF-e.
    If vCStat = 100 Then
    Begin
      vChaveNFE := Copy(vACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);

      vProtocoloNFe := vACBrNFe.NotasFiscais.Items[0].NFe.procNFe.nProt;

      { consulta.Close;
        consulta.SQL.Text := 'set @disable_triggers=1';
        consulta.ExecSQL; }

      consulta.Close;
      consulta.SQL.Text := 'UPDATE mes SET ';
      consulta.SQL.Add('tdfcodigo = ' + QuotedStr('65') + ', ');
      consulta.SQL.Add('refcodigo = 9, ');
      consulta.SQL.Add('mesdatanfe = ' + QuotedStr(ajustadata(DateToStr(vpDataAtual))) + ', ');
      consulta.SQL.Add('mesregistro = ' + QuotedStr(ajustadata(DateToStr(vpDataAtual))) + ', ');
      consulta.SQL.Add('mesprotocolo = ' + QuotedStr(vProtocoloNFe) + ', ');
      consulta.SQL.Add('temcodigo = 5, ');
      consulta.SQL.Add('meschavenfe = ' + QuotedStr(vChaveNFE) + ' WHERE ');
      consulta.SQL.Add('meschave = ' + vMesChave + ' and flacodigo=' + vFlaCodigo);
      consulta.ExecSQL;

      { consulta.Close;
        consulta.SQL.Text := 'UPDATE itm SET itm.itmsped = 1 WHERE itm.meschave = ' + vMesChave + ' and flacodigo=' + vFlaCodigo;
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'set @disable_triggers=null';
        consulta.ExecSQL; }

      try
        vlArqNFCe := GeraNomeArqNFCe(vMesChave, vFlaCodigo);

        if FileExists(vlArqNFCe) then
        begin
          if mes.Active then
          begin

            mesxml.Close;
            mesxml.ParamByName('meschave').AsInteger := mesmeschave.AsInteger;
            mesxml.ParamByName('flacodigo').AsInteger := Acesso.Filial;
            mesxml.Open;
            if mesxml.IsEmpty then
              mesxml.Append
            else
              mesxml.Edit;
            mesxmlmesarqxml.LoadFromFile(vlArqNFCe);
            mesxmlflacodigo.AsInteger := Acesso.Filial;
            mesxmlmeschave.AsInteger := mesmeschave.AsInteger;

            mesxml.Post;
          end;
        end;
      except
      end;

      vACBrNFe.NotasFiscais.Clear;
      ACBrNFe.Configuracoes.Geral.VersaoQRCode := veqr200;
      Result := True;

    End;
  Except
    On e: Exception Do
    Begin
      If e.Message = '' Then
        vErro := ''
      Else
        vErro := #13 + e.Message;

      vCStat := vACBrNFe.WebServices.Enviar.cStat;

      if vCStat = 205 then // Denegada emissão pelo sefaz
      begin

        { consulta.Close;
          consulta.SQL.Text := 'set @disable_triggers=1';
          consulta.ExecSQL; }

        consulta.Close;
        consulta.SQL.Text := 'UPDATE mes SET ';
        consulta.SQL.Add('tdfcodigo = ' + QuotedStr('65') + ', ');
        consulta.SQL.Add('refcodigo = 9, ');
        consulta.SQL.Add('mesdatanfe = ' + QuotedStr(ajustadata(DateToStr(vpDataAtual))) + ', ');
        consulta.SQL.Add('mesregistro = ' + QuotedStr(ajustadata(DateToStr(vpDataAtual))) + ', ');
        consulta.SQL.Add('mesprotocolo = ' + QuotedStr(vProtocoloNFe) + ', ');
        consulta.SQL.Add('temcodigo = 7, ');
        consulta.SQL.Add('meschavenfe = ' + QuotedStr(vChaveNFE) + ' WHERE ');
        consulta.SQL.Add('meschave = ' + vMesChave + ' and flacodigo=' + vFlaCodigo);
        consulta.ExecSQL;

        { consulta.Close;
          consulta.SQL.Text := 'UPDATE itm SET itm.itmsped = 1 WHERE itm.meschave = ' + vMesChave + ' and flacodigo=' + vFlaCodigo;
          consulta.ExecSQL;

          consulta.Close;
          consulta.SQL.Text := 'set @disable_triggers=null';
          consulta.ExecSQL; }

      end

      else if (vCStat = 0) or (vCStat = 999) then // Geralmente indica falha de comunicação com a SEFAZ
      begin

        entraemcontigencia(e.Message);
        Sleep(500);
        vpNomeArquivoNFCe := fnfce.GeraNomeArqNFCe(vMesChave, vFlaCodigo);

        GeraNFCe(vMesChave, fnfce.vpFlacodigo);

        if SalvaEmCoontigencia(vACBrNFe, vMesChave) then
          Result := True
        else
          Result := False;
      end
      else
      begin

        SalvarLogErro('RETORNO GERADO PELA SEFAZ: ' + IntToStr(vCStat) + #13 + #13 + 'Erro envio da NFC-e.' + sLineBreak + e.Message, e.StackTrace);
        application.MessageBox(PChar('RETORNO GERADO PELA SEFAZ:' + #13 + #13 + 'Erro envio da NFC-e.' + #13 + 'Mensagem: ' + vErro + #13 + #13 + #13 +
          'Utilize a opção "Imprimir com NFC-e".'), 'Erro Envio NF-e', MB_OK + MB_ICONERROR);
        Result := False;
      end;
    End;
  end;
end;

procedure Tfnfce.Setzcone(const Value: TUniConnection);
begin
  Fzcone := Value;
end;

procedure Tfnfce.entraemcontigencia(vStatSEFAZ: string);
var
  vlSituacao: Boolean;
begin
  vpWSNormal := False;
  vlSituacao := fnfce.Visible;

  if vlSituacao = False then
    fnfce.Show;

  if Pos('Uma conexão com o servidor não pôde ser estabelecida', vStatSEFAZ) > 0 then
    vStatSEFAZ := '999 - ' + vStatSEFAZ;

  if rec.Active = False then
    rec.Open;

  if (rec.IsEmpty) or (Self.recrecdthorasaida.AsString <> '') then
  begin
    rec.Append;
    recrecdthoraentrada.AsFloat := vpDataAtual;
    recrecmotivo.AsString := Trim(vStatSEFAZ);
    rec.Post;
  end;

  rec.Close;

  fnfce.Visible := vlSituacao;
end;

function Tfnfce.ConsultaServicoSEFAZNFCE: string;
var
  vlRetornoErro: string;
  i: Integer;
Begin
  vlRetornoErro := '';
  Result := '';

  PlTitulo.Caption := 'Consultando Status da SEFAZ.';

  fnfce.Show;

  try
    AjustaCaminhoGeralNF(vpDataAtual);

    ACBrNFe.Configuracoes.WebServices.Visualizar := vpConsultaVisivel;
    ACBrNFe.Configuracoes.Geral.ModeloDF := moNFCe;

    ACBrNFe.Configuracoes.Geral.VersaoDF := ve400;

    ACBrNFe.WebServices.StatusServico.Executar;

    Result := UTF8Encode(ACBrNFe.WebServices.StatusServico.RetWS);
    vpDataHoraSEFAZ := ACBrNFe.WebServices.StatusServico.DhRecbto;

  except
    on e: Exception do
    begin
      vlRetornoErro := e.Message;
      application.MessageBox(PChar('Falha de conexão com servidores da SEFAZ.' + #13 + #13 + 'Mensagem: ' + #13 + vlRetornoErro), 'Falha comunicação WebService',
        MB_OK + MB_ICONERROR);
    end;
  end;
End;

Procedure Tfnfce.CancelaNFCe(vMesChave: string; vFlaCodigo: string = '1');
Var
  vProtocoloCanc: String;
  vJustificativaCanc: String;
  vTamCorrecao: Integer;
  vCStat: Integer;
  vXMotivo: String;
  vnArqNfe: String;
  vnArqEve: String;
  vAssunto: string;
  vTexto: string;
  vArqEvento: String;
  vChaveEvento: String;
  vErro: string;
  vMsgRetorno: string;
Begin
  if not vpConsultouSEFAZ then
  begin
    vpConsultaVisivel := False;
    ConsultaServicoSEFAZNFCE;
  end;

  PlTitulo.Caption := 'Cancelamento de NFC-e';
  fnfce.Show;

  try

    mes.Close;
    mes.Params[0].AsString := vMesChave;
    mes.Params[1].AsString := vFlaCodigo;
    mes.Open;

    AjustaCaminhoGeralNF(Self.mesmesregistro.AsFloat);
    vpNomeArquivoNFCe := Self.GeraNomeArqNFCe(vMesChave, vFlaCodigo);

    consulta.Close;
    consulta.SQL.Text := 'select temcodigo from mes where meschave=' + vMesChave;
    consulta.Open;

    if consulta.Fields[0].AsInteger = 50 then
    begin
      application.MessageBox(PChar('Este documento está em contigência, não pode ser cancelado !'), 'Atenção', MB_ICONWARNING + MB_OK);
      Exit;
    end;

    If not FileExists(vpNomeArquivoNFCe) Then
    begin
      application.MessageBox(PChar('O Arquivo :' + #13 + vpNomeArquivoNFCe + #13 + ' não foi localizado!'), 'Atenção', MB_ICONWARNING + MB_OK);
      Exit;
    end;

    repeat
      if not(InputQuery('Cancelamento da NFC-e', 'Justificativa do cancelamento.' + #13 + 'Contendo de 15 a 1000 caracteres.', vJustificativaCanc)) then
        Exit;

      vTamCorrecao := Length(vJustificativaCanc);

      if vTamCorrecao < 15 then
        ShowMessage('Justificativa deve ter no mínimo 15 caracteres!');
    until (vTamCorrecao >= 15);

    If vJustificativaCanc = '' Then
    Begin
      application.MessageBox(PChar('É necessário uma jutificativa para cancelamento da NFCE!'), 'Atenção', MB_ICONWARNING + MB_OK);
      Exit;
    End;

    vCStat := 0;
    vXMotivo := '';

    ACBrNFe.NotasFiscais.Clear;
    ACBrNFe.Configuracoes.Geral.VersaoQRCode := veqr200;
    ACBrNFe.Configuracoes.WebServices.Visualizar := False;
    ACBrNFe.NotasFiscais.LoadFromFile(vpNomeArquivoNFCe);

    ACBrNFe.Configuracoes.Geral.VersaoDF := ve400;
    ACBrNFe.EventoNFe.Evento.Clear;
    ACBrNFe.EventoNFe.idLote := 0;

    with ACBrNFe.EventoNFe.Evento.Add do
    begin
      infEvento.dhEvento := vpDataAtual;
      infEvento.tpEvento := teCancelamento;
      infEvento.detEvento.xJust := vJustificativaCanc;
    end;

    Try
      ACBrNFe.EnviarEvento(0);

      vCStat := ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
      vXMotivo := ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;
      vProtocoloCanc := ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;

      if (vCStat = 135) or (vCStat = 136) then
      begin

        vArqEvento := Copy(vpNomeArquivoNFCe, 1, Pos('-', vpNomeArquivoNFCe) - 1);
        vArqEvento := vArqEvento + ACBrNFe.EventoNFe.Evento.Items[0].infEvento.TipoEvento;
        vArqEvento := vArqEvento + '01'; // Sequência do Evento
        vArqEvento := vArqEvento + '-procEventoNFe.xml';

        vChaveEvento := ACBrNFe.EventoNFe.Evento.Items[0].infEvento.chNFe;
        vChaveEvento := vChaveEvento + ACBrNFe.EventoNFe.Evento.Items[0].infEvento.TipoEvento;
        vChaveEvento := vChaveEvento + FormatFloat('00', ACBrNFe.EventoNFe.Evento.Items[0].infEvento.nSeqEvento);

        enf.Open;
        enf.Append;
        enftencodigo.AsInteger := tenCancelamento;
        enfenfregistroevento.AsFloat := vpDataAtual;
        enfenfchaveevento.AsString := vChaveEvento;
        enfenfseqevento.AsInteger := 1; // Cancelamento não tem sequência.
        enfenfdescricao.AsString := vJustificativaCanc;
        if FileExists(vArqEvento) then
          enfenfxml.LoadFromFile(vArqEvento);
        enfenfcstat.AsInteger := vCStat;
        enfenfxmotivo.AsString := vXMotivo;
        enf.Post;

        mev.Open;
        mev.Append;
        mevenfchave.AsInteger := enfenfchave.AsInteger;
        mevmeschave.AsString := vMesChave;
        mev.Post;

        consulta.Close;
        consulta.SQL.Text := 'set @disable_triggers=1';
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'UPDATE mes SET ';
        consulta.SQL.Add('sdecodigo = ''02'', ');
        consulta.SQL.Add('mesprotocolo = ''' + vProtocoloCanc + ''' ');
        consulta.SQL.Add('where meschave = ' + vMesChave + ' and flacodigo=' + vFlaCodigo);
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'set @disable_triggers=1';
        consulta.ExecSQL;

        ShowMessage('Cancelamento efetuado com sucesso!');
      end
      else
        application.MessageBox(PChar('Evento de NFC-e não autorizado.' + #13 + #13 + 'Mensagem: ' + #13 + vXMotivo), 'Erro Envio Evento NFC-e', MB_OK + MB_ICONERROR);

    Except
      On e: Exception Do
      Begin
        vErro := '';
        If e.Message <> '' Then
          vErro := e.Message;

        vMsgRetorno := 'Evento de NFC-e não autorizado.';
        vMsgRetorno := vMsgRetorno + sLineBreak + 'Mensagem: ' + vErro;

        SalvarLogErro(vMsgRetorno, e.StackTrace);

        application.MessageBox(PChar(vMsgRetorno), 'Erro Envio NFC-e', MB_OK + MB_ICONERROR);

        Exit;
      End;
    End;
  finally
    fnfce.Close;
  end;
End;

Function Tfnfce.AjustaSituacaoNFCe(vMesChave: string; vFlaCodigo: string = '1'): Boolean;
Var
  nProt: String;
  vnrnfe: String;
  vchNFe: String;
  vdtNFe: String;
  vhrNFe: String;
  vCodStatusNFe: String;
  vMsgStatusNFe: String;
  vMsgSituacao: string;
  vlchave: string;
  vErro: string;
  vCStat: Integer;
  vXMotivo: string;
  vMsgRetorno: string;

Begin
  try
    fnfce.Show;
    Result := False;

    vlchave := vMesChave;

    If not FileExists(vpNomeArquivoNFCe) Then
    Begin
      if Self.mestemcodigo.AsInteger = 5 then
      begin
        vchNFe := Self.mesmeschavenfe.AsString;
        Geraxml(vchNFe, fnfce.vpFlacodigo);
      end
      else
      begin
        if not vpConsultouSEFAZ then
        begin
          vpConsultaVisivel := False;
          ConsultaServicoSEFAZNFCE;
        end;

        Self.GeraNFCe(vMesChave, fnfce.vpFlacodigo);
      end;
      vpNomeArquivoNFCe := GeraNomeArqNFCe(vMesChave, fnfce.vpFlacodigo);
    End;

    If not FileExists(vpNomeArquivoNFCe) Then
    begin
      ShowMessage('ATENÇÃO: O Arquivo ' + vpNomeArquivoNFCe + ' não foi localizado!');
      Exit(False);
    end;

    Try
      ACBrNFe.NotasFiscais.Clear;
      ACBrNFe.Configuracoes.Geral.VersaoQRCode := veqr200;
      ACBrNFe.Configuracoes.WebServices.Visualizar := False;
      ACBrNFe.NotasFiscais.LoadFromFile(vpNomeArquivoNFCe);
      ACBrNFe.Configuracoes.Geral.VersaoDF := ve400;
      ACBrNFe.Consultar;

      vdtNFe := DateToStr(ACBrNFe.NotasFiscais[0].NFe.Ide.dEmi);
      vhrNFe := TimeToStr(ACBrNFe.NotasFiscais[0].NFe.Ide.dEmi);
      nProt := ACBrNFe.WebServices.consulta.Protocolo;
      vchNFe := ACBrNFe.WebServices.consulta.NFeChave;

      vCodStatusNFe := IntToStr(ACBrNFe.WebServices.consulta.cStat);
      vMsgStatusNFe := ACBrNFe.WebServices.consulta.xMotivo;

      vnrnfe := IntToStr(ACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNF);

      (* Verifica código de retorno é igual a 100 - Uso Autorizado *)

      If (ACBrNFe.WebServices.consulta.cStat = 100) { or (ACBrNFe.WebServices.Consulta.cStat = 217) } Then
      begin
        Result := True;

        consulta.Close;
        consulta.SQL.Text := 'set @disable_triggers=1';
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'UPDATE mes SET ';
        consulta.SQL.Add('mesemissao = ''' + ajustadata(vdtNFe) + ''', ');
        consulta.SQL.Add('mesnumero = ''' + vnrnfe + ''', ');
        consulta.SQL.Add('meschavenfe = ''' + vchNFe + ''', ');
        consulta.SQL.Add('tdfcodigo = ''65'', ');
        consulta.SQL.Add('refcodigo = 9, ');
        consulta.SQL.Add('temcodigo = 5, ');
        consulta.SQL.Add('mesprotocolo = ''' + nProt + ''' WHERE ');
        consulta.SQL.Add('meschave = ' + vlchave + ' and flacodigo=' + vFlaCodigo);
        consulta.ExecSQL;
        consulta.Close;
        consulta.SQL.Text := 'set @disable_triggers=null';
        consulta.ExecSQL;

        try
          if FileExists(vpNomeArquivoNFCe) then
          begin
            if not mes.Active then
            begin
              mes.Close;
              mes.Params[0].AsString := vMesChave;
              mes.Params[1].AsString := vFlaCodigo;
              mes.Open;
            end;

            mesxml.Close;
            mesxml.ParamByName('meschave').AsInteger := mesmeschave.AsInteger;
            mesxml.ParamByName('flacodigo').AsInteger := Acesso.Filial;
            mesxml.Open;

            if mesxml.IsEmpty then
              mesxml.Append
            else
              mesxml.Edit;

            mesxmlmesarqxml.LoadFromFile(vpNomeArquivoNFCe);
            mesxml.Post;
          end;

        except
        end;

        consulta.Close;
        consulta.SQL.Text := 'select mesemissao,mesnumero, meschavenfe,tdfcodigo,mesprotocolo from mes where meschave=' + vlchave + ' and flacodigo=' + vFlaCodigo;
        consulta.Open;

        { ShowMessage('Emissão: ' + consulta.Fields[0].AsString + ''#13'' + (* *)
          'Nr. NFE: ' + consulta.Fields[1].AsString + ''#13'' + (* *)
          'Chave  : ' + consulta.Fields[2].AsString + ''#13'' + #13 + #13 + (* *)
          'Código Status: ' + vCodStatusNFe + #13 + (* *)
          'Status - NFE : ' + vMsgStatusNFe + #13 + (* *)
          'Protocolo Nr.: ' + nProt + #13 + (* *)
          'Data  e  Hora: ' + vdtNFe + ' - ' + vhrNFe); }

        consulta.Close;
      end
      else If (ACBrNFe.WebServices.consulta.cStat = 101) { or (ACBrNFe.WebServices.Consulta.cStat = 217) } Then
      begin
        Result := True;
        consulta.Close;
        consulta.SQL.Text := 'set @disable_triggers=1';
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'UPDATE mes SET ';
        consulta.SQL.Add('mesemissao = ''' + ajustadata(vdtNFe) + ''', ');
        consulta.SQL.Add('mesnumero = ''' + vnrnfe + ''', ');
        consulta.SQL.Add('meschavenfe = ''' + vchNFe + ''', ');
        consulta.SQL.Add('sdecodigo = ''02'', ');
        consulta.SQL.Add('tdfcodigo = ''65'', ');
        consulta.SQL.Add('refcodigo = 9, ');
        consulta.SQL.Add('temcodigo = 5, ');
        consulta.SQL.Add('mesprotocolo = ''' + nProt + ''' WHERE ');
        consulta.SQL.Add('meschave = ' + vlchave + ' and flacodigo=' + vFlaCodigo);
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'set @disable_triggers=null';
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'select mesemissao,mesnumero, meschavenfe,tdfcodigo,mesprotocolo from mes where meschave=' + vlchave + ' and flacodigo=' + vFlaCodigo;
        consulta.Open;

        { ShowMessage('Cancelamento: ' + consulta.Fields[0].AsString + ''#13'' + (* *)
          'Nr. NFE: ' + consulta.Fields[1].AsString + ''#13'' + (* *)
          'Chave  : ' + consulta.Fields[2].AsString + ''#13'' + #13 + #13 + (* *)
          'Código Status: ' + vCodStatusNFe + #13 + (* *)
          'Status - NFE : ' + vMsgStatusNFe + #13 + (* *)
          'Protocolo Nr.: ' + nProt + #13 + (* *)
          'Data  e  Hora: ' + vdtNFe + ' - ' + vhrNFe); }

        consulta.Close;

      end
      else If (ACBrNFe.WebServices.consulta.cStat = 150) { or (ACBrNFe.WebServices.Consulta.cStat = 217) } Then
      begin
        Result := True;
        consulta.Close;
        consulta.SQL.Text := 'set @disable_triggers=1';
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'UPDATE mes SET ';
        consulta.SQL.Add('mesemissao = ''' + ajustadata(vdtNFe) + ''', ');
        consulta.SQL.Add('mesnumero = ''' + vnrnfe + ''', ');
        consulta.SQL.Add('meschavenfe = ''' + vchNFe + ''', ');
        consulta.SQL.Add('sdecodigo = ''00'', ');
        consulta.SQL.Add('tdfcodigo = ''65'', ');
        consulta.SQL.Add('refcodigo = 9, ');
        consulta.SQL.Add('temcodigo = 50, ');
        consulta.SQL.Add('mesprotocolo = ''' + nProt + ''' WHERE ');
        consulta.SQL.Add('meschave = ' + vlchave + ' and flacodigo=' + vFlaCodigo);
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'set @disable_triggers=null';
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'select mesemissao,mesnumero, meschavenfe,tdfcodigo,mesprotocolo from mes where meschave=' + vlchave + ' and flacodigo=' + vFlaCodigo;
        consulta.Open;

        { ShowMessage('Cancelamento: ' + consulta.Fields[0].AsString + ''#13'' + (* *)
          'Nr. NFE: ' + consulta.Fields[1].AsString + ''#13'' + (* *)
          'Chave  : ' + consulta.Fields[2].AsString + ''#13'' + #13 + #13 + (* *)
          'Código Status: ' + vCodStatusNFe + #13 + (* *)
          'Status - NFE : ' + vMsgStatusNFe + #13 + (* *)
          'Protocolo Nr.: ' + nProt + #13 + (* *)
          'Data  e  Hora: ' + vdtNFe + ' - ' + vhrNFe); }

        consulta.Close;

      end;
    Except
      On e: Exception Do
      Begin
        { vCStat := ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
          vXMotivo := ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo; }

        If e.Message = '' Then
          vErro := ''
        Else
          vErro := #13 + 'Erro: ' + e.Message;

        If (vCStat = 0) And (vXMotivo = '') Then
          vMsgRetorno := ''
        Else
          vMsgRetorno := #13 + 'Retorno: ' + IntToStr(vCStat) + ' - ' + vXMotivo + #13;

        application.MessageBox(PChar('Evento de NFC-e não autorizado.' + #13 + 'Mensagem: ' + vErro), 'Erro Envio NFC-e', MB_OK + MB_ICONERROR);

      End;
    End;
  finally
  end;
End;

function Tfnfce.InutilizarNumerosNFCe(vFlaCodigo: string = '1'): Boolean;
Var
  modelo, serie, Ano, vMes, NumeroInicial, NumeroFinal, Justificativa: String;
  vlRetorno: Boolean;
Begin
  vlRetorno := False;
  try
    if LerConfiguracaoDAV then
    begin
      If Not(InputQuery('Inutilização de Números de NFCE ', 'Ano', Ano)) Then
        Exit;

      If Not(InputQuery('Inutilização de Números de NFCE ', 'Mes', vMes)) Then
        Exit;

      If Not(InputQuery('Inutilização de Números de NFCE ', 'Número Inicial', NumeroInicial)) Then
        Exit;

      If Not(InputQuery('Inutilização de Números de NFCE ', 'Número Final', NumeroFinal)) Then
        Exit;

      If Not(InputQuery('Inutilização de Números de NFCE ', 'Justificativa', Justificativa)) Then
        Exit;

      AjustaCaminhoGeralNF(StrToDate('01' + '/' + vMes + '/' + Ano));

      if not vpConsultouSEFAZ then
      begin
        vpConsultaVisivel := False;
        ConsultaServicoSEFAZNFCE;
      end;
      cfg.Close;
      cfg.ParamByName('flacodigo').AsInteger := Acesso.Filial;
      cfg.Open;

      ACBrNFe.Configuracoes.Geral.VersaoDF := ve400;

      ACBrNFe.Configuracoes.WebServices.Visualizar := True;
      ACBrNFe.WebServices.Inutiliza(cfgetddoc1.AsString, Justificativa, StrToInt(Ano), 65, 1, StrToInt(NumeroInicial), StrToInt(NumeroFinal));
      ACBrNFe.Configuracoes.WebServices.Visualizar := False;

      rni.Open;
      rni.Append;
      rnirniano.AsString := Ano;
      rnirnimes.AsString := vMes;
      rnitdfcodigo.AsString := '65';
      rnirninumeroinicial.AsString := NumeroInicial;
      rnirninumerofinal.AsString := NumeroFinal;
      rnirnijutificativa.AsString := Justificativa;
      rni.Post;
      rni.Close;

      vlRetorno := True;

      consulta.Close;
      consulta.SQL.Text := 'SELECT meschave FROM mes ';
      consulta.SQL.Add('WHERE mesnumero BETWEEN ' + NumeroInicial + ' AND ' + NumeroFinal + ' ');
      consulta.SQL.Add('AND tdfcodigo = ''65'' ');
      consulta.Open;

      while not consulta.Eof do
      begin

        mes.Close;
        mes.Params[0].AsInteger := consulta.Fields[0].AsInteger;
        mes.Params[1].AsString := vFlaCodigo;
        mes.Open;

        mes.Edit;
        mestdfcodigo.AsString := '00';
        mestemcodigo.AsInteger := 2;
        mesmesnumero.AsInteger := 0;
        mesmeschavenfe.AsString := '';
        mesmesprotocolo.AsString := '';
        mes.Post;

        consulta.Next;
      end;

    end;
  except
    on e: Exception do
    begin

      application.MessageBox(PChar('Inutilização de NFC-e não autorizada.' + #13 + #13 + 'Mensagem: ' + #13 + e.Message), 'Erro Inutilização NFC-e', MB_OK + MB_ICONERROR);

      vlRetorno := False;
    end;
  end;
  Result := vlRetorno;
End;

function Tfnfce.InutilizarNumerosNFCeDireto(vFlaCodigo: string = '1'): Boolean;
Var
  modelo, serie, Ano, vMes, NumeroInicial, NumeroFinal, Justificativa: String;
  vlRetorno: Boolean;
Begin
  vlRetorno := False;
  try
    if LerConfiguracaoDAV then
    begin

      consulta.Close;
      consulta.SQL.Text := 'select mesregistro, mesnumero from mes where meschave=' + vpMesChave;
      consulta.Open;

      if consulta.IsEmpty then
      begin
        ShowMessage('Registro não localizado para inutilização de numeração!');
        Exit;
      end;

      Ano := IntToStr(YearOf(consulta.FieldByName('mesregistro').AsFloat));
      vMes := IntToStr(MonthOf(consulta.FieldByName('mesregistro').AsFloat));

      NumeroInicial := consulta.FieldByName('mesnumero').AsString;
      NumeroFinal := consulta.FieldByName('mesnumero').AsString;
      Justificativa := 'Falha na emissão do documento fiscal';

      AjustaCaminhoGeralNF(StrToDate('01' + '/' + vMes + '/' + Ano));

      if not vpConsultouSEFAZ then
      begin
        vpConsultaVisivel := False;
        ConsultaServicoSEFAZNFCE;
      end;

      ACBrNFe.Configuracoes.WebServices.Visualizar := True;
      ACBrNFe.WebServices.Inutiliza(cfgetddoc1.AsString, Justificativa, StrToInt(Ano), 65, 1, StrToInt(NumeroInicial), StrToInt(NumeroFinal));
      ACBrNFe.Configuracoes.WebServices.Visualizar := False;

      rni.Open;
      rni.Append;
      rnirniano.AsString := Ano;
      rnirnimes.AsString := vMes;
      rnitdfcodigo.AsString := '65';
      rnirninumeroinicial.AsString := NumeroInicial;
      rnirninumerofinal.AsString := NumeroFinal;
      rnirnijutificativa.AsString := Justificativa;
      rni.Post;
      rni.Close;

      vlRetorno := True;

      consulta.Close;
      consulta.SQL.Text := 'SELECT meschave FROM mes ';
      consulta.SQL.Add('WHERE mesnumero BETWEEN ' + NumeroInicial + ' AND ' + NumeroFinal + ' ');
      consulta.SQL.Add('AND tdfcodigo = ''65'' ');
      consulta.Open;

      while not consulta.Eof do
      begin

        mes.Close;
        mes.Params[0].AsInteger := consulta.Fields[0].AsInteger;
        mes.Params[1].AsString := vFlaCodigo;
        mes.Open;

        mes.Edit;
        mestdfcodigo.AsString := '00';
        mestemcodigo.AsInteger := 2;
        mesmesnumero.AsInteger := 0;
        mesmeschavenfe.AsString := '';
        mesmesprotocolo.AsString := '';
        mes.Post;

        consulta.Next;
      end;

    end;
  except
    on e: Exception do
    begin

      application.MessageBox(PChar('Inutilização de NFC-e não autorizada.' + #13 + #13 + 'Mensagem: ' + #13 + e.Message), 'Erro Inutilização NFC-e', MB_OK + MB_ICONERROR);

      vlRetorno := False;
    end;
  end;
  Result := vlRetorno;
End;

procedure Tfnfce.AjustaCaminhoGeralNF(Data: TDate);
begin
  // verifca se os diretorios existem se nao ja cria os mesmos

  if not DirectoryExists(vpPastaPrincipal + 'pdfs') then
    ForceDirectories(vpPastaPrincipal + 'pdfs');

  if not DirectoryExists(vpPastaPrincipal) then
    ForceDirectories(vpPastaPrincipal);

  vpAAAAMMNNNFCe := vpPastaPrincipal + vpSubPastaDoc + '\' + FormatDateTime('yyyymm', Data) + '\';

  if not DirectoryExists(vpAAAAMMNNNFCe) then
    ForceDirectories(vpAAAAMMNNNFCe);

  ACBrNFe.Configuracoes.Arquivos.PathSalvar := vpAAAAMMNNNFCe;
  ACBrNFeDANFCEFR1.PathPDF := vpPastaPrincipal + 'pdfs\';
end;

function Tfnfce.LerConfiguracaoDAV: Boolean;
Begin
  // try
  Result := True;

  ACBrNFe.DANFE := ACBrNFeDANFCEFR1;

  ACBrNFe.Configuracoes.WebServices.Visualizar := False;
  ACBrNFe.Configuracoes.Arquivos.PathSchemas := ExtractFilePath(application.ExeName) + 'schemas';
  ACBrNFe.Configuracoes.Arquivos.IniServicos := ExtractFilePath(application.ExeName) + 'schemas\ACBrNFeServicos.ini';

  ACBrNFe.Configuracoes.Geral.ModeloDF := moNFCe;
  ACBrNFe.Configuracoes.Geral.VersaoDF := ve400;

  ACBrNFe.Configuracoes.Certificados.NumeroSerie := Self.cfgcfgnumecertifa1.AsString;

  if (Length(cfgcfgsenhacertificadoa1.AsString) > 0) then
    ACBrNFe.Configuracoes.Certificados.Senha := cfgcfgsenhacertificadoa1.AsString;

  ACBrNFe.Configuracoes.Geral.FormaEmissao := teNormal;
  ACBrNFe.Configuracoes.Geral.Salvar := True;

  ACBrNFe.Configuracoes.WebServices.UF := UpperCase(Self.cfgufssigla.AsString);

  if cfgcfgmodonfe.AsInteger = 2 then
  begin
    ACBrNFe.Configuracoes.Geral.IdCSC := FormatFloat('000000', cfgcfgidtokennfce.AsInteger);
    ACBrNFe.Configuracoes.Geral.CSC := LowerCase(cfgcfgtoken1nfce.AsString);
    ACBrNFe.Configuracoes.WebServices.Ambiente := taHomologacao;
  end
  else if cfgcfgmodonfe.AsInteger = 1 then
  begin
    ACBrNFe.Configuracoes.Geral.IdCSC := FormatFloat('000000', cfgcfgidtokennfce.AsInteger);
    ACBrNFe.Configuracoes.Geral.CSC := LowerCase(cfgcfgtoken1nfce.AsString);
    ACBrNFe.Configuracoes.WebServices.Ambiente := taProducao;
  end;
  ACBrNFe.DANFE.TipoDANFE := tiNFCe;;

  ACBrNFeDANFCEFR1.FastFile := vPastaPrincipal + 'Report\DANFeNFCe.fr3';
  ACBrNFeDANFCEFR1.FastFileEvento := vPastaPrincipal + 'Report\EVENTOS.fr3';

  ACBrNFeDANFCEFR1.PathPDF := vPastaPrincipal + 'pdfs\NFe';

  // except
  // Result := False;
  // end;

End;

procedure Tfnfce.SalvarLogErro(eMessage, eStackTrace: String);
var
  vlMensagem: String;
  vlArquivo: String;
begin
  vlMensagem := 'Mensagem: ' + eMessage + sLineBreak + sLineBreak + eStackTrace;

  vlArquivo := ExtractFilePath(application.ExeName) + 'Logs\NFCe\' + FormatDateTime('yyyymmddhhnnsszzz', vpDataAtual) + '.txt';

  SalvarTextoEmArquivo(vlMensagem, vlArquivo);
end;

procedure Tfnfce.VerifieAjustaItemcomSubstituicao(usEmitente, ufDestinatario: string);
var
  vlcfop: string;
begin

  itm.First;

  // ajusta o toe do item para produto com substituição
  While Not itm.Eof Do
  Begin

    ncm.Close;
    ncm.SQL.Text := 'select ansanexo from ans where (tcgncm LIKE ' + QuotedStr(itmproncm.AsString) + ') or (tcgncm LIKE ' + QuotedStr(Copy(itmproncm.AsString, 1, 4)) + ')';
    ncm.Open;

    if not ncm.IsEmpty then
    begin
      { if usEmitente <> ufDestinatario then
        begin


        if (cfgcfgtoesubstforaestado.AsInteger <> 0) then
        begin
        consulta.Close;
        consulta.SQL.Text := 'select toecfopsaida from toe where toecodigo=' + cfgcfgtoesubstforaestado.AsString;
        consulta.Open;

        vlcfop := consulta.FieldByName('toecfopsaida').AsString;

        itmncm.Close;
        itmncm.SQL.Text := 'update itm set cfocfop=' + QuotedStr(vlcfop) + '  ,toecodigo=' + cfgcfgtoesubstforaestado.AsString + ' where itmchave=' + itmitmchave.AsString;
        itmncm.ExecSQL;

        end;
        end; }

      { if usEmitente = ufDestinatario then
        begin }

      if (cfgcfgtoesubstnoestado.AsInteger <> 0) then
      begin
        consulta.Close;
        consulta.SQL.Text := 'select toecfopsaida from toe where toecodigo=' + cfgcfgtoesubstnoestado.AsString;
        consulta.Open;

        vlcfop := consulta.FieldByName('toecfopsaida').AsString;

        itmncm.Close;
        itmncm.SQL.Text := 'update itm set cfocfop=' + QuotedStr(vlcfop) + '  , toecodigo=' + cfgcfgtoesubstnoestado.AsString + ' where itmchave=' + itmitmchave.AsString;
        itmncm.ExecSQL;

      end;

      { end; }
    end;
    itm.Next;
  End;




  // fim do ajusta o toe do item para produto com substituição

end;

end.
