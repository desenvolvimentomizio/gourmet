unit uInterfacemp2032;

interface


Function IniciaPorta(Porta: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function FechaPorta: Integer; Stdcall; Far; External 'MP2032.DLL';
Function BematechTX(BufTrans: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ComandoTX(BufTrans: Ansistring; TamBufTrans: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function CaracterGrafico(BufTrans: Ansistring; TamBufTrans: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function DocumentInserted: Integer; Stdcall; Far; External 'MP2032.DLL';
Function Le_Status: Integer; Stdcall; Far; External 'MP2032.DLL';
Function AutenticaDoc(Texto: Ansistring; Tempo: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function Le_Status_Gaveta: Integer; Stdcall; Far; External 'MP2032.DLL';
Function ConfiguraTamanhoExtrato(NumeroLinhas: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function HabilitaExtratoLongo(Flag: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function HabilitaEsperaImpressao(Flag: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function EsperaImpressao: Integer; Stdcall; Far; External 'MP2032.DLL';
Function ConfiguraModeloImpressora(ModeloImpressora: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function AcionaGuilhotina(Modo: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function FormataTX(BufTras: Ansistring; TpoLtra: Integer; Italic: Integer; Sublin: Integer; Expand: Integer; Enfat: Integer): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function HabilitaPresenterRetratil(IFlag: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ProgramaPresenterRetratil(ITempo: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function VerificaPapelPresenter: Integer; Stdcall; Far; External 'MP2032.DLL';

// Função para Configuração dos Códigos de Barras

Function ConfiguraCodigoBarras(Altura: Integer; Largura: Integer; PosicaoCaracteres: Integer; Fonte: Integer; Margem: Integer): Integer; Stdcall; Far;
  External 'MP2032.DLL';

// Funções para impressão dos códigos de barras

Function ImprimeCodigoBarrasUPCA(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasUPCE(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasEAN13(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasEAN8(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasCODE39(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasCODE93(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasCODE128(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasITF(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasCODABAR(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasISBN(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasMSI(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasPLESSEY(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasPDF417(NivelCorrecaoErros: Integer; Altura: Integer; Largura: Integer; Colunas: Integer; Codigo: Ansistring): Integer;
  Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoQRCODE(ErrorCorrectionLevel: Integer; ModuleSize: Integer; CodeType: Integer; QRCodeVersion: Integer; EncodingModes: Integer;
  CodeQr: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';

// Funções para impressão de BitMap

Function ImprimeBitmap(Name: Ansistring; Mode: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeBmpEspecial(Name: Ansistring; XScale: Integer; YScale: Integer; Angle: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function AjustaLarguraPapel(Width: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function SelectDithering(Mode: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function PrinterReset: Integer; Stdcall; Far; External 'MP2032.DLL';
Function LeituraStatusEstendido(A: Array Of Byte): Integer; Stdcall; Far; External 'MP2032.DLL';
Function IoControl(Flag: Integer; Mode: Boolean): Integer; Stdcall; Far; External 'MP2032.DLL';


implementation

end.
