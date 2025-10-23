unit ufuncoes;

interface

uses
  Winapi.Windows, SysUtils, System.Classes, Uni, Vcl.Forms, Vcl.DBGrids, Data.DB,
  System.Win.Registry, Winapi.Messages, Winapi.WinSock, zlib, IdHashMessageDigest,
  RESTRequest4D,Json, uRecordsTEF,
 System.Math, Vcl.DBCtrls, IdStack, VirtualTable,
  Vcl.Printers, System.StrUtils, ACBrUtil, ACBrExtenso, Vcl.Dialogs, Vcl.Grids,
  Winapi.WinSvc, DateUtils, Vcl.Graphics, Winapi.WinInet, IniFiles, Vcl.Imaging.jpeg,
  midaslib, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdCmdTCPClient;

var
  vConfigIni: TIniFile;

const
  // Tipo Transação TEF
  ConstProcesTEFPagamento = 1;
  ConstProcesTEFCancelamento = 2;

  LoginIMENDES = '14477548000131';
  SenhaIMENDES = 'HPoLD9OmFOHb';

type

  Impressao = function(AOwner: TComponent; Conexao: TUniConnection; vtabela: TUniDataSource; DirRelatorio: String; Impressora: String = '';
    vUsuCodigo: string = ''): string;

  TRotinasBoletos = (rblGeracao, rblReimpressao, rblEnvioEmail, rblReimpressaoGrupo, rblGerarRemessa, rblOcorrencia, rblAjustarNossoNumero,
    rblReGerarRemessa);

  TRotinasNFe = (rnfGerarNFe, rnfImprimirNFe, rnfGerarPDF, rnfEmail, rnfCancelar, rnfCartaCorrecao, rnfEmailEvento, rnfImprimirEvento,
    rnfConsultaEvento, rnfGerarXML, rnfInutilizar, rnfStatusSefaz, rnfStatusNFe, rnfInutilizarDireto, rnfManifDestDesconhecimento, rnfGerarPrevia,
    rnfReGerarXML);

  TRotinasNFs = (rnfGerarNFs, rnfImprimirNFs, rnfGerarPDFNFs, rnfEmailNFs, rnfCancelarNFs, rnfGerarXMLNFs, rnfInutilizarNFs, rnfStatus, rnfStatusNFs);

function CarraIpServidor:string;

Function PublicarEmail(cnpj, destino, copias, texto, assunto, xml, pdf, nome_cliente, nome_empresa: String): Boolean;
Function ConsultaXMLServidor(IPServidorArquivo:String; aArq: String): String;
Function EnviaXMLServidor(IPServidorArquivo:String;aArq: String): String;
Function BaixaXMLServidor(IPServidorArquivo:String;Const aArq: String): String;
function ArquivoExiste(const FileName: string): Boolean;
Function TBTruncate(Valor: Real; Decimal: Integer): Real;
Function TBRound(Value: Extended; Decimals: Integer): Extended;
Function SoNumeros(Const Texto: String): String;
Function SoLetras(Const Texto: String): String;
Function SoLetraseNumeros(Const Texto: String): String;
Function desprotegertexto(senha: String): String;
Function protegertexto(senha: String): String;
Function BuscaTroca(Text, Busca, Troca: String): String;
Function ajustadata(Dia: String): String;
Function voltadata(Dia: String): String;
Function Modulo11(Numero: String): String;
function StreamToString(Stream: TStream): String;
function MemoryStreamToString(aStream: TStream): string;
function funCountChar(psTexto: string; pcChar: Char): Integer;
function RemoverAcento(Key: Char): Char;
function semacento(Texto: string): string;
function buscaips: TStringList;
procedure DoUnLoadPackage(AOwner: TComponent; Module: HModule);
function CountChar(MyChar: Char; MyString: String): Integer;
function StrIsFloat(const S: string): Boolean;
function MD5texto(const Texto: string): string;
function EncodeBase64(const inStr: string): string;
function DecodeBase64(const CinLine: string): string;
function ComprimeZeros(S: string): string;
function DesComprimeZeros(S: string): string;
function Encripta(S: string): string;
function DEcripta(S: string): string;
Function Mod11(iNumero: String): string;
function MD5(const FileName: string): string;
function criptografa(pTexto: string; pTipo: Integer): string;
Function mrfrImprimir(Application: TApplication; Conexao: TUniConnection; Dados: TUniDataSource; DirRelatorio: String; TipoImpressao: Integer;
  Impressora: String = ''; vUsuCodigo: string = ''): String;
function copiaarqeverifica(origem, destino: string): Boolean;
function ColumnByField(Grid: TDBGrid; Field: TField): TColumn;
function ColumnByFieldName(Grid: TDBGrid; FieldName: String): TColumn;
Function DataExtenso(Data: TDateTime): String;
function AjustaDias(Data: TDateTime; vdias: Integer): TDateTime;
Procedure RefreshDesktop;
Function String2Hex(Const Buffer: AnsiString): String;
Function TruncarDecimal(Valor: Real; Decimal: Integer): Real;
procedure SalvarTextoEmArquivo(Texto: String; Diretorio: String);
procedure FitGrid(Grid: TDBGrid);
procedure AdjustColumnWidths(DBGrid: TDBGrid);
procedure ExecuteAndWait(const aCommando: string);
procedure ImprimirComprovantesTEF(Owner: TApplication; vConexao: TUniConnection; vTrmCodigo, vDirRelat, vImpressora: String; vTipoImpressao: Integer);
procedure ImprimirComprovantesPDV(Owner: TApplication; vConexao: TUniConnection; vMesChave, vDirRelat, vImpressora: String; vTipoImpressao: Integer);
procedure ImprimirComprovantesORC(Owner: TApplication; vConexao: TUniConnection; vOrcChave, vDirRelat, vImpressora: String; vTipoImpressao: Integer);
procedure ImprimirComprovantesCCX(Owner: TApplication; vConexao: TUniConnection; vCcxChave, vTipoOperacao: Integer; vImpressora: String;
  vTipoImpressao: Integer);
function IsValidatePrinter(LabelPrinter: String): Boolean;
function UpperSemAcento(const aStr: String): String;
function SomenteTexto(pTexto: String): String;
function SomenteNumeros(pTexto: String): String;
function ValorExtenso(pValor: Double): String;

Function agora(Owner: TApplication; Conexao: TUniConnection): String;
Function Hoje(Owner: TApplication; Conexao: TUniConnection): String;

function GetIP: string;
function UpperNome(const sNome: string): string;
function GetAppVersionStr(arq: string): string;
Function ExtractTempDir: String;
function ComputerName: String;
function UserName: String;
function AutorizadoParaProdutores: Boolean;
procedure DecompressFile(Compressed, Decompressed: String);
procedure CompressFiles(Files: TStrings; const Compressed: String);
function ServiceStart(sMachine, sService: string): Boolean;
function ServiceStop(sMachine, sService: string): Boolean;
function pubNomeComputador: string;
function UltimoDia: Integer;
function UltimoDiaMes(vDia: TDate): Integer;
function InternetAtiva: Boolean;
function VersaoExe(const FileName: String): String;
function GetFileModDate(FileName: string): TDateTime;
function calcularDiferencaHoras(Dataf, datai: TDate; HoraF, HoraI: ttime): Integer;
function ExtensoMes(n: Integer): String;

function LastCharPos(const S: string; const Chr: Char): Integer;
function ZCompressString(aText: string; aCompressionLevel: TZCompressionLevel): string;
function ZDecompressString(aText: string): string;


function TrocaCaracterEspecial(aTexto: string; aLimExt: Boolean): string;

const
  PEG_COR_TITULO: Integer = $00FFB871; // $00FDBF73; // $00FFD8B0 ;//$00CF8D3D; // $00D1B198;
  PEG_COR_TOTAIS: Integer = $00C08000; // $00FFF5EC;

  PEG_COR_SELCGRID: Integer = $00FFB871; // $00FDBF73; // $00FFD8B0 ;//$00CF8D3D; // $00D1B198;
  PEG_COR_VALORPADRAO: Integer = $00FFF5EC; // $00FFD8B0; // $00D1B198;
  PEG_COR_VALORREQUERIDO: Integer = $00AAFFFF; // $0071FFFF;
  PEG_COR_BASE: Integer = $00FFEFCE; // $00FFF5EC;

  C1 = 52845;
  C2 = 22719;

  // Chaves de encriptação
  Codes64 = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz+/';
  Codesenc = 'BEIJAFLORZ';
  Codesdec = '0123456789';

  (* tipos de atividades comerciais da empresa *)
  atvtodos = 0;
  atvmercado = 1;
  avtvarejo = 2;
  atvrestaurante = 3;
  atvfinanceiro = 4;
  atvadvocacia = 5;
  atvimobiliaria = 6;
  atvmecanica = 7;

  (* Situação de Produtos *)
  sipNormal = 1;
  sipInativo = 2;

  (* Tipos de Pessoa *)
  tpeFisica = 1;
  tpeJuridica = 2;
  tpeOutros = 9;

  { * Tipo de Créditos para Clientes e Fornecedores * }
  tncCredido = 1; // Créditos para Clientes com Crédito
  tncVerba = 2; // Verbas para Fornecedores com Crédito

  (* Modo do Orçamento - moccodigo *)
  mocNovoRegistro = 0;
  mocOrcamento = 1;
  mocCondicional = 2;
  mocOrdemServico = 3;
  mocAFaturar = 4;

  (* Vertical - Restaurante
    Modo do Orçamento - moccodigo  (Restaurante terá um orc por mesa aberta *)
  mocMesa = 5;

  (* Vertical - Oficina - Serviços
    Modo do Orçamento - moccodigo  (Serviços terá um orc por Prisma/Box aberto *)
  mocPrisma = 6;
  mocDelivery = 7;
  mocEntrega = 9;
  mocRetiraBalcao = 10;

  OriTablet = 1;
  OriCardapio = 2;
  OriDelivery = 3;
  OriAplicativo = 4;
  OriSite = 5;
  OriCaixa = 6;

  (* Indicador da Forma do Atendimento - foacodigo *)
  foaInterno = 1;
  foaExterno = 2;

  (* Situação do Orçamento - stocodigo *)
  stoEmDigitacao = 1;
  stoEmAberto = 2;
  stoVendido = 3;
  stoEmCaixa = 4;
  stoEmFechamento = 5;
  stoUnificado = 6;
  stoRetornado = 8;
  stoCancelado = 88;

  (* Preço Utilizado no Orçamento - puocodigo *)
  puoAVista = 0;
  puoAPrazo = 1;

  (* Naturezas *)
  ceddebito = 0;
  cedcredito = 1;

  (* Tipo de Impressão *)
  tiImprimir = 0;
  tiGerador = 1;
  tiImprimirDireto = 2;

  (* Operações de Caixa *)
  ocxAbertura = 1;
  ocxSuprimento = 2;
  ocxSangria = 3;
  ocxFechamento = 4;
  ocxGaveta = 5;
  ocxTEF = 6;

  (* Tipo de Financeiro de Registro *)

  tfdPagar = 1;
  tfdReceber = 2;
  tfdContaCorrente = 3;
  tfdTesouraria = 7;

  tfdOutros = 9;
  tfdPagamentos = 22;
  tfdVenda = 32;
  tfdRecebimentos = 42;
  tfdCompras = 52;
  tfdRenegociacao = 62;

  tfdCredito = 70;
  tfdVerba = 75;

  tfdBancariaDebito = 80;
  tfdBancariaCredito = 81;

  (* Situacao dos Registros Financeiros *)
  srfEmAberto = 0;
  srfBaixaParcial = 1;
  srfQuitado = 2;
  srfRenegociado = 3;
  srfCancelado = 9;
  srfVale = 10;

  (* Tipo de Movimento Financeiro *)
  tmfAPagar = 1;
  tmfAReceber = 2;
  tmfJurosaDebito = 3;
  tmfDescontoaDebito = 4;
  tmfAjusteaDebito = 6;
  tmfMultaaDebito = 8;
  tmfPagamento = 11;
  tmfPagamentoJuros = 12;
  tmfPagamentoMulta = 13;
  tmfRecebimento = 21;
  tmfRecebimentoJuros = 22;
  tmfRecebimentoMulta = 23;
  tmfJurosaCredito = 33;
  tmfDescontoaCredito = 44;
  tmfJurosMoraDispensada = 50;
  tmfMultaDispensada = 51;
  tmfAjusteaCredito = 66;
  tmfMultaaCredito = 88;
  tmfBaixaporZeramento = 99;

  (* Tabela de Formas de Pagamento *)
  tfpAVista = 0;
  tfpAPrazo = 1;
  tfpOutras = 2;

  (* Responsável pelo Transporte *)
  refEmitente = 0;
  refDestinatario = 1;
  refTerceiros = 2;
  refSemFrete = 9;

  { * Tipos de Documentos Financeiros * }
  tfiCheque = 1;
  tfiBoleto = 2;
  tfiFatura = 3;
  tfiRecibo = 4;
  tfiDeposito = 5;
  tfiCartao = 6;
  tfiOutros = 9;
  tfiDuplicata = 10;
  tfiNotaFiscal = 11;
  tfiDuplicataMercantil = 14;
  tfiGuia = 12;

  (* Situação de Documentos Fiscais *)
  sdeDocRegular = '00';
  sdeDocRegularExtemporaneo = '01';
  sdeDocCancelado = '02';
  sdeDocCancExtemporaneo = '03';
  sdeNFeCTeDenegada = '04';
  sdeNFeCTeNumInutilizada = '05';
  sdeDocFiscalComplementar = '06';
  sdeDocFiscalCompleExtemp = '07';
  sdeDocFiscalEmitidoRegimeEspeci = '08';

  (* Tipos de Documentos Fiscais *)
  tdfNotaFiscal = '01';
  tdfNotaFiscalDeVendaAConsumidor = '02';
  tdfNotaFiscalDeProdutor = '04';
  tdfNotaFiscalContaDeEnergiaEletrica = '06';
  tdfConhecimentoDeTransporteRodoviarioDeCargas = '08';
  tdfResumoDeMovimentoDiario = '18';
  tdfNotaFiscalAvulsa = '1B';
  tdfNotaFiscalServTeleCom = '22';
  tdfNotaFiscalServTelevisao = '21';
  tdfGNRE = '23';
  tdfAutorizacaoDeCarregamentoETransporte = '24';
  tdfNotaFiscalContaDeFornecimentoDeAguaCanaliza = '29';
  tdfCupomFiscalEmitidoPorECF = '2D';
  tdfNotaFiscalEletronica = '55';
  tdfNotaFiscalConsumidorEletronica = '65';
  tdfConhecimentoDeTransporteEletronico = '57';

  { internos }
  tdfMovimentoEmAndamento = '00';
  tdfMovimentoAFaturar = 'AF';
  tdfRefaturado = 'RF';
  tdfCorrecaoEstoque = 'CE';

  tdfPedido = 'PE';
  tdfEmTransito = 'ET';
  tdfReservado = 'RE';
  tdfAvariado = 'AV';
  tdfRequisitado = 'RQ';
  tdfAjusteEstoque = 'AE';

  { sim e nao }
  senSim = 1;
  senNao = 0;

  (* Finalizadores *)
  finDinheiro = 1;
  finCheque = 2;
  finCartao = 3;
  finConvenio = 4;
  finVale = 5;

  (* Tipo de Unidade *)
  tunEntrada = 0;
  tunSaida = 1;
  tunAmbos = 9;

  (* Tipo de Evento *)
  tenCCe = 1;
  tenCancelamento = 2;
  tenManifDestConfirmacao = 3;
  tenManifDestCiencia = 4;
  tenManifDestDesconhecimento = 5;
  tenManifDestOperNaoRealizada = 6;
  tenEncerramento = 7;
  tenEPEC = 8;
  tenInclusaoCondutor = 9;
  tenMultiModal = 10;
  tenRegistroPassagem = 11;
  tenRegistroPassagemBRId = 12;
  tenEPECNFe = 13;
  tenRegistroCTe = 14;
  tenRegistroPassagemNFeCancelado = 15;
  tenRegistroPassagemNFeRFID = 16;
  tenCTeCancelado = 17;
  tenMDFeCancelado = 18;
  tenVistoriaSuframa = 19;
  tenPedProrrog1 = 20;
  tenPedProrrog2 = 21;
  tenCanPedProrrog1 = 22;
  tenCanPedProrrog2 = 23;
  tenEventoFiscoPP1 = 24;
  tenEventoFiscoPP2 = 25;
  tenEventoFiscoCPP1 = 26;
  tenEventoFiscoCPP2 = 27;
  tenRegistroPassagemNFe = 28;
  tenConfInternalizacao = 29;

  (* Tipo de Informação Complementar *)
  ticObservacao = 1;
  ticNotaFiscalNFE = 2;
  ticCupomFiscal = 3;
  ticDocumentoArrecadacao = 4;

  (* Tipo de contas correntes *)
  tctContaCaixa = 1;
  tctContaBancaria = 2;
  tctContaCartao = 3;
  tctSalario = 4;
  tctContaFornecedor = 5;
  tctOutros = 9;

  { *  modalidades  * }
  mdaNaoseAplica = 0;
  mdaDinheiro = 1;
  mdaChequeProprio = 2;
  mdaChequeTerceiros = 3;
  mdaCartaoDebito = 5;
  mdaCartaoCredito = 4;
  mdaPIX = 6;
  mdaConvenio = 7;
  mdaCredito = 8;
  mdaAFaturar = 9;
  mdaVerba = 10;
  mdaTrocoDinheiro = 11;
  mdaVoucher = 12;
  mdaTrocaDevolucao = 15;
  mdaDoacao = 16;
  mdaVale = 17;
  mdaGarantia = 18;
  mdaTrocoChequeProprio = 22;
  mdaTrocoChequeTerceiros = 33;
  mdaTrocoVale = 77;

  { *  tipos de operacoes de conta corrente  * }
  tocNormal = 1;
  tocEstorno = 2;
  tocTransferencia = 3;
  tocResgate = 4;
  tocCredito = 5;
  tocVerba = 6;
  tocAberturaCaixa = 7;
  tocSangriaCaixa = 8;
  tocSuprimentoCaixa = 9;
  tocFechamentoCaixa = 10;
  tocDebito = 11;

  { *  tipos de situacoes dos cheques  * }
  schPendente = 1;
  schDepositado = 2;
  schDevolvido = 3;
  schCompensado = 4;
  schLiquidadoResgate = 5;
  schLiquidadoTroco = 6;
  schLiquidadoPagamento = 7;
  schCancelado = 8;
  schEstornado = 9;
  schTransferido = 10;

  (* Tipos de Produtos *)
  tpoMercadoriaRevenda = 0;
  tpoMateriaPrima = 1;
  tpoEmbalagem = 2;
  tpoProdutoEmProcesso = 3;
  tpoProdutoAcabado = 4;
  tpoSubproduto = 5;
  tpoProdutoIntermeriario = 6;
  tpoMaterialUsoConsumo = 7;
  tpoAtivoImobilizado = 8;
  tpoServicos = 9;
  tpoOutrosInsumos = 10;
  tpoOutras = 99;

  (* Tipos de Impressoras *)
  tipECF = 1;
  tipTermica48Col = 2;
  tipLaserJato = 3;
  tipMatricial = 4;
  tipZebra = 5;
  tipBematechComanda = 6;
  tipArgox = 7;

  (* Padroes de frequencias para CPA e CRE *)
  frrUnica = 1;
  frrSemanal = 2;
  frrQuinzenal = 3;
  frrMensal = 4;
  frrSemestral = 5;
  frrAnual = 6;

  (* Estágios do Movimento de Estoque *)
  temEmDigitacaoo = 1;
  temDigitaManual = 2;
  temImportada = 3;
  temNFEPendente = 4;
  temNFEEmitida = 5;
  temNFEDenegada = 7;
  temCupomPendente = 8;
  temCupomEmitido = 9;
  temCupomComErro = 10;
  temNFEContingencia = 50;
  temExcluida = 90;

  (* Tipos de Dispensa/ Descontos Financeiros - ddf *)
  ddfDescGeral = 1;
  ddfDispMulta = 2;
  ddfDispMora = 3;

  (* Tipo de Vínculo das Entidades - tvi *)
  tviCliente = 1;
  tviFornecedor = 2;
  tviColaborador = 3;
  tviTransportador = 4;
  tviOutros = 9;

  (* Estagios de etiquetas - eet *)
  eetAImprimir = 1;
  eetImpressa = 2;
  eetCancelada = 9;

  (* Tipo de Desconto - tde *)
  tdeSemDesconto = 0;
  tdeTotal = 1;
  tdeIndividual = 2;

  (* Modelos de Etiquetas - met *)
  metPadrao3xDoisPrecos = 1;
  metMenor3xSemPreco = 2;
  metMenor3xDoisPrecos = 3;
  metGondola = 4;
  metMenor3xUmPreco = 5;
  metPadrao2xAVista = 7;
  metPadrao3xUmPrecos = 8;
  metPadrao3xUmPrecoPrazo = 9;
  metMenor3xAVista = 15;
  metLoginSenha = 16;
  metPadrao2xAVistaGC420at = 17;
  metGondolaZD220 = 18;
  metGondolaZD220s = 19;
  metMenor3xSemPrecoSemnome = 20;
  metPadrao3xDoisPrecosL42 = 21;
  metPadrao3xPrecoPrazoL42 = 22;
  metPequena2xPrecoPrazoL42 = 23;
  metGondolaSemPreco = 24;
  metPequena2xPrecoPrazoZD230 = 25;
  metPequena3xPrecoPrazoL42 = 26;
  metPequena2xPrecoVistaZD230 = 27;
  metMini3xUmPrecoVista = 28;
  metPadrao3xDoisPrecosArgox = 29;

  (* Tipo de Operacoes para o TOE *)
  ttoDiversos = 0;
  ttoCompra = 1;
  ttoVenda = 2;
  ttoDevolucao = 3;
  ttoRemessaRetorno = 4;
  ttoAjuste = 5;
  ttoComplemento = 6;
  ttoOutros = 7;
  ttoReclassificacao = 8;

  (* Tipo de Movimentação da Operação para o TOE - tte *)
  tteEntrada = 0;
  tteSaida = 1;

  (* Emitente da Operação para o TOE - ttm *)
  ttmEmissaoPropria = 0;
  ttmTerceiros = 1;
  ttmEmAndamento = 9;

  (* Tipo de Situação da Entidade - TSE *)
  tseNormal = 0;
  tseBloqueioTotal = 1;
  tseBloqueioParcial = 2;
  tseEmAvalicação = 8;
  tseInativo = 9;

  { * Tipo de Situacao de Credidos / Verbas TSC * }

  tscEmAberto = 1;
  tscCancelado = 2;
  tscLiquidado = 3;
  tscTransferido = 9;

  { * Tipo de Movimento de Credidos / Verbas TMC * }

  tmcInclusao = 1;
  tmcCancelamento = 2;
  tmcEstorno = 3;
  tmcTransferecia = 4;
  tmcCancelamentoTransf = 5;
  tmcUtilizacao = 6;

  { * Tipo de Origem do Credidos / Verbas TCR * }

  tcrEstornoFinanceiro = 1;
  tcrDevolucaoVenda = 2;
  tcrCancelamentoVenda = 3;
  tcrCreditoAvulso = 9;

  { * Tipo de Campos para os relatórios TCA * }

  tcaInteiro = 1;
  tcaData = 2;
  tcaFlutuante = 3;
  tcaTexto = 4;
  tcaHora = 5;
  tcaAgora = 6;

  (* Estágios da Folha de Pagamento *)
  eflCriada = 1;
  eflCalculada = 2;
  eflFechada = 3;
  eflLiquidada = 4;
  eflProvisionada = 5;
  eflAPagar = 6;
  eflEstorno = 9;

  (* Estágio do Processo de Venda Fora do Estabelecimento - vfscodigo *)
  vfsEmAberto = 1;
  vfsEncerrado = 2;
  vfsCancelado = 3;

  { * Definição do modo exibição do frame docado em formulários * }
  frmModoLista = 1;
  frmModoIncluir = 2;

  WM_KEYDOWN = $0100;
  WM_KEYUP = $0101;

  { * Definição de uma senha para uso exclusivo dos produtores do sistema * }
  pwdProdutores = 'Peg973sus';

implementation

function TrocaCaracterEspecial(aTexto: string; aLimExt: Boolean): string;
const
  // Lista de caracteres especiais
  xCarEsp: array [1 .. 38] of String = ('á', 'à', 'ã', 'â', 'ä', 'Á', 'À', 'Ã', 'Â', 'Ä', 'é', 'è', 'É', 'È', 'í', 'ì', 'Í', 'Ì', 'ó', 'ò', 'ö', 'õ', 'ô', 'Ó',
    'Ò', 'Ö', 'Õ', 'Ô', 'ú', 'ù', 'ü', 'Ú', 'Ù', 'Ü', 'ç', 'Ç', 'ñ', 'Ñ');
  // Lista de caracteres para troca
  xCarTro: array [1 .. 38] of String = ('a', 'a', 'a', 'a', 'a', 'A', 'A', 'A', 'A', 'A', 'e', 'e', 'E', 'E', 'i', 'i', 'I', 'I', 'o', 'o', 'o', 'o', 'o', 'O',
    'O', 'O', 'O', 'O', 'u', 'u', 'u', 'u', 'u', 'u', 'c', 'C', 'n', 'N');
  // Lista de Caracteres Extras
  xCarExt: array [1 .. 49] of string = ('<', '>', '!', '@', '#', '$', '%', '¨', '&', '*', '(', ')', '_', '+', '=', '{', '}', '[', ']', '?', ';', ':', ',', '|',
    '*', '"', '~', '^', '´', '`', '¨', 'æ', 'Æ', 'ø', '£', 'Ø', 'ƒ', 'ª', 'º', '¿', '®', '½', '¼', 'ß', 'µ', 'þ', 'ý', 'Ý', '\');
var
  xTexto: string;
  i: Integer;
begin
  xTexto := aTexto;
  for i := 1 to 38 do
    xTexto := StringReplace(xTexto, xCarEsp[i], xCarTro[i], [rfreplaceall]);
  // De acordo com o parâmetro aLimExt, elimina caracteres extras.
  if (aLimExt) then
    for i := 1 to 49 do
      xTexto := StringReplace(xTexto, xCarExt[i], '', [rfreplaceall]);
  Result := xTexto;
end;




function ArquivoExiste(const FileName: string): Boolean;
{$IFDEF MSWINDOWS}
// use GetFileAttributes: much faster than original, which uses FileAge=FindFirst
var
  Attr: Integer;
  LastError: Cardinal;
begin
  Attr := Integer(GetFileAttributesW(pointer(FileName)));
  if Attr <> -1 then
    result := Attr and FILE_ATTRIBUTE_DIRECTORY = 0
  else
  begin
    LastError := GetLastError;
    result := (LastError <> ERROR_FILE_NOT_FOUND) and (LastError <> ERROR_PATH_NOT_FOUND) and (LastError <> ERROR_INVALID_NAME) and
    // (use FileAge to test SHARE_EXCLUSIVE files)
      ((LastError = ERROR_SHARING_VIOLATION) or (FileAge(FileName) <> -1));
  end;
end;
{$ENDIF}
{$IFDEF LINUX}
begin
  result := euidaccess(PChar(FileName), F_OK) = 0;
end;
{$ENDIF}

function ZCompressString(aText: string; aCompressionLevel: TZCompressionLevel): string;
var
  strInput, strOutput: TStringStream;
  Zipper: TZCompressionStream;
begin
  result := '';
  strInput := TStringStream.Create(aText);
  strOutput := TStringStream.Create;
  try
    Zipper := TZCompressionStream.Create(strOutput);
    try
      Zipper.CopyFrom(strInput, strInput.Size);
    finally
      Zipper.Free;
    end;
    result := strOutput.DataString;
  finally
    strInput.Free;
    strOutput.Free;
  end;
end;

function ZDecompressString(aText: string): string;
var
  strInput, strOutput: TStringStream;
  Unzipper: TZDecompressionStream;
begin
  result := '';
  strInput := TStringStream.Create(aText);
  strOutput := TStringStream.Create;
  try
    Unzipper := TZDecompressionStream.Create(strInput);
    try
      strOutput.CopyFrom(Unzipper, Unzipper.Size);
    finally
      Unzipper.Free;
    end;
    result := strOutput.DataString;
  finally
    strInput.Free;
    strOutput.Free;
  end;
end;

function LastCharPos(const S: string; const Chr: Char): Integer;
var
  i: Integer;
begin
  result := 0;
  for i := length(S) downto 1 do
    if S[i] = Chr then
    begin
      result := i;
      break; // or Exit; if you prefer that
    end;
end;

function ExtensoMes(n: Integer): String;
begin
  Case n Of
    1:
      result := 'Janeiro';
    2:
      result := 'Fevereiro';
    3:
      result := 'Março';
    4:
      result := 'Abril';
    5:
      result := 'Maio';
    6:
      result := 'Junho';
    7:
      result := 'Julho';
    8:
      result := 'Agosto';
    9:
      result := 'Setembro';
    10:
      result := 'Outubro';
    11:
      result := 'Novembro';
    12:
      result := 'Dezembro';
  end;
end;

function AjustaDias(Data: TDateTime; vdias: Integer): TDateTime;
begin
  result := incDay(Data, vdias);
end;

function calcularDiferencaHoras(Dataf, datai: TDate; HoraF, HoraI: ttime): Integer;
var
  DataHoraF, DataHoraI: TDateTime;
begin
  DataHoraF := Dataf + HoraF;
  DataHoraI := datai + HoraI;

  result := SecondsBetween(DataHoraI, DataHoraF)

end;


function GetFileModDate(FileName: string): TDateTime;
var
  Farq: TSearchRec;
begin

  FindFirst(FileName, faAnyFile, Farq);
  result := Farq.TimeStamp;
  FindClose(Farq);
end;

function InternetAtiva: Boolean;
var
  Flags: Cardinal;
begin
  result := false;
  if not InternetGetConnectedState(@Flags, 0) then
    result := false
  else
    result := true;
end;

function UltimoDiaMes(vDia: TDate): Integer;
var
  Date: TDateTime;
begin
  Date := EndOfTheMonth(vDia);
  result := StrToInt(Copy(DateToStr(vDia), 0, 2));
end;

function UltimoDia: Integer;
var
  Date: TDateTime;
begin
  Date := EndOfTheMonth(now);
  result := StrToInt(Copy(DateToStr(Date), 0, 2));
end;

function pubNomeComputador: string;
const
  MAX_COMPUTER_LENGTH = 30;
var
  pNome: PChar;
  len: DWord;
begin
  try
    len := MAX_COMPUTER_LENGTH + 1;
    GetMem(pNome, len);
    if GetComputerName(pNome, len) then
      result := pNome
    else
      result := 'Não foi possível obter o nome deste computador!';
  finally
    FreeMem(pNome, len);
  end;
end;



// Para inciar: ServiceStart('nome_do_computador', 'nome_do_servico');
// Para Parar: ServiceStop('nome_do_computador', 'nome_do_servico');

// ServiceStop(pubNomeComputador,'Spooler');
// ServiceStart(pubNomeComputador,'Spooler');

//
// start service
//
// return TRUE if successful
//
// sMachine:
// machine name, ie: \SERVER
// empty = local machine
//
// sService
// service name, ie: Alerter
//
function ServiceStart(sMachine, sService: string): Boolean;
var
  //
  // service control
  // manager handle
  schm,
  //
  // service handle
  schs: SC_Handle;
  //
  // service status
  ss: TServiceStatus;
  //
  // temp char pointer
  psTemp: PChar;
  //
  // check point
  dwChkP: DWord;
begin
  ss.dwCurrentState := 0;
  // connect to the service
  // control manager
  schm := OpenSCManager(PChar(sMachine), Nil, SC_MANAGER_CONNECT);
  // if successful...
  if (schm > 0) then
  begin
    // open a handle to
    // the specified service
    schs := OpenService(schm, PChar(sService),
      // we want to
      // start the service and
      SERVICE_START or
      // query service status
      SERVICE_QUERY_STATUS);
    // if successful...
    if (schs > 0) then
    begin
      psTemp := Nil;
      if (StartService(schs, 0, psTemp)) then
      begin
        // check status
        if (QueryServiceStatus(schs, ss)) then
        begin
          while (SERVICE_RUNNING <> ss.dwCurrentState) do
          begin
            //
            // dwCheckPoint contains a
            // value that the service
            // increments periodically
            // to report its progress
            // during a lengthy
            // operation.
            //
            // save current value
            //
            dwChkP := ss.dwCheckPoint;
            //
            // wait a bit before
            // checking status again
            //
            // dwWaitHint is the
            // estimated amount of time
            // the calling program
            // should wait before calling
            // QueryServiceStatus() again
            //
            // idle events should be
            // handled here...
            //
            Sleep(ss.dwWaitHint);
            if (not QueryServiceStatus(schs, ss)) then
            begin
              // couldn't check status
              // break from the loop
              break;
            end;
            if (ss.dwCheckPoint < dwChkP) then
            begin
              // QueryServiceStatus
              // didn't increment
              // dwCheckPoint as it
              // should have.
              // avoid an infinite
              // loop by breaking
              break;
            end;
          end;
        end;
      end;
      // close service handle
      CloseServiceHandle(schs);
    end;
    // close service control
    // manager handle
    CloseServiceHandle(schm);
  end;
  // return TRUE if
  // the service status is running
  result := SERVICE_RUNNING = ss.dwCurrentState;
end;

//
// stop service
//
// return TRUE if successful
//
// sMachine:
// machine name, ie: \SERVER
// empty = local machine
//
// sService
// service name, ie: Alerter
//
function ServiceStop(sMachine, sService: string): Boolean;

var
  //
  // service control
  // manager handle
  schm,
  //
  // service handle
  schs: SC_Handle;
  //
  // service status
  ss: TServiceStatus;
  //
  // check point
  dwChkP: DWord;
begin
  // connect to the service
  // control manager
  schm := OpenSCManager(PChar(sMachine), Nil, SC_MANAGER_CONNECT);
  // if successful...
  if (schm > 0) then
  begin
    // open a handle to
    // the specified service
    schs := OpenService(schm, PChar(sService),
      // we want to
      // stop the service and
      SERVICE_STOP or
      // query service status
      SERVICE_QUERY_STATUS);
    // if successful...
    if (schs > 0) then
    begin
      if (ControlService(schs, SERVICE_CONTROL_STOP, ss)) then
      begin
        // check status
        if (QueryServiceStatus(schs, ss)) then
        begin
          while (SERVICE_STOPPED <> ss.dwCurrentState) do
          begin
            //
            // dwCheckPoint contains a
            // value that the service
            // increments periodically
            // to report its progress
            // during a lengthy
            // operation.
            //
            // save current value
            //
            dwChkP := ss.dwCheckPoint;
            //
            // wait a bit before
            // checking status again
            //
            // dwWaitHint is the
            // estimated amount of time
            // the calling program
            // should wait before calling
            // QueryServiceStatus() again
            //
            // idle events should be
            // handled here...
            //
            Sleep(ss.dwWaitHint);
            if (not QueryServiceStatus(schs, ss)) then
            begin
              // couldn't check status
              // break from the loop
              break;
            end;
            if (ss.dwCheckPoint < dwChkP) then
            begin
              // QueryServiceStatus
              // didn't increment
              // dwCheckPoint as it
              // should have.
              // avoid an infinite
              // loop by breaking
              break;
            end;
          end;
        end;
      end;
      // close service handle
      CloseServiceHandle(schs);
    end;
    // close service control
    // manager handle
    CloseServiceHandle(schm);
  end;
  // return TRUE if
  // the service status is stopped
  result := SERVICE_STOPPED = ss.dwCurrentState;
end;

Function ExtractTempDir: String;
Var
  Buffer: Array [0 .. 144] of Char;
Begin
  GetTempPath(144, Buffer);
  result := IncludeTrailingBackSlash(StrPas(Buffer));
End;

function VersaoExe(const FileName: String): String;
type
  TVersionInfo = packed record
    Dummy: array [0 .. 7] of Byte;
    V2, V1, V4, V3: Word;
  end;
var
  Zero, Size: Cardinal;
  Data: pointer;
  VersionInfo: ^TVersionInfo;
begin
  Size := GetFileVersionInfoSize(pointer(FileName), Zero);
  if Size = 0 then
    result := ''
  else
  begin
    GetMem(Data, Size);
    try
      GetFileVersionInfo(pointer(FileName), 0, Size, Data);
      VerQueryValue(Data, '\\\', pointer(VersionInfo), Size);
      result := Format('%d.%d.%d.%d', [VersionInfo.V1, VersionInfo.V2, VersionInfo.V3, VersionInfo.V4]);
    finally
      FreeMem(Data);
    end;
  end;
end;

function GetAppVersionStr(arq: string): string;
var
  Exe: string;
  Size, Handle: DWord;
  Buffer: TBytes;
  FixedPtr: PVSFixedFileInfo;
begin
  try
    Exe := ParamSTR(0);
    Size := GetFileVersionInfoSize(PChar(arq), Handle);
    if Size = 0 then
      RaiseLastOSError;
    SetLength(Buffer, Size);
    if not GetFileVersionInfo(PChar(arq), Handle, Size, Buffer) then
      RaiseLastOSError;
    if not VerQueryValue(Buffer, '\', pointer(FixedPtr), Size) then
      RaiseLastOSError;

    result := Format('%d.%s.%s.%s', [LongRec(FixedPtr.dwFileVersionMS).Hi, // major
      formatfloat('00', LongRec(FixedPtr.dwFileVersionMS).Lo), // minor
      formatfloat('0', LongRec(FixedPtr.dwFileVersionLS).Hi), // release
      formatfloat('0', LongRec(FixedPtr.dwFileVersionLS).Lo)]); // build

    { Result := Format('%d.%d.%d.%d', [LongRec(FixedPtr.dwProductVersionMS).Hi, // major
      LongRec(FixedPtr.dwProductVersionMS).Lo, // minor
      LongRec(FixedPtr.dwProductVersionLS).Hi, // release
      LongRec(FixedPtr.dwProductVersionLS).Lo]) // build }

    { LongRec(FixedPtr.dwFileVersionLS).Hi,  //release
      LongRec(FixedPtr.dwFileVersionLS).Lo] }

  except
    result := '0.0.0.0';
  end;
end;

function AutorizadoParaProdutores: Boolean;
var
  vSenha: string;
begin

  InputQuery('Senha', 'Informe a senha para Produtores do Sistema:', vSenha);

  if vSenha = pwdProdutores then
    result := true
  else
    result := false;

end;

function UpperNome(const sNome: string): string;
const
  excecao: array [0 .. 5] of string = (' da ', ' de ', ' do ', ' das ', ' dos ', ' e ');
var
  tamanho, j: Integer;
  i: Byte;
begin
  result := AnsiLowerCase(sNome);
  tamanho := length(result);

  for j := 1 to tamanho do
    // Se é a primeira letra ou se o caracter anterior é um espaço
    if (j = 1) or ((j > 1) and (result[j - 1] = Chr(32))) then
      result[j] := AnsiUpperCase(result[j])[1];
  for i := 0 to length(excecao) - 1 do
    result := StringReplace(result, excecao[i], excecao[i], [rfReplaceAll, rfIgnoreCase]);
end;

function GetIP: string;
var
  WSAData: TWSADATA;
  HostEnt: PHostEnt;
  Name: string;
begin
  WSAStartup(2, WSAData);
  SetLength(Name, 255);
  GetHostName(pAnsichar(Name), 255);
  SetLength(Name, StrLen(PChar(Name)));
  HostEnt := GetHostByName(pAnsichar(Name));
  with HostEnt^ do
  begin
    result := Format('%d.%d.%d.%d', [Byte(h_addr^[0]), Byte(h_addr^[1]), Byte(h_addr^[2]), Byte(h_addr^[3])]);
  end;
  WSACleanup;
end;

procedure ExecuteAndWait(const aCommando: string);
var
  tmpStartupInfo: TStartupInfo;
  tmpProcessInformation: TProcessInformation;
  tmpProgram: String;
begin
  tmpProgram := Trim(aCommando);
  FillChar(tmpStartupInfo, SizeOf(tmpStartupInfo), 0);
  with tmpStartupInfo do
  begin
    cb := SizeOf(TStartupInfo);
    wShowWindow := SW_HIDE;
  end;

  if CreateProcess(nil, PChar(tmpProgram), nil, nil, true, CREATE_NO_WINDOW, nil, nil, tmpStartupInfo, tmpProcessInformation) then
  begin
    // loop every 10 ms
    while WaitForSingleObject(tmpProcessInformation.hProcess, 10) > 0 do
    begin
      Application.ProcessMessages;
    end;
    CloseHandle(tmpProcessInformation.hProcess);
    CloseHandle(tmpProcessInformation.hThread);
  end
  else
  begin
    RaiseLastOSError;
  end;
end;

Function TruncarDecimal(Valor: Real; Decimal: Integer): Real;
Var
  Aux: String;
Begin
  Valor := Valor * 100000;
  Aux := formatfloat('00000000000000000000', Valor);
  Aux := Copy(Aux, 1, 15) + Copy(Aux, 16, Decimal);
  Case Decimal Of
    2:
      Valor := Strtofloat(Aux) / 100;
    3:
      Valor := Strtofloat(Aux) / 1000;
    4:
      Valor := Strtofloat(Aux) / 10000;
    5:
      Valor := Strtofloat(Aux) / 100000;
  End;
  result := Valor;
End;

Function String2Hex(Const Buffer: AnsiString): String;
Var
  n: Integer;
Begin
  result := '';
  For n := 1 To length(Buffer) Do
    result := LowerCase(result + IntToHex(Ord(Buffer[n]), 2));
End;

Procedure RefreshDesktop;
Var
  hDesktop: HWND;

Begin
  hDesktop := FindWindowEx(FindWindowEx(FindWindow('Progman', 'Program Manager'), 0, 'SHELLDLL_DefView', ''), 0, 'SysListView32', '');
  PostMessage(hDesktop, WM_KEYDOWN, VK_F5, 0);
  PostMessage(hDesktop, WM_KEYUP, VK_F5, 1 Shl 31);
End;

function ColumnByField(Grid: TDBGrid; Field: TField): TColumn;
var
  i: Integer;
begin
  for i := 0 to Grid.Columns.Count - 1 do
  begin
    result := Grid.Columns[i];
    if result.Field = Field then
      Exit;
  end;
  result := nil;
end;

function ColumnByFieldName(Grid: TDBGrid; FieldName: String): TColumn;
var
  i: Integer;
begin
  for i := 0 to Grid.Columns.Count - 1 do
  begin
    result := Grid.Columns[i];
    if result.FieldName = FieldName then
      Exit;
  end;
  result := nil;
end;

// returns MD5 has for a file
function MD5(const FileName: string): string;
var
  idmd5: TIdHashMessageDigest5;
  fs: TFileStream;
begin
  idmd5 := TIdHashMessageDigest5.Create;
  fs := TFileStream.Create(FileName, fmOpenRead OR fmShareDenyWrite);
  try
    result := idmd5.HashStreamAsHex(fs);
  finally
    fs.Free;
    idmd5.Free;
  end;
end;

function copiaarqeverifica(origem, destino: string): Boolean;
var
  md5_origem: string;
  md5_destino: string;

begin
  md5_origem := MD5(origem);

  CopyFile(PChar(origem), PChar(destino), false);
  Sleep(500);
  md5_destino := MD5(destino);

  if md5_origem = md5_destino then
    result := true
  else
  begin
    result := false;

    if FileExists(destino) then
      DeleteFile(PChar(destino));
  end;
end;

Function Hoje(Owner: TApplication; Conexao: TUniConnection): String;
{ var
  consulta: TUniquery; }
Begin
  try
    { consulta := TUniquery.Create(Owner);
      consulta.SQL.Text := 'select curdate() as hoje';
      consulta.Connection := Conexao;
      consulta.Open;
      result := consulta.Fieldbyname('hoje').AsString; }
    result := DateToStr(Date());

  finally
    // freeandnil(consulta);
  end;
End;

Function agora(Owner: TApplication; Conexao: TUniConnection): String;
var
  vlconsulta: TUniquery;
Begin
  try
    vlconsulta := TUniquery.Create(Owner);
    vlconsulta.Connection := Conexao;
    vlconsulta.SQL.Text := 'select concat(date_FORMAT( curdate(), ' + QuotedStr('%d/%m/%Y') + '),' + QuotedStr(' ') + ', curtime()) as agora';

    vlconsulta.Open;
    result := vlconsulta.Fieldbyname('agora').AsString;
  finally
    freeandnil(vlconsulta);
  end;
End;

Function mrfrImprimir(Application: TApplication; Conexao: TUniConnection; Dados: TUniDataSource; DirRelatorio: String; TipoImpressao: Integer;
  Impressora: String = ''; vUsuCodigo: string = ''): String;

Var
  Pack: Cardinal;
  Exec: Impressao;
  vNomeRotina: String;
  Vu: String;
Begin

  case TipoImpressao of
    tiImprimir:
      vNomeRotina := 'mrfrImpressao';
    tiGerador:
      vNomeRotina := 'mrfrGerador';
    tiImprimirDireto:
      vNomeRotina := 'mrfrImpressaoDireta';
  end;


  Pack := LoadPackage('modulos\mrfr.bpl');
  If Pack <> 0 Then
    Try
      @Exec := GetProcAddress(Pack, PChar(vNomeRotina));

      If Assigned(Exec) Then
        Vu := Exec(Application, Conexao, Dados, DirRelatorio, Impressora, Vu);

    Finally
      // DoUnLoadPackage(Application, Pack);
    End;

End;

Function TBTruncate(Valor: Real; Decimal: Integer): Real;
Var
  Aux: String;
Begin
  Valor := Valor * 100000;
  Aux := formatfloat('00000000000000000000', Valor);
  Aux := Copy(Aux, 1, 15) + Copy(Aux, 16, Decimal);
  Case Decimal Of
    2:
      Valor := Strtofloat(Aux) / 100;
    3:
      Valor := Strtofloat(Aux) / 1000;
    4:
      Valor := Strtofloat(Aux) / 10000;
    5:
      Valor := Strtofloat(Aux) / 100000;
  End;
  result := Valor;
End;

Function TBRound(Value: Extended; Decimals: Integer): Extended;
Var
  Factor, Fraction: Extended;
Begin
  Factor := IntPower(10, Decimals);
  { A conversão para string e depois para float evita
    erros de arredondamentos indesejáveis. }
  Value := Strtofloat(floattostr(Value * Factor));
  result := Int(Value);
  Fraction := Frac(Value);
  If (Fraction >= 0.5) Then
    result := result + 1
  Else If (Fraction <= -0.5) Then
    result := result - 1;
  result := result / Factor;

End;

function criptografa(pTexto: string; pTipo: Integer): string;

Const
  vEncripta: Array [1 .. 64] Of Char = ('p', 'ç', 'l', 'v', 'x', 'm', 'c', 'j', 'n', 's', 'h', '5', 't', 'W', 'w', 'Y', 'y', 'z', 'b', 'd', 'g', 'k',
    'a', 'f', 'q', 'o', 'i', 'u', 'e', 'r', ']', '[', '0', '6', '7', 'R', 'E', 'U', 'I', 'T', 'Q', 'F', 'A', 'K', 'G', 'V', 'B', 'Z', '4', '3', '8',
    '2', '9', '1', 'H', 'S', 'N', 'J', 'C', 'M', 'D', 'O', 'L', 'P');
  vDecripta: Array [1 .. 64] Of Char = ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L',
    'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o',
    'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '+', '/');

var
  vPos: Integer;
  vCont: Integer;
  vLetra: String;
  vResultado: String;
begin
  vResultado := '';
  For vPos := 1 To length(pTexto) Do
  Begin
    // Criptografando
    vLetra := '';
    For vCont := 1 To 64 Do
    Begin
      If pTipo = 1 Then
      Begin
        If pTexto[vPos] = vDecripta[vCont] Then
          vLetra := vEncripta[vCont];
      End
      Else If pTipo = 2 Then
      Begin
        If pTexto[vPos] = vEncripta[vCont] Then
          vLetra := vDecripta[vCont];
      End;
    End;
    // Se o caracter procurado não for encontrado no array mantem o caracter original
    If vLetra = '' Then
      vLetra := pTexto[vPos];

    vResultado := vResultado + vLetra;
  End;
  result := vResultado
end;

function StrZero(Zeros: string; Quant: Integer): string;
begin
  result := Zeros;
  Quant := Quant - length(result);
  if Quant > 0 then
    result := StringOfChar('0', Quant) + result;
end;

Function Mod11(iNumero: String): string;

var
  sCadeia: String;
  iX: Integer;
  iY: Integer;
  iValor: Integer;
  iDigito: Integer;
  sPosicao: String;
  iPosicao: Integer;

Begin
  iValor := 0;
  sCadeia := StrZero(iNumero, 16);
  For iY := 2 DownTo 1 do
  Begin
    For iX := 8 DownTo 1 do
    Begin
      sPosicao := Copy(sCadeia, (17 - (iX + (8 * (iY - 1)))), 1);
      iPosicao := StrToInt(sPosicao);
      iValor := iValor + (iPosicao * (iX + 1))
    End;
  End;

  iDigito := ((iValor * 10) mod 11);

  If iDigito >= 10 Then
    iDigito := 0;

  result := StrZero(inttostr(iDigito), 1);

End;

function Encripta(S: string): string;

var
  i, m: Integer;
  Texto: string;
  x: string;
begin
  result := '';
  m := 0;
  for i := 1 to length(S) do
  begin
    x := S[i];
    Texto := Texto + Copy(Codesenc, StrToInt(x) + 1, 1);
    m := m + 1;
    if m = 5 then
    begin
      Texto := Texto + '-';
      m := 0;
    end;
  end;

  // evitar que o código da chave seja gerado com um traço no final

  if Copy(Texto, length(Texto), 1) = '-' then
  begin
    Texto := Copy(Texto, 1, length(Texto) - 1);
  end;

  result := Texto;
end;

function DEcripta(S: string): string;

var
  i, l: Integer;
  Texto: string;
  x: string;
begin
  result := '';
  for i := 1 to length(S) do
  begin
    x := S[i];
    for l := 1 to length(S) do
    begin

      if Copy(Codesenc, l, 1) = x then
      begin
        break
      end;
    end;

    Texto := Texto + Copy(Codesdec, l, 1);
  end;
  result := Texto;
end;

function ComprimeZeros(S: string): string;

var
  i: Integer;
  x: Char;
  ini: Integer;
  fin: Integer;
  Texto: string;
begin
  result := '';
  ini := 0;
  for i := 1 to length(S) do
  begin
    x := S[i];
    if (ini > 0) and (StrToInt(x) > 0) then
    begin
      fin := i;
      Texto := Texto + '0' + formatfloat('00', (fin - ini)) + x;
      ini := 0;
    end
    else if (StrToInt(x) = 0) and (ini = 0) then
    begin
      ini := i;
    end
    else if (StrToInt(x) <> 0) then
    begin
      Texto := Texto + x;
    end;
  end;
  result := Texto;
end;

function DesComprimeZeros(S: string): string;

var
  i: Integer;
  Texto: string;
  x: Char;
  qtd: Integer;
  Zeros: string;
begin
  Zeros := '000000000000000000000000000000000000000000000000000000000000000000000000000000000';
  result := '';
  result := '';
  Texto := '';
  i := 1;
  while true do
  begin
    x := S[i];
    if (StrToInt(x) = 0) and (StrToInt(S[i - 1]) > 0) then
    begin
      qtd := +StrToInt(S[i + 1] + S[i + 2]);
      Texto := Texto + Copy(Zeros, 1, qtd);
      i := i + 3;

    end
    else
    begin
      Texto := Texto + x;
      i := i + 1;
    end;
    if i > length(S) then
    begin
      break
    end;
  end;
  result := Texto;
end;

function EncodeBase64(const inStr: string): string;

  function Encode_Byte(b: Byte): Ansichar;

  const
    Base64Code: string[64] = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';
  begin
    result := Base64Code[(b and $3F) + 1];
  end;

var
  i: Integer;
begin
  i := 1;
  result := '';
  while i <= length(inStr) do
  begin
    result := result + Encode_Byte(Byte(inStr[i]) shr 2);
    result := result + Encode_Byte((Byte(inStr[i]) shl 4) or (Byte(inStr[i + 1]) shr 4));
    if i + 1 <= length(inStr) then
      result := result + Encode_Byte((Byte(inStr[i + 1]) shl 2) or (Byte(inStr[i + 2]) shr 6))
    else
      result := result + '=';
    if i + 2 <= length(inStr) then
      result := result + Encode_Byte(Byte(inStr[i + 2]))
    else
      result := result + '=';
    Inc(i, 3);
  end;
end;

function DecodeBase64(const CinLine: string): string;

const
  RESULT_ERROR = -2;

var
  inLineIndex: Integer;
  c: Char;
  x: SmallInt;
  c4: Word;
  StoredC4: array [0 .. 3] of SmallInt;
  InLineLength: Integer;
begin
  result := '';
  inLineIndex := 1;
  c4 := 0;
  InLineLength := length(CinLine);

  while inLineIndex <= InLineLength do
  begin
    while (inLineIndex <= InLineLength) and (c4 < 4) do
    begin
      c := CinLine[inLineIndex];
      case c of
        '+':
          x := 62;
        '/':
          x := 63;
        '0' .. '9':
          x := Ord(c) - (Ord('0') - 52);
        '=':
          x := -1;
        'A' .. 'Z':
          x := Ord(c) - Ord('A');
        'a' .. 'z':
          x := Ord(c) - (Ord('a') - 26);
      else
        x := RESULT_ERROR;
      end;
      if x <> RESULT_ERROR then
      begin
        StoredC4[c4] := x;
        Inc(c4);
      end;
      Inc(inLineIndex);
    end;

    if c4 = 4 then
    begin
      c4 := 0;
      result := result + Char((StoredC4[0] shl 2) or (StoredC4[1] shr 4));
      if StoredC4[2] = -1 then
        Exit;
      result := result + Char((StoredC4[1] shl 4) or (StoredC4[2] shr 2));
      if StoredC4[3] = -1 then
        Exit;
      result := result + Char((StoredC4[2] shl 6) or (StoredC4[3]));
    end;
  end;
end;

function MD5texto(const Texto: string): string;
var
  idmd5: TIdHashMessageDigest5;
begin
  idmd5 := TIdHashMessageDigest5.Create;
  try
    result := idmd5.HashStringAsHex(Texto);
  finally
    idmd5.Free;
  end;
end;

function StrIsFloat(const S: string): Boolean;
begin
  try
    Strtofloat(S);
    result := true;
  except
    result := false;
  end;
end;

function CountChar(MyChar: Char; MyString: String): Integer;

var
  i: Integer;
begin
  result := 0;
  for i := 1 to length(MyString) do
  begin
    if MyString[i] = MyChar then
    begin
      Inc(result);
    end;
  end;
end;

procedure DoUnLoadPackage(AOwner: TComponent; Module: HModule);
var
  i: Integer;
  m: TMemoryBasicInformation;
begin
  for i := AOwner.ComponentCount - 1 downto 0 do
  begin
    VirtualQuery(GetClass(AOwner.Components[i].ClassName), m, SizeOf(m));
    if (Module = 0) or (HModule(m.AllocationBase) = Module) then
      AOwner.Components[i].Free;
  end;
  UnRegisterModuleClasses(Module);

  System.Classes.UnRegisterClass(Tdbmemo);

  System.Classes.UnRegisterClass(TCustomdbgrid);

  UnLoadPackage(Module);
end;

function buscaips: TStringList;

var
  lista: TStringList;
begin
  try
    lista := TStringList.Create;
    TIdStack.IncUsage;
    GStack.AddLocalAddressesToList(lista);
    result := lista;
    // FreeAndNil(lista);
  finally
    TIdStack.DecUsage;
    // FreeAndNil(lista);
  end;
end;

function semacento(Texto: string): string;

Var
  S: String;
  i: Integer;
begin
  for i := 1 to length(Texto) do
  begin
    S := S + RemoverAcento(Texto[i]);;
  end;
  result := S;
end;

function RemoverAcento(Key: Char): Char;
begin
  if (Key in ['é', 'è', 'ê']) then
  begin
    result := 'e';
  end
  else if (Key in ['É', 'È', 'Ê']) then
  begin
    result := 'E';
  end
  else if (Key in ['á', 'à', 'ã', 'â']) then
  begin
    result := 'a';
  end
  else if (Key in ['Á', 'À', 'Ã', 'Â']) then
  begin
    result := 'A';
  end
  else if (Key in ['í', 'ì', 'Í', 'Ì', 'î', 'Î']) then
  begin
    result := 'i';
  end
  else if (Key in ['Í', 'Ì', 'Î']) then
  begin
    result := 'I';
  end
  else if (Key in ['ó', 'ò', 'õ', 'ô']) then
  begin
    result := 'O';
  end
  else if (Key in ['Ó', 'Ò', 'Õ', 'Ô']) then
  begin
    result := 'O';
  end
  else if (Key in ['ú', 'ù']) then
  begin
    result := 'u';
  end
  else if (Key in ['Ú', 'Ù']) then
  begin
    result := 'U';
  end
  else if (Key in ['ç']) then
  begin
    result := 'c';
  end
  else if (Key in ['Ç']) then
  begin
    result := 'C';
  end
  else if (Key in ['&']) then
  begin
    result := 'E';
  end
  else if (Key in ['°', 'ª']) then
  begin
    result := 'R';
  end

  else
    result := Key;
end;

function funCountChar(psTexto: string; pcChar: Char): Integer;

var
  i, ivTot: Integer;

begin
  ivTot := 0;
  psTexto := Trim(psTexto);
  for i := 1 to length(psTexto) do
  begin
    if (UpCase(psTexto[i]) = UpCase(pcChar)) then
      ivTot := ivTot + 1;
  end;
  result := ivTot;
end;

Function Encode(Const S: AnsiString): AnsiString;

Const
  map: Array [0 .. 63] Of Char = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';

Var
  i: longint;
Begin
  i := 0;
  Move(S[1], i, length(S));
  Case length(S) Of
    1:
      result := map[i Mod 64] + map[(i Shr 6) Mod 64];
    2:
      result := map[i Mod 64] + map[(i Shr 6) Mod 64] + map[(i Shr 12) Mod 64];
    3:
      result := map[i Mod 64] + map[(i Shr 6) Mod 64] + map[(i Shr 12) Mod 64] + map[(i Shr 18) Mod 64];
  End;
End;

Function PostProcess(Const S: AnsiString): AnsiString;

Var
  ss: AnsiString;
Begin
  ss := S;
  result := '';
  While ss <> '' Do
  Begin
    result := result + Encode(Copy(ss, 1, 3));
    Delete(ss, 1, 3);
  End;
End;

Function InternalEncrypt(Const S: AnsiString; Key: Word): AnsiString;

Var
  i: Word;
  Seed: Int64;
Begin
  result := S;
  Seed := Key;
  For i := 1 To length(result) Do
  Begin
    result[i] := Ansichar(Byte(result[i]) Xor (Seed Shr 8));
    Seed := (Byte(result[i]) + Seed) * Word(C1) + Word(C2);
  End;
End;

Function InternalDecrypt(Const S: AnsiString; Key: Word): AnsiString;

Var
  i: Word;
  Seed: Int64;
Begin
  result := S;
  Seed := Key;
  For i := 1 To length(result) Do
  Begin
    result[i] := Ansichar(Byte(result[i]) Xor (Seed Shr 8));
    Seed := (Byte(S[i]) + Seed) * Word(C1) + Word(C2);
  End;
End;

Function Encrypt(Const S: AnsiString; Key: Word): AnsiString;
Begin
  result := PostProcess(InternalEncrypt(S, Key));
End;

function MemoryStreamToString(aStream: TStream): string;

var
  ss: TStringStream;
begin
  if aStream <> nil then
  begin
    ss := TStringStream.Create('');
    try
      ss.CopyFrom(aStream, 0); // No need to position at 0 nor provide size
      result := ss.DataString;
    finally
      ss.Free;
    end;
  end
  else
  begin
    result := '';
  end;
end;

function StreamToString(Stream: TStream): String;

var
  ms: TMemoryStream;
begin
  result := '';
  ms := TMemoryStream.Create;
  try
    ms.LoadFromStream(Stream);
    SetString(result, PChar(ms.memory), ms.Size);
  finally
    ms.Free;
  end;
end;

function chInt(ch: Char): ShortInt;
begin
  result := Ord(ch) - Ord('0');
end;

function intCh(Int: ShortInt): Char;
begin
  result := Chr(Int + Ord('0'));
end;

Function Modulo11(Numero: String): String;

Var
  i, k: Integer;
  Soma: Integer;
  Digito: Integer;
Begin
  result := '';
  Try
    Soma := 0;
    k := 2;
    For i := length(Numero) Downto 1 Do
    Begin
      Soma := Soma + (StrToInt(Numero[i]) * k);
      Inc(k);
      If k > 9 Then
        k := 2;
    End;
    Digito := 11 - Soma Mod 11;
    If Digito >= 10 Then
      Digito := 0;
    result := result + Chr(Digito + Ord('0'));
  Except
    result := 'X';
  End;
End;

Function voltadata(Dia: String): String;

Var
  d: String;
  di, me, an: String;
Begin
  d := Dia;
  di := Copy(d, 9, 2);
  me := Copy(d, 6, 2);
  an := Copy(d, 1, 4);
  d := di + '/' + me + '/' + an;
  result := d;
End;

Function ajustadata(Dia: String): String;

Var
  d: String;
  di, me, an: String;
Begin
  d := Dia;
  di := Copy(d, 1, 2);
  me := Copy(d, 4, 2);
  an := Copy(d, 7, 4);
  d := an + '-' + me + '-' + di;
  result := d;
End;

Function BuscaTroca(Text, Busca, Troca: String): String;

Var
  n: Integer;
Begin

  For n := 1 To length(Text) Do
  Begin
    If Copy(Text, n, 1) = Busca Then
    Begin
      Delete(Text, n, 1);
      Insert(Troca, Text, n);
    End;
  End;

  result := Text;
End;

Function desprotegertexto(senha: String): String;

Var
  i: Integer;
  S: String[255];
  c: Array [0 .. 255] Of Byte Absolute S;

Begin
  S := senha;
  For i := 1 To length(S) Do
    S[i] := Ansichar(23 Xor Ord(c[i]));
  result := S;
End;

Function protegertexto(senha: String): String;

Var
  i: Integer;
  S: String[255];
  c: Array [0 .. 255] Of Byte Absolute S;
Begin
  S := senha;
  For i := 1 To Ord(S[0]) Do
    c[i] := 23 Xor c[i];
  result := S;
End;

Function SoLetraseNumeros(Const Texto: String): String;
//
// Remove caracteres de uma string deixando apenas letras
//
Var
  i: Integer;
  S: String;
Begin
  S := '';
  For i := 0 To length(LowerCase(Texto)) Do
  Begin
    If (Texto[i] In ['0' .. '9', 'a' .. 'z', 'A' .. 'Z', ' ']) Then
    Begin
      S := S + Copy(Texto, i, 1);
    End;
  End;
  result := S;

end;

Function SoLetras(Const Texto: String): String;

//
// Remove caracteres de uma string deixando apenas letras
//
Var
  i: Integer;
  S: String;
Begin
  S := '';
  For i := 0 To length(LowerCase(Texto)) Do
  Begin
    If (Texto[i] In ['a' .. 'z', 'A' .. 'Z']) Then
    Begin
      S := S + Copy(Texto, i, 1);
    End;
  End;
  result := S;
End;

Function SoNumeros(Const Texto: String): String;

//
// Remove caracteres de uma string deixando apenas numeros
//
Var
  i: Integer;
  S: String;
Begin
  S := '';
  For i := 1 To length(Texto) Do
  Begin
    If (Texto[i] In ['0' .. '9']) Then
    Begin
      S := S + Copy(Texto, i, 1);
    End;
  End;
  result := S;
End;

Function DataExtenso(Data: TDateTime): String;
{ Retorna uma data por extenso }
Var
  DiaDoMes: Array [1 .. 31] Of String;
  DiaDaSemana: Array [1 .. 7] Of String;
  Meses: Array [1 .. 12] Of String;
  Anos: Array [2000 .. 2040] Of String;
  Dia, Mes, Ano: Word;
Begin
  { Dias do mes }
  DiaDoMes[1] := 'Primeiro';
  DiaDoMes[2] := 'Dois';
  DiaDoMes[3] := 'Três';
  DiaDoMes[4] := 'Quatro';
  DiaDoMes[5] := 'Cinco';
  DiaDoMes[6] := 'Seis';
  DiaDoMes[7] := 'Sete';
  DiaDoMes[8] := 'Oito';
  DiaDoMes[9] := 'Nove';
  DiaDoMes[10] := 'Dez';
  DiaDoMes[11] := 'Onze';
  DiaDoMes[12] := 'Doze';
  DiaDoMes[13] := 'Treze';
  DiaDoMes[14] := 'Quatorze';
  DiaDoMes[15] := 'Quinze';
  DiaDoMes[16] := 'Dezesseis';
  DiaDoMes[17] := 'Dezessete';
  DiaDoMes[18] := 'Dezoito';
  DiaDoMes[19] := 'Dezenove';
  DiaDoMes[20] := 'Vinte';
  DiaDoMes[21] := 'Vinte e Um';
  DiaDoMes[22] := 'Vinte e Dois';
  DiaDoMes[23] := 'Vinte e Três';
  DiaDoMes[24] := 'Vinte e Quatro';
  DiaDoMes[25] := 'Vinte e Cinco';
  DiaDoMes[26] := 'Vinte e Seis';
  DiaDoMes[27] := 'Vinte e Sete';
  DiaDoMes[28] := 'Vinte e Oito';
  DiaDoMes[29] := 'Vinte e Nove';
  DiaDoMes[30] := 'Trinta';
  DiaDoMes[31] := 'Trinta e Um';

  { Dias da Semana }
  DiaDaSemana[1] := 'Domingo';
  DiaDaSemana[2] := 'Segunda-feira';
  DiaDaSemana[3] := 'Terça-feira';
  DiaDaSemana[4] := 'Quarta-feira';
  DiaDaSemana[5] := 'Quinta-feira';
  DiaDaSemana[6] := 'Sexta-feira';
  DiaDaSemana[7] := 'Sábado';
  { Meses do ano }
  Meses[1] := 'Janeiro';
  Meses[2] := 'Fevereiro';
  Meses[3] := 'Março';
  Meses[4] := 'Abril';
  Meses[5] := 'Maio';
  Meses[6] := 'Junho';
  Meses[7] := 'Julho';
  Meses[8] := 'Agosto';
  Meses[9] := 'Setembro';
  Meses[10] := 'Outubro';
  Meses[11] := 'Novembro';
  Meses[12] := 'Dezembro';
  { Anos }
  Anos[2000] := 'Dois Mil';
  Anos[2001] := 'Dois Mil e Um';
  Anos[2002] := 'Dois Mil e Dois';
  Anos[2003] := 'Dois Mil e Três';
  Anos[2004] := 'Dois Mil e Quatro';
  Anos[2005] := 'Dois Mil e Cinco';
  Anos[2006] := 'Dois Mil e Seis';
  Anos[2007] := 'Dois Mil e Sete';
  Anos[2008] := 'Dois Mil e Oito';
  Anos[2009] := 'Dois Mil e Nove';
  Anos[2010] := 'Dois Mil e Dez';
  Anos[2011] := 'Dois Mil e Onze';
  Anos[2012] := 'Dois Mil e Doze';
  Anos[2013] := 'Dois Mil e Treze';
  Anos[2014] := 'Dois Mil e Quatorze';
  Anos[2015] := 'Dois Mil e Quinze';
  Anos[2016] := 'Dois Mil e Dezesseis';
  Anos[2017] := 'Dois Mil e Dezessete';
  Anos[2018] := 'Dois Mil e Dezoito';
  Anos[2019] := 'Dois Mil e Dezenove';
  Anos[2020] := 'Dois Mil e Vinte';
  Anos[2021] := 'Dois Mil e Vinte e Um';
  Anos[2022] := 'Dois Mil e Vinte e Dois';
  Anos[2023] := 'Dois Mil e Vinte e Três';
  Anos[2024] := 'Dois Mil e Vinte e Quatro';
  Anos[2025] := 'Dois Mil e Vinte e Cinco';
  Anos[2026] := 'Dois Mil e Vinte e Seis';
  Anos[2027] := 'Dois Mil e Vinte e Sete';
  Anos[2028] := 'Dois Mil e Vinte e Oito';
  Anos[2029] := 'Dois Mil e Vinte e Nove';
  Anos[2030] := 'Dois Mil e Trinta';
  Anos[2031] := 'Dois Mil e Trinta e Um';
  Anos[2032] := 'Dois Mil e Trinta e Dois';
  Anos[2033] := 'Dois Mil e Trinta e Três';
  Anos[2034] := 'Dois Mil e Trinta e Quatro';
  Anos[2035] := 'Dois Mil e Trinta e Cinco';
  Anos[2036] := 'Dois Mil e Trinta e Seis';
  Anos[2037] := 'Dois Mil e Trinta e Sete';
  Anos[2038] := 'Dois Mil e Trinta e Oito';
  Anos[2039] := 'Dois Mil e Trinta e Nove';
  Anos[2040] := 'Dois Mil e Quarenta';

  Decodedate(Data, Ano, Mes, Dia);
  result := DiaDoMes[Dia];

  If Dia = 1 Then
    result := result + ' dia do mês de ' + Meses[Mes] + ' do ano de ' + Anos[Ano]
  Else
    result := result + ' dias do mês de ' + Meses[Mes] + ' do ano de ' + Anos[Ano];
End;

procedure SalvarTextoEmArquivo(Texto: String; Diretorio: String);
var
  MyText: TStringList;
begin
  if not DirectoryExists(ExtractFileDir(Diretorio)) then
    ForceDirectories(ExtractFileDir(Diretorio));

  MyText := TStringList.Create;
  try
    MyText.Add(Texto);
    MyText.SaveToFile(Diretorio);
  finally
    MyText.Free
  end;
end;

procedure FitGrid(Grid: TDBGrid);
const
  C_Add = 3;
var
  ds: TDataSet;
  bm: TBookmark;
  i: Integer;
  w: Integer;
  a: Array of Integer;
begin
  ds := Grid.DataSource.DataSet;
  if Assigned(ds) then
  begin
    ds.DisableControls;
    bm := ds.GetBookmark;
    try
      ds.First;
      SetLength(a, Grid.Columns.Count);
      while not ds.Eof do
      begin
        for i := 0 to Grid.Columns.Count - 1 do
        begin
          if Assigned(Grid.Columns[i].Field) then
          begin
            w := Grid.Canvas.TextWidth(ds.Fieldbyname(Grid.Columns[i].Field.FieldName).DisplayText);
            if a[i] < w then
              a[i] := w;
          end;
        end;
        ds.Next;
      end;
      // if fieldwidth is smaller than Row 0 (field names) fix
      for i := 0 to Grid.Columns.Count - 1 do
      begin
        w := Grid.Canvas.TextWidth(Grid.Columns[i].Field.FieldName);
        if a[i] < w then
          a[i] := w;
      end;

      for i := 0 to Grid.Columns.Count - 1 do
        Grid.Columns[i].Width := a[i] + C_Add;
      ds.GotoBookmark(bm);
    finally
      ds.FreeBookmark(bm);
      ds.EnableControls;
    end;
  end;
end;

procedure AdjustColumnWidths(DBGrid: TDBGrid);
var
  TotalColumnWidth, ColumnCount, GridClientWidth, i: Integer;
  vDiffColumnWidth: Integer;
begin
  ColumnCount := DBGrid.Columns.Count;
  if ColumnCount = 0 then
    Exit;

  // compute total width used by grid columns and vertical lines if any
  TotalColumnWidth := 0;
  for i := 0 to ColumnCount - 1 do
    TotalColumnWidth := TotalColumnWidth + DBGrid.Columns[i].Width;
  if dgColLines in DBGrid.Options then
    // include vertical lines in total (one per column)
    TotalColumnWidth := TotalColumnWidth + ColumnCount;

  // compute grid client width by excluding vertical scroll bar, grid indicator,
  // and grid border
  GridClientWidth := DBGrid.Width - GetSystemMetrics(SM_CXVSCROLL);
  if dgIndicator in DBGrid.Options then
  begin
    GridClientWidth := GridClientWidth - IndicatorWidth;
    if dgColLines in DBGrid.Options then
      Dec(GridClientWidth);
  end;

  if DBGrid.BorderStyle = bsSingle then
  begin
    if DBGrid.Ctl3D then // border is sunken (vertical border is 2 pixels wide)
      GridClientWidth := GridClientWidth - 4
    else // border is one-dimensional (vertical border is one pixel wide)
      GridClientWidth := GridClientWidth - 2;
  end;

  // adjust column widths
  if TotalColumnWidth < GridClientWidth then
  begin
    vDiffColumnWidth := (GridClientWidth - TotalColumnWidth);
    for i := 0 to ColumnCount - 1 do
      DBGrid.Columns[i].Width := DBGrid.Columns[i].Width + Trunc(vDiffColumnWidth * (DBGrid.Columns[i].Width / TotalColumnWidth));;
  end
  else if TotalColumnWidth > GridClientWidth then
  begin
    vDiffColumnWidth := (TotalColumnWidth - GridClientWidth);
    for i := 0 to ColumnCount - 1 do
      DBGrid.Columns[i].Width := DBGrid.Columns[i].Width - Trunc(vDiffColumnWidth * (DBGrid.Columns[i].Width / TotalColumnWidth));
  end;
end;

procedure AdjustColumnWidths_BACKUP(DBGrid: TDBGrid);
var
  TotalColumnWidth, ColumnCount, GridClientWidth, Filler, i: Integer;
begin
  ColumnCount := DBGrid.Columns.Count;
  if ColumnCount = 0 then
    Exit;

  // compute total width used by grid columns and vertical lines if any
  TotalColumnWidth := 0;
  for i := 0 to ColumnCount - 1 do
    TotalColumnWidth := TotalColumnWidth + DBGrid.Columns[i].Width;
  if dgColLines in DBGrid.Options then
    // include vertical lines in total (one per column)
    TotalColumnWidth := TotalColumnWidth + ColumnCount;

  // compute grid client width by excluding vertical scroll bar, grid indicator,
  // and grid border
  GridClientWidth := DBGrid.Width - GetSystemMetrics(SM_CXVSCROLL);
  if dgIndicator in DBGrid.Options then
  begin
    GridClientWidth := GridClientWidth - IndicatorWidth;
    if dgColLines in DBGrid.Options then
      Dec(GridClientWidth);
  end;

  if DBGrid.BorderStyle = bsSingle then
  begin
    if DBGrid.Ctl3D then // border is sunken (vertical border is 2 pixels wide)
      GridClientWidth := GridClientWidth - 4
    else // border is one-dimensional (vertical border is one pixel wide)
      GridClientWidth := GridClientWidth - 2;
  end;

  // adjust column widths
  if TotalColumnWidth < GridClientWidth then
  begin
    Filler := (GridClientWidth - TotalColumnWidth) div ColumnCount;
    for i := 0 to ColumnCount - 1 do
      DBGrid.Columns[i].Width := DBGrid.Columns[i].Width + Filler;
  end
  else if TotalColumnWidth > GridClientWidth then
  begin
    Filler := (TotalColumnWidth - GridClientWidth) div ColumnCount;
    if (TotalColumnWidth - GridClientWidth) mod ColumnCount <> 0 then
      Inc(Filler);
    for i := 0 to ColumnCount - 1 do
      DBGrid.Columns[i].Width := DBGrid.Columns[i].Width - Filler;
  end;
end;

procedure ImprimirComprovantesORC(Owner: TApplication; vConexao: TUniConnection; vOrcChave, vDirRelat, vImpressora: String; vTipoImpressao: Integer);
var
  vtOrcChave: TVirtualTable;
  DSOrcChave: TUniDataSource;
begin
  vtOrcChave := TVirtualTable.Create(Owner);
  DSOrcChave := TUniDataSource.Create(Owner);

  try
    vtOrcChave.FieldDefs.Add('orcchave', ftInteger);

    DSOrcChave.DataSet := vtOrcChave;

    vtOrcChave.Clear;
    vtOrcChave.Close;
    vtOrcChave.Open;
    vtOrcChave.Append;
    vtOrcChave.Fieldbyname('orcchave').AsString := vOrcChave;
    vtOrcChave.Post;

    mrfrImprimir(Owner, vConexao, DSOrcChave, vDirRelat, vTipoImpressao, vImpressora);

  finally
    vtOrcChave.Free;
    DSOrcChave.Free;
  end;
end;

procedure ImprimirComprovantesTEF(Owner: TApplication; vConexao: TUniConnection; vTrmCodigo, vDirRelat, vImpressora: String; vTipoImpressao: Integer);
var
  vtTrm: TUniQuery;
  DSTrm: TUniDataSource;
begin

  vtTrm := TUniQuery.Create(Owner);
  vtTrm.Connection:=vConexao;
  vtTrm.SQL.Text:='select trmcodigo,trmterminalcomprovante1via, trmterminalcomprovante2via from trm '+
                  'where trmcodigo='+vTrmCodigo;
  vtTrm.Open;



  DSTrm := TUniDataSource.Create(Owner);

  try

    DSTrm.DataSet := vtTrm;

    if (length(vtTrm.FieldByName('trmterminalcomprovante1via').AsString)>0) or
       (length(vtTrm.FieldByName('trmterminalcomprovante2via').AsString)>0) then
    begin
      mrfrImprimir(Owner, vConexao, DSTrm, vDirRelat, vTipoImpressao, vImpressora);
    end;

  finally
    vtTrm.Free;
    DSTrm.Free;
  end;
end;


procedure ImprimirComprovantesPDV(Owner: TApplication; vConexao: TUniConnection; vMesChave, vDirRelat, vImpressora: String; vTipoImpressao: Integer);
var
  vtMesChave: TVirtualTable;
  DSMesChave: TUniDataSource;
begin
  vtMesChave := TVirtualTable.Create(Owner);
  DSMesChave := TUniDataSource.Create(Owner);

  try
    vtMesChave.FieldDefs.Add('meschave', ftInteger);

    DSMesChave.DataSet := vtMesChave;

    vtMesChave.Clear;
    vtMesChave.Close;
    vtMesChave.Open;
    vtMesChave.Append;
    vtMesChave.Fieldbyname('meschave').AsString := vMesChave;
    vtMesChave.Post;

    mrfrImprimir(Owner, vConexao, DSMesChave, vDirRelat, vTipoImpressao, vImpressora);

  finally
    vtMesChave.Free;
    DSMesChave.Free;
  end;
end;

procedure ImprimirComprovantesCCX(Owner: TApplication; vConexao: TUniConnection; vCcxChave, vTipoOperacao: Integer; vImpressora: String;
  vTipoImpressao: Integer);
var
  vtComprov: TVirtualTable;
  DSComprov: TUniDataSource;
  vDirRelat: String;
begin
  vtComprov := TVirtualTable.Create(Owner);
  DSComprov := TUniDataSource.Create(Owner);

  try
    vtComprov.FieldDefs.Add('ccxchave', ftInteger);

    DSComprov.DataSet := vtComprov;

    case vTipoOperacao of
      ocxAbertura:
        vDirRelat := ExtractFilePath(Application.ExeName) + 'relat\AberturaCCX.fr3';
      ocxSuprimento:
        vDirRelat := ExtractFilePath(Application.ExeName) + 'relat\SuprimentoCCX.fr3';
      ocxSangria:
        vDirRelat := ExtractFilePath(Application.ExeName) + 'relat\SangriaCCX.fr3';
      ocxTEF:
        vDirRelat := ExtractFilePath(Application.ExeName) + 'relat\TEFCCX.fr3';
      ocxFechamento:
        vDirRelat := ExtractFilePath(Application.ExeName) + 'relat\FechamentoCCX.fr3';
      ocxGaveta:
        vDirRelat := ExtractFilePath(Application.ExeName) + 'relat\GavetaCCX.fr3';

    end;

    vtComprov.Clear;
    vtComprov.Close;
    vtComprov.Open;
    vtComprov.Append;
    vtComprov.Fieldbyname('ccxchave').AsInteger := vCcxChave;
    vtComprov.Post;

    mrfrImprimir(Owner, vConexao, DSComprov, vDirRelat, vTipoImpressao, vImpressora);

  finally
    vtComprov.Free;
    DSComprov.Free;
  end;
end;

function IsValidatePrinter(LabelPrinter: String): Boolean;
var
  i: Integer;
begin
  for i := 0 to Printer.Printers.Count - 1 do
    if AnsiContainsText(Printer.Printers[i], LabelPrinter) then
      Exit(true);
  result := false;
end;

function UpperSemAcento(const aStr: String): String;
type
  USASCIIString = type AnsiString(20127); // 20127 = us ascii
begin
  result := String(USASCIIString(aStr));
  result := StringReplace(result, '&', 'e', [rfReplaceAll]);
  result := AnsiUpperCase(result);
end;

function ComputerName: String;
var
  ComputerName: Array [0 .. 256] of Char;
  Size: DWord;
begin
  Size := 256;
  GetComputerName(ComputerName, Size);

  result := ComputerName;
end;

function UserName: String;
var
  UserName: Array [0 .. 256] of Char;
  Size: DWord;
begin
  Size := 256;
  GetUserName(UserName, Size);

  result := UserName;
end;

function SomenteTexto(pTexto: String): String;
begin
  result := OnlyAlpha(pTexto);
end;

function SomenteNumeros(pTexto: String): String;
begin
  result := OnlyNumber(pTexto);
end;

function ValorExtenso(pValor: Double): String;
var
  Extenso: TACBrExtenso;
begin
  Extenso := TACBrExtenso.Create(Application);
  try
    result := Extenso.ValorToTexto(pValor);
  finally
    Extenso.Free;
  end;
end;

procedure CompressFiles(Files: TStrings; const Compressed: String);
var
  FileInName: TBytes;
  FileIn, FileOut: TFileStream;
  Compressor: TCompressionStream;
  NumFiles, i, len, Size: Integer;
  fin: Byte;
begin
  FileOut := TFileStream.Create(Compressed, fmCreate or fmShareExclusive);
  Try
    Compressor := TCompressionStream.Create(clMax, FileOut);
    Try
      NumFiles := Files.Count;
      Compressor.Write(NumFiles, SizeOf(Integer));
      for i := 0 to (NumFiles - 1) do
      begin
        FileIn := TFileStream.Create(Files[i], fmOpenRead and fmShareExclusive);
        try { write File Name }
          FileInName := TEncoding.UTF8.GetBytes(ExtractFileName(Files[i]));
          len := length(FileInName);
          Compressor.Write(len, SizeOf(Integer));
          Compressor.Write(PByte(FileInName)^, len); { Write File }
          Size := FileIn.Size;
          Compressor.Write(Size, SizeOf(Integer));
          Compressor.CopyFrom(FileIn, FileIn.Size);
          fin := 0;
          Compressor.Write(fin, SizeOf(Byte));
        finally
          FileIn.Free;
        end;
      end;
    finally
      freeandnil(Compressor);
    end;
  Finally
    freeandnil(FileOut);
  End;
end;

procedure DecompressFile(Compressed, Decompressed: String);
var
  FileNameBytes: TBytes;
  FileName: string;
  FaleIn, FileOut: TFileStream;
  Descompressor: TDecompressionStream;
  NumFiles, i, len, Size: Integer;
  fin: Byte;
begin
  FaleIn := TFileStream.Create(Compressed, fmOpenRead and fmShareExclusive);
  Try
    Descompressor := TDecompressionStream.Create(FaleIn);
    try
      Descompressor.ReadBuffer(NumFiles, SizeOf(Integer));
      for i := 0 to (NumFiles - 1) do
      begin { Read File Name }
        Descompressor.ReadBuffer(len, SizeOf(Integer));
        SetLength(FileNameBytes, len);
        Descompressor.ReadBuffer(PByte(FileNameBytes)^, len);
        FileName := TEncoding.UTF8.GetString(FileNameBytes);
        FileName := ExtractFileName(FileName); { Read File }
        Descompressor.Read(Size, SizeOf(Integer));
        FileOut := TFileStream.Create(IncludeTrailingBackSlash(Decompressed) + FileName, fmCreate or fmShareExclusive);
        try
          if (Size > 0) then
            FileOut.CopyFrom(Descompressor, Size);
        finally
          FileOut.Free;
        end;
        Descompressor.Read(fin, SizeOf(Byte));
      end;
    finally
      freeandnil(Descompressor);
    end;
  Finally
    freeandnil(FaleIn);
  End;
end;

function SalvarBmp(formulario: Tform; vNomeArq: String; vbmp: Tbitmap): Boolean;
begin
  vbmp := formulario.GetFormImage;
  try
    vbmp.SaveToFile(vNomeArq);
    result := true;
  except
    result := false;
  end;
end;

Function ConsultaXMLServidor(IPServidorArquivo:String; aArq: String): String;
var
  resposta: IResponse;

  URL_BASE: String;
  URL_PATH: String;
  PORT_SERV: String;

begin

  Result := '';

  URL_BASE := 'http://';
  URL_PATH := '/v1';
  PORT_SERV := '8096';

  try

    resposta := TRequest.New
                     .BaseURL(URL_BASE + IPServidorArquivo + ':' + PORT_SERV + URL_PATH)
                     .Resource('/arquivohash')
                      .AddBody(TJSONObject.Create.AddPair('nomecaminhoarquivo',aArq) )
                      .ClearParams
                        .Accept('application/json')
                     .get;

    if (resposta.StatusCode = 200) or (resposta.StatusCode = 201) then
    begin

      Result := resposta.Content;

    end
    else
    begin

      Result := '';

    end;

  except
    Result := '';
  end;

end;



Function EnviaXMLServidor(IPServidorArquivo:String; aArq: String): String;
var
  resposta: IResponse;

  URL_BASE: String;
  URL_PATH: String;
  PORT_SERV: String;


  Arquivo: TBytesStream;
  Arquivotxt : TStringStream;


  Hash : TIdHashMessageDigest5;
  HashLocal:String;

begin

  Result := '';

  URL_BASE := 'http://';
  URL_PATH := '/v1';
  PORT_SERV := '8096';


  try
    if aArq <> '' then
    begin

      if fileexists(aArq) then
      begin


        if pos('.xml',aArq)>0 then
        begin

          Arquivotxt := TStringStream.Create;
          Arquivotxt.LoadFromFile(aArq);

          Hash := TIdHashMessageDigest5.Create;
          HashLocal := Hash.HashStringAsHex(Arquivotxt.ToString);


          resposta := TRequest.New
                            .BaseURL(URL_BASE + IPServidorArquivo + ':' + PORT_SERV + URL_PATH)
                            .Resource('/arquivo/' + aArq+'&'+HashLocal)
                            .ClearParams
                              .Accept('application/xml')
                             .AddBody(Arquivotxt)
                           .post;





        end
        else
        begin

          Arquivo := TBytesStream.Create;
          Arquivo.LoadFromFile(aArq);

          Hash := TIdHashMessageDigest5.Create;
          HashLocal := Hash.HashStringAsHex(Arquivo.ToString);


          resposta := TRequest.New
                            .BaseURL(URL_BASE + IPServidorArquivo + ':' + PORT_SERV + URL_PATH)
                            .Resource('/arquivo/' + aArq+'&'+HashLocal)
                            .ClearParams
                             .Accept('application/octet-stream')
                             .AddBody(Arquivo)
                           .post;

        end;

        if (resposta.StatusCode = 200) or (resposta.StatusCode = 201) then
        begin

          Result := resposta.Content;

        end
        else
        begin
          Result := '';
        end;

      end;

    end;

  except
    Result := '';
  end;

end;

Function BaixaXMLServidor(IPServidorArquivo: String;
  const aArq: String): String;
var
  resposta: IResponse;

  URL_BASE: String;
  URL_PATH: String;
  PORT_SERV: String;

  Arquivoxml: TStringList;

  LMemorystream: TMemoryStream;

  vlNomeArquivo: string;

begin

  try

    Result := '';

    URL_BASE := 'http://';
    URL_PATH := '/v1';
    PORT_SERV := '8096';

    vlNomeArquivo := aArq;

    resposta := TRequest.New.BaseURL(URL_BASE + CarraIpServidor + ':' +
      PORT_SERV + URL_PATH).Resource('/arquivo')
      .AddBody(tJsonObject.Create.AddPair('nomecaminhoarquivo', vlNomeArquivo))
      .ClearParams.Accept('application/xml').get;

    if (resposta.StatusCode = 200) or (resposta.StatusCode = 201) then
    begin

      Arquivoxml := TStringList.Create;
      Arquivoxml.Text := resposta.Content;

      if not DirectoryExists(ExtractFilePath(vlNomeArquivo)) then
        ForceDirectories(ExtractFilePath(vlNomeArquivo));

      Arquivoxml.SaveToFile(vlNomeArquivo);

      Result := vlNomeArquivo;

    end
    else
    begin
      ShowMessage('Falha no Envio: ' + resposta.Content);
      Result := '';

    end;

  except
    on E: EAccessViolation do
    begin
      Result := '2979 Erro: ' + E.Message;
    end;
  end;

end;

   {

Function BaixaXMLServidor(IPServidorArquivo:String;const aArq: String): String;
var
  resposta: IResponse;

  URL_BASE: String;
  URL_PATH: String;
  PORT_SERV: String;

  Arquivoxml : TStringList;


  LMemorystream:TMemorystream;

  vlNomeArquivo:string;
  vlConsultaArquivos:string;
begin

  try

    Result := '';

    URL_BASE := 'http://';
    URL_PATH := '/v1';
    PORT_SERV := '8096';

    vlNomeArquivo:=aArq;


    resposta := TRequest.New
                   .BaseURL(URL_BASE + IPServidorArquivo + ':' + PORT_SERV + URL_PATH)
                   .Resource('/arquivo')
                   .AddBody(TJSONObject.Create.AddPair('nomecaminhoarquivo',vlNomeArquivo))
                   .ClearParams
                     .Accept('application/xml')
                 .Get;

    if (resposta.StatusCode = 200) or (resposta.StatusCode = 201) then
    begin

      Arquivoxml:=TStringList.Create;
      Arquivoxml.Text:=resposta.Content;

      if pos('arqnfces',aArq)>0  then
      begin
        vlConsultaArquivos:=stringreplace(aArq,'arqnfces','conarqnfces',[]);
      end
      else if pos('arqnfes',aArq)>0  then
      begin
        vlConsultaArquivos:=stringreplace(aArq,'arqnfes','conarqnfes',[]);
      end;

      if not DirectoryExists(extractfilepath(vlConsultaArquivos)) then
          ForceDirectories(extractfilepath(vlConsultaArquivos));

      Arquivoxml.SaveToFile(vlConsultaArquivos);

      Result:=vlConsultaArquivos;

    end
    else
    begin
      Result:='';
    end;

  except
      on E: EAccessViolation do
      begin
        Result := '2979 Erro: '+e.Message;
      end;
  end;

end;
}

{

Function BaixaXMLServidor(IPServidorArquivo:String;const aArq: String): String;
var
  resposta: IResponse;

  URL_BASE: String;
  URL_PATH: String;
  PORT_SERV: String;

  Arquivoxml : TStringList;


  Hash : TIdHashMessageDigest5;
  HashLocal:String;
  HashServidor:String;

  LMemorystream:TMemorystream;
   a:string;
   vlNomeArquivo:string;
begin

  try

    Result := '';

    URL_BASE := 'http://';
    URL_PATH := '/v1';
    PORT_SERV := '8096';

    vlNomeArquivo:=aArq;




    resposta := TRequest.New
                   .BaseURL(URL_BASE + IPServidorArquivo + ':' + PORT_SERV + URL_PATH)
                    .Resource('/arquivohash')
                    .AddBody(TJSONObject.Create.AddPair('nomecaminhoarquivo',aArq)
                                               .AddPair('hasharquivo',''))
                    .ClearParams
                   .Accept('application/xml')
                 .Get;


    showmessage('2942: '+ resposta.StatusCode.ToString);

    Result:=aArq;

    if (resposta.StatusCode = 200) or (resposta.StatusCode = 201) then
    begin


      HashServidor:=resposta.Content;

      if (HashServidor<>'') and (HashServidor<>'0') then
      begin

        resposta := TRequest.New
                       .BaseURL(URL_BASE + IPServidorArquivo + ':' + PORT_SERV + URL_PATH)
                       .Resource('/arquivo')
                       .AddBody(TJSONObject.Create.AddPair('nomecaminhoarquivo',aArq))
                       .ClearParams
                         .Accept('application/xml')
                     .Get;



        if (resposta.StatusCode = 200) or (resposta.StatusCode = 201) then
        begin

          Arquivoxml:=TStringList.Create;
          Arquivoxml.Text:=resposta.Content;

          Hash := TIdHashMessageDigest5.Create;
          HashLocal := Hash.HashStringAsHex( resposta.Content);

         // if HashLocal=HashServidor then
         // begin
            Arquivoxml.SaveToFile(aArq);
            Result:=resposta.StatusCode.ToString;
         // end;

        end;

      end;

     end;


  except
      on E: EAccessViolation do
      begin
              Result := '2979 Erro: '+e.Message;
      end;
  end;

end;

}

{
Function PublicarEmail(cnpj, destino, copias, texto, assunto, xml, pdf, nome_cliente, nome_empresa: String): Boolean;
var
  resposta: IResponse;

  URL_BASE: String;
  URL_PATH: String;
  PORT_SERV: String;
  AIpServer: String;

  ANEXO1:TStringStream;
  ANEXO2:TBytesStream;

begin
  result := False;

  URL_BASE := 'http://';
  URL_PATH := '/v1';
  PORT_SERV := '8095';

  AIpServer := '181.216.47.70';




  if xml<>'' then
  begin
    if fileexists(xml) then
    begin
       ANEXO1:=TStringStream.Create;
       ANEXO1.LoadFromFile(xml);

       resposta := TRequest.New.BaseURL(URL_BASE + AIpServer + ':' + PORT_SERV + URL_PATH).Resource('/emailanexo/'+extractfilename(xml))
                            .ClearParams
                            .Accept('application/xml')
                            .AddBody(ANEXO1)
                            .post;
    end;
  end;


  if pdf<>'' then
  begin
    if fileexists(pdf) then
    begin
      ANEXO2:=TBytesStream.Create;
      ANEXO2.LoadFromFile(pdf);

      resposta := TRequest.New.BaseURL(URL_BASE + AIpServer + ':' + PORT_SERV + URL_PATH).Resource('/emailanexo/'+extractfilename(pdf))
                            .ClearParams
                            .Accept('application/octet-stream')
                            .AddBody(ANEXO2)
                            .post;

    end;
  end;


  if (resposta.StatusCode = 200) then
    begin

    resposta := TRequest.New.BaseURL(URL_BASE + AIpServer + ':' + PORT_SERV + URL_PATH)
                  .Resource('/email/0')
                  .Accept('application/json')
                  .addbody(tJsonObject.Create.AddPair('cnpj', cnpj)
                  .AddPair('destino', destino)
                  .AddPair('copias', copias)
                  .AddPair('texto', texto)
                  .AddPair('assunto',assunto)
                  .AddPair('anexo1',extractfilename(xml))
                  .AddPair('anexo2',extractfilename(pdf))
                  .AddPair('nome_cliente', nome_cliente)
                  .AddPair('nome_empresa', nome_empresa))
                .Post;

    if (resposta.StatusCode = 200) then
    begin
      result := True;
    end
    else
      result := False;

  end;

end;

}


Function PublicarEmail(cnpj, destino, copias, texto, assunto, xml, pdf, nome_cliente, nome_empresa: String): Boolean;
var
  resposta: IResponse;
  aresposta_xml:Integer;
  aresposta_pdf:Integer;

  URL_BASE: String;
  URL_PATH: String;
  PORT_SERV: String;
  AIpServer: String;

  ANEXO1:TStringStream;
  ANEXO2:TBytesStream;

begin
  try

  result := False;

  URL_BASE := 'http://';
  URL_PATH := '/v1';
  PORT_SERV := '8095';

  AIpServer := '181.216.47.70';
//  AIpServer := '192.168.5.115';
  resposta:=nil;
  aresposta_xml:=0;
  aresposta_pdf:=0;


  if xml<>'' then
  begin
    if fileexists(xml) then
    begin
       if pos('.txt',xml)>0 then
       begin
         ANEXO1:=TStringStream.Create;
         ANEXO1.LoadFromFile(xml);
         resposta := TRequest.New.BaseURL(URL_BASE + AIpServer + ':' + PORT_SERV + URL_PATH).Resource('/emailanexo/'+extractfilename(xml))
                              .ClearParams
                              .Accept('application/xml')
                              .AddBody(ANEXO1)
                              .post;
         aresposta_xml:=resposta.StatusCode;
       end
       else
       begin
         ANEXO1:=TStringStream.Create;
         ANEXO1.LoadFromFile(xml);
         resposta := TRequest.New.BaseURL(URL_BASE + AIpServer + ':' + PORT_SERV + URL_PATH).Resource('/emailanexo/'+extractfilename(xml))
                              .ClearParams
                              .Accept('application/xml')
                              .AddBody(ANEXO1)
                              .post;
         aresposta_xml:=resposta.StatusCode;
       end;
    end;
  end;

  if pdf<>'' then
  begin
    if fileexists(pdf) then
    begin
      ANEXO2:=TBytesStream.Create;
      ANEXO2.LoadFromFile(pdf);

      resposta := TRequest.New.BaseURL(URL_BASE + AIpServer + ':' + PORT_SERV + URL_PATH).Resource('/emailanexo/'+extractfilename(pdf))
                            .ClearParams
                            .Accept('application/octet-stream')
                            .AddBody(ANEXO2)
                            .post;
      aresposta_pdf:=resposta.StatusCode;
    end;
  end;


  //  if (aresposta_xml = 200) or (aresposta_pdf = 200) then
  //  begin

    resposta := TRequest.New.BaseURL(URL_BASE + AIpServer + ':' + PORT_SERV + URL_PATH)
                  .Resource('/email/0')
                  .Accept('application/json')
                  .addbody(tJsonObject.Create.AddPair('cnpj', cnpj)
                  .AddPair('destino', destino)
                  .AddPair('copias', copias)
                  .AddPair('texto', texto)
                  .AddPair('assunto',assunto)
                  .AddPair('anexo1',extractfilename(xml))
                  .AddPair('anexo2',extractfilename(pdf))
                  .AddPair('nome_cliente', nome_cliente)
                  .AddPair('nome_empresa', nome_empresa))
                .Post;

    if (resposta.StatusCode = 200) then
    begin
      result := True;
    end
    else
    begin

       ShowMessage('3244 Erro: '+resposta.Content);
      result := False;
    end;

 // end;


  except
      on E: Exception do
      begin
        ShowMessage('3276 Erro: '+e.Message);
      end;

  end;
end;


function CarraIpServidor:string;
Var
  arquini: TIniFile;
  vlMonitor: String;
  vlTipoBanco: String;
Begin
  result:='';
  try
    arquini := TIniFile.Create(extractfilepath(Application.ExeName) + 'mercatoerp.ini');
    With arquini Do
    Begin
      Result := ReadString('posi', 'servidorarquivos', '');

      if Result='' then
        Result := ReadString('posi', 'servidor', '');
     End;
  finally
    arquini.free;
  end;
End;






end.
