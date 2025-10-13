unit ufprinci;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, frxClass, frxExportImage, DBAccess, Uni, frxDBSet, MemDS, frxDACComponents, frxUniDACComponents,
  UniProvider, MySQLUniProvider, DASQLMonitor, UniSQLMonitor, inifiles, Vcl.ComCtrls, Vcl.StdCtrls, ufuncoes;


// Declarando a MP2032.DLL e sua funções em Delphi

Function IniciaPorta(Porta: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function FechaPorta: Integer; Stdcall; Far; External 'MP2032.DLL';
Function BematechTX(BufTrans: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ComandoTX(BufTrans: Ansistring; TamBufTrans: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function CaracterGrafico(BufTrans: Ansistring; TamBufTrans: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function DocumentInserted: Integer; Stdcall; Far; External 'MP2032.DLL';
Function Le_Status: Integer; Stdcall; Far; External 'MP2032.DLL';
// Function AutenticaDoc(Texto: Ansistring; Tempo: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
// Function Le_Status_Gaveta: Integer; Stdcall; Far; External 'MP2032.DLL';
// Function ConfiguraTamanhoExtrato(NumeroLinhas: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
// Function HabilitaExtratoLongo(Flag: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function HabilitaEsperaImpressao(Flag: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function EsperaImpressao: Integer; Stdcall; Far; External 'MP2032.DLL';
Function ConfiguraModeloImpressora(ModeloImpressora: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function AcionaGuilhotina(Modo: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function FormataTX(BufTras: Ansistring; TpoLtra: Integer; Italic: Integer; Sublin: Integer; Expand: Integer; Enfat: Integer): Integer; Stdcall; Far;
  External 'MP2032.DLL';
// Function HabilitaPresenterRetratil(IFlag: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
// Function ProgramaPresenterRetratil(ITempo: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function VerificaPapelPresenter: Integer; Stdcall; Far; External 'MP2032.DLL';

function DefineNVBitmap(count: Integer; filenames: array of string): Integer; stdcall; far; external 'MP2032.DLL';
function Define1NVBitmap(filename: string): Integer; stdcall; far; external 'MP2032.DLL';
function DefineDLBitmap(filename: string): Integer; stdcall; far; external 'MP2032.DLL';
function PrintNVBitmap(image: Integer; mode: Integer): Integer; stdcall; far; external 'MP2032.DLL';
function PrintDLBitmap(mode: Integer): Integer; stdcall; far; external 'MP2032.DLL';


// Função para Configuração dos Códigos de Barras

Function ConfiguraCodigoBarras(Altura: Integer; Largura: Integer; PosicaoCaracteres: Integer; Fonte: Integer; Margem: Integer): Integer; Stdcall; Far;
  External 'MP2032.DLL';

// Funções para impressão dos códigos de barras

// Function ImprimeCodigoBarrasUPCA(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
// Function ImprimeCodigoBarrasUPCE(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
// Function ImprimeCodigoBarrasEAN13(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
// Function ImprimeCodigoBarrasEAN8(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
// Function ImprimeCodigoBarrasCODE39(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
// Function ImprimeCodigoBarrasCODE93(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
// Function ImprimeCodigoBarrasCODE128(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
// Function ImprimeCodigoBarrasITF(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
// Function ImprimeCodigoBarrasCODABAR(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
// Function ImprimeCodigoBarrasISBN(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
// Function ImprimeCodigoBarrasMSI(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
// Function ImprimeCodigoBarrasPLESSEY(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
// Function ImprimeCodigoBarrasPDF417(NivelCorrecaoErros: Integer; Altura: Integer; Largura: Integer; Colunas: Integer; Codigo: Ansistring): Integer;  Stdcall; Far; External 'MP2032.DLL';

Function ImprimeCodigoQRCODE(ErrorCorrectionLevel: Integer; ModuleSize: Integer; CodeType: Integer; QRCodeVersion: Integer; EncodingModes: Integer;
  CodeQr: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';

// Funções para impressão de BitMap

Function ImprimeBitmap(Name: Ansistring; mode: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeBmpEspecial(Name: Ansistring; XScale: Integer; YScale: Integer; Angle: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
// Function AjustaLarguraPapel(Width: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
// Function SelectDithering(mode: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
// Function PrinterReset: Integer; Stdcall; Far; External 'MP2032.DLL';
// Function LeituraStatusEstendido(A: Array Of Byte): Integer; Stdcall; Far; External 'MP2032.DLL';
// Function IoControl(Flag: Integer; mode: Boolean): Integer; Stdcall; Far; External 'MP2032.DLL';


type
  TfPrinciGereImpress = class(TForm)
    UniSQLMonitor: TUniSQLMonitor;
    MySQLUniProvider: TMySQLUniProvider;
    frxUniDACComponents: TfrxUniDACComponents;
    Conexao: TUniConnection;
    gri: TUniQuery;
    grigricodigo: TIntegerField;
    consulta: TUniQuery;
    ped: TUniQuery;
    qGri: TUniQuery;
    qGritcicodigo: TIntegerField;
    qGritciporta: TStringField;
    qGrimitidentificacao: TStringField;
    qGrigriminuretardo: TIntegerField;
    qGrigrisituacao: TIntegerField;
    qGrigrpidentificacao: TStringField;
    qGrigricodigo: TIntegerField;
    cfg: TUniQuery;
    cfgcfgcodigo: TIntegerField;
    cfgcfgmgoupedidelivery: TIntegerField;
    cfgcfgmgoupedideliveryaux: TIntegerField;
    immimp: TUniQuery;
    frxDBFila: TfrxDBDataset;
    lito: TUniQuery;
    litoitoitem: TIntegerField;
    litoprocodigo: TIntegerField;
    litopronome: TStringField;
    litoitoquantidade: TFloatField;
    litoitochave: TIntegerField;
    litounisimbolo: TStringField;
    litounicodigo: TIntegerField;
    litoorcchave: TIntegerField;
    litotdecodigo: TIntegerField;
    litoproreferencia: TStringField;
    litoitoproservico: TStringField;
    litoitoinfadprod: TStringField;
    litotpocodigo: TIntegerField;
    litoitoprocomple: TStringField;
    litopropededescrserv: TIntegerField;
    litopropedetecnicoserv: TIntegerField;
    litopuncodigo: TIntegerField;
    litogrpidentificacao: TStringField;
    relatorio: TfrxReport;
    DFila: TUniDataSource;
    frxBMPExport: TfrxBMPExport;
    fila: TUniQuery;
    filaimmmodoimpressao: TIntegerField;
    filaorcchave: TIntegerField;
    filagricodigo: TIntegerField;
    filaimmhoraimprimir: TDateTimeField;
    filamitidentificacao: TStringField;
    filaimmnumepedido: TIntegerField;
    isi: TUniQuery;
    isiisichave: TIntegerField;
    isisbichave: TIntegerField;
    isitsicodigo: TIntegerField;
    isiprocodigo: TIntegerField;
    isiisitipo: TIntegerField;
    isipronome: TStringField;
    isitsiidentificacao: TStringField;
    sbi: TUniQuery;
    sbisbichave: TIntegerField;
    sbiitochave: TIntegerField;
    sbisbrcodigo: TIntegerField;
    sbisbiobs: TStringField;
    dorc: TUniDataSource;
    orc: TUniQuery;
    frxDados: TfrxDBDataset;
    inicializar: TTimer;
    mensagens: TStatusBar;
    verificarImps: TTimer;
    plImpressoras: TPanel;
    plFalhaBanco: TPanel;
    pedidos: TMemo;
    plCozinha: TPanel;
    Button1: TButton;
    pltci04: TPanel;
    pltci01: TPanel;
    pltci02: TPanel;
    pltci03: TPanel;
    erros: TMemo;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure inicializarTimer(Sender: TObject);
    procedure verificarImpsTimer(Sender: TObject);
  private
    procedure conectabanco;
    procedure VerificaEstadoimpressora;
    function AtualizaIMpressora(vporta: string): string;
    function ConsultaImpressora(Porta: string): String;
    function EstadoMP2032(vporta: string): Integer;
    function ImprimePedidosImpressora(vGriCodigo, vporta: string): Boolean;
    procedure AjustaSituacaoCozinha;
    procedure AjustaPaines;
    procedure ajustaPaineisImp(vquery: TUniQuery);
    procedure AjustaEstadoIMpressora;
    { Private declarations }
  public
    { Public declarations }
    vpCozinhaAberta:boolean;
    vpCznChave:string;
    vpPastaDia:string;

  end;

var
  fPrinciGereImpress: TfPrinciGereImpress;

implementation

{$R *.dfm}

procedure TfPrinciGereImpress.FormShow(Sender: TObject);
begin
  inicializar.Enabled := True;
end;

procedure TfPrinciGereImpress.inicializarTimer(Sender: TObject);
var
  i: Integer;
begin
  inicializar.Enabled := False;

  for i := 0 to self.ComponentCount - 1 do
  begin
    if self.Components[i] is TUniQuery then
      (self.Components[i] as TUniQuery).Connection := Conexao;

  end;
  conectabanco;
  AjustaPaines;
//  verificar.Enabled := True;
{  tci01.Enabled := True;
  tci02.Enabled := True;
  tci03.Enabled := True;
  tci04.Enabled := True;}



end;


procedure TfPrinciGereImpress.verificarImpsTimer(Sender: TObject);
begin
   verificarImps.Enabled := False;
    VerificaEstadoimpressora;
  // AjustaEstadoIMpressora;

    verificarImps.Enabled := True;
end;

procedure TfPrinciGereImpress.AjustaEstadoIMpressora;
var
  viSituacao: Integer;
  viIdentificacao: string;
  vigriminuretardo: string;
  viTciPorta: string;
  vGriCodigo: string;
  vGrpIdentificacao: string;

  vlRetorno: Integer;
  vlRetornoStr: String;
begin

  qGri.First;
  while not qGri.Eof do
  begin
   viSituacao := qGri.FieldByName('grisituacao').AsInteger;
    viIdentificacao := qGri.FieldByName('mitidentificacao').AsString;
    vigriminuretardo := qGri.FieldByName('griminuretardo').AsString;
    viTciPorta := qGri.FieldByName('tciporta').AsString;
    vGriCodigo := qGri.FieldByName('gricodigo').AsString;
    vGrpIdentificacao := qGri.FieldByName('grpidentificacao').AsString;


    if self.FindComponent('plimp' + vGriCodigo) <> nil then
    begin
      vlRetorno := 0;

      vlRetornoStr := AtualizaIMpressora(viTciPorta);
      if vlRetornoStr <> '' then
        vlRetorno := StrToInt(vlRetornoStr);

     { (self.FindComponent('plimp' + vGriCodigo) as TPanel).Caption := viIdentificacao + ' ' + vGrpIdentificacao + ' (Porta: ' + viTciPorta + ')';

      consulta.close;
      consulta.Connection := Conexao;
      consulta.SQL.Text := 'update gri set grisituacao=' + vlRetornoStr + ' where ' + 'gricodigo=' + vGriCodigo;
      consulta.ExecSQL;

      case vlRetorno of
        0:
          begin
            (self.FindComponent('plimp' + vGriCodigo) as TPanel).Color := clred;
            (self.FindComponent('plimp' + vGriCodigo) as TPanel).Caption := viIdentificacao + ' ' + viTciPorta + ' ( FALHA COMUNICAÇÃO' + ' )';
            plFalhaBanco.Color := clred;

          end;
        1:
          begin
            (self.FindComponent('plimp' + vGriCodigo) as TPanel).Color := clNavy;
            (self.FindComponent('plimp' + vGriCodigo) as TPanel).Caption := viIdentificacao + ' ' + viTciPorta + ' ( FALHA COMUNICAÇÃO' + ' )';

          end;

        5:
          begin
            (self.FindComponent('plimp' + vGriCodigo) as TPanel).Color := clYellow;
            (self.FindComponent('plimp' + vGriCodigo) as TPanel).Caption := viIdentificacao + ' ' + viTciPorta + ' ( POUCO PAPEL' + ' )';

          end;
        9:
          begin
            (self.FindComponent('plimp' + vGriCodigo) as TPanel).Color := clGray;
            (self.FindComponent('plimp' + vGriCodigo) as TPanel).Caption := viIdentificacao + ' ' + viTciPorta + ' ( TAMPA ABERTA' + ' )';

          end;
        24:
          begin
            // impressora ativa e on-line
            (self.FindComponent('plimp' + vGriCodigo) as TPanel).Color := clgreen;
            (self.FindComponent('plimp' + vGriCodigo) as TPanel).Caption := viIdentificacao + ' ' + viTciPorta + ' (Porta: ' + viTciPorta + ')';
            // verifica se há pedidos a imprimir
            ImprimePedidosImpressora(vGriCodigo, viTciPorta);

          end;
        32:
          begin
            (self.FindComponent('plimp' + vGriCodigo) as TPanel).Color := clMaroon;
            (self.FindComponent('plimp' + vGriCodigo) as TPanel).Caption := viIdentificacao + ' ' + viTciPorta + ' ( SEM PAPEL' + ' )';
          end;

      end;}

      Application.ProcessMessages;
    end;




    qgri.Next;
  end;
end;


procedure TfPrinciGereImpress.VerificaEstadoIMpressora;
var
  viSituacao: Integer;
  viIdentificacao: string;
  vigriminuretardo: string;
  viTciPorta: string;
  vGriCodigo: string;
  vGrpIdentificacao: string;

  vlRetorno: Integer;
  vlRetornoStr: String;
begin

  qGri.First;
  while not qGri.Eof do
  begin

    viSituacao := qGri.FieldByName('grisituacao').AsInteger;
    viIdentificacao := qGri.FieldByName('mitidentificacao').AsString;
    vigriminuretardo := qGri.FieldByName('griminuretardo').AsString;
    viTciPorta := qGri.FieldByName('tciporta').AsString;
    vGriCodigo := qGri.FieldByName('gricodigo').AsString;
    vGrpIdentificacao := qGri.FieldByName('grpidentificacao').AsString;

    if self.FindComponent('plimp' + vGriCodigo) <> nil then
    begin
      vlRetorno := 0;

      vlRetornoStr := AtualizaIMpressora(viTciPorta);
      if vlRetornoStr <> '' then
        vlRetorno := StrToInt(vlRetornoStr);

      (self.FindComponent('plimp' + vGriCodigo) as TPanel).Caption := viIdentificacao + ' ' + vGrpIdentificacao + ' (Porta: ' + viTciPorta + ')';

      consulta.close;
      consulta.Connection := Conexao;
      consulta.SQL.Text := 'update gri set grisituacao=' + vlRetornoStr + ' where ' + 'gricodigo=' + vGriCodigo;
      consulta.ExecSQL;

      case vlRetorno of
        0:
          begin
            (self.FindComponent('plimp' + vGriCodigo) as TPanel).Color := clred;
            (self.FindComponent('plimp' + vGriCodigo) as TPanel).Caption := viIdentificacao + ' ' + viTciPorta + ' ( FALHA COMUNICAÇÃO' + ' )';
            plFalhaBanco.Color := clred;

          end;
        1:
          begin
            (self.FindComponent('plimp' + vGriCodigo) as TPanel).Color := clNavy;
            (self.FindComponent('plimp' + vGriCodigo) as TPanel).Caption := viIdentificacao + ' ' + viTciPorta + ' ( FALHA COMUNICAÇÃO' + ' )';

          end;

        5:
          begin
            (self.FindComponent('plimp' + vGriCodigo) as TPanel).Color := clYellow;
            (self.FindComponent('plimp' + vGriCodigo) as TPanel).Caption := viIdentificacao + ' ' + viTciPorta + ' ( POUCO PAPEL' + ' )';

          end;
        9:
          begin
            (self.FindComponent('plimp' + vGriCodigo) as TPanel).Color := clGray;
            (self.FindComponent('plimp' + vGriCodigo) as TPanel).Caption := viIdentificacao + ' ' + viTciPorta + ' ( TAMPA ABERTA' + ' )';

          end;
        24:
          begin
            // impressora ativa e on-line
            (self.FindComponent('plimp' + vGriCodigo) as TPanel).Color := clgreen;
            (self.FindComponent('plimp' + vGriCodigo) as TPanel).Caption := viIdentificacao + ' ' + viTciPorta + ' (Porta: ' + viTciPorta + ')';
            // verifica se há pedidos a imprimir
            ImprimePedidosImpressora(vGriCodigo, viTciPorta);

          end;
        32:
          begin
            (self.FindComponent('plimp' + vGriCodigo) as TPanel).Color := clMaroon;
            (self.FindComponent('plimp' + vGriCodigo) as TPanel).Caption := viIdentificacao + ' ' + viTciPorta + ' ( SEM PAPEL' + ' )';
          end;

      end;

      Application.ProcessMessages;
    end;

    qGri.Next;

  end;

end;
function TfPrinciGereImpress.ImprimePedidosImpressora(vGriCodigo: string; vporta: string): Boolean;
var
  i: Integer;

  vlImpDestino: string;
  vlNomeImpre: string;
  vlNomeArq: string;

  vNome1: string;
  vNome2: string;
  vNome3: string;
  VNome: string;

  vlRetorno: Integer;

  BlobField: TBlobField;
  vlGerado: Boolean;

  vlImpresso: Boolean;

  vlImprimeAux: Boolean;

  vlAgora: string;
  vlArqBmp: string;
  vlGricodigo: string;
begin

  result := False;
  try
    cfg.close;
    cfg.Open;

    if cfgcfgmgoupedidelivery.AsInteger = 1 then
    begin

      AjustaSituacaoCozinha;

      { se a cozinha esta aberta pode imprimir }

      if not vpCozinhaAberta then
        exit;

      { verifica fila de pedidos a imprimir }

      fila.close;
      fila.Params[0].AsString := vGriCodigo;
      fila.Params[1].AsString := vpCznChave;
      fila.Open;

      fila.First;
      while not fila.Eof do
      begin

        vlAgora := agora(Application, Conexao);

        if strtodatetime(vlAgora) >= filaimmhoraimprimir.AsFloat then
        begin

          { identifica o orçamento a ser impresso }
          if filaorcchave.AsString = '' then
            exit;

          orc.close;
          orc.Params[0].AsInteger := filaorcchave.AsInteger;
          orc.Open;

          if orc.FieldByName('orcmesa').AsInteger = 0 then
          begin
            consulta.close;
            consulta.SQL.Text := 'select relarquivo from gri, rel where rel.relcodigo=gri.relcompleto and gri.gricodigo=' + vGriCodigo;
            consulta.Open;
          end
          else
          begin
            consulta.close;
            consulta.SQL.Text := 'select relarquivo from gri, rel where  rel.relcodigo=gri.relgrupo and gri.gricodigo=' + vGriCodigo;
            consulta.Open;

            vlImprimeAux := False;
            if (cfgcfgmgoupedideliveryaux.AsInteger = 1) or (orc.FieldByName('foacodigo').AsInteger = 2) then
            begin
              vlImprimeAux := True;
            end;

          end;

          if consulta.Fields[0].AsString <> '' then
          begin

            ped.close;
            ped.SQL.Text :=
              'SELECT immnumepedido, gricodigo from imm, ito, pro, gri,grp WHERE ito.procodigo=pro.procodigo and grp.grpcodigo=pro.grpcodigo and gri.grpcodigo=grp.grpcodigo and imm.immhoraimpresso is null and imm.itochave=ito.itochave AND orcchave= '
              + orc.FieldByName('orcchave').AsString + ' limit 1';
            ped.Open;

            vlGricodigo := ped.FieldByName('gricodigo').AsString;

            if fileexists(vpPastaDia + 'ped' + formatfloat('0000', ped.FieldByName('immnumepedido').AsInteger) + '.bmp') then
              exit;

            { gerar o arquido do relatorio a ser impresso }
            pedidos.Lines.Add('Orc.:' + orc.FieldByName('orcchave').AsString);
            vlImpDestino := filamitidentificacao.AsString;

            vlNomeArq := ExtractFilePath(Application.ExeName) + 'Report\Pedido' + vlImpDestino + '.fr3';

            if fileexists(vlNomeArq) then
              deletefile(vlNomeArq);

            BlobField := consulta.Fields[0] as TBlobField;
            BlobField.SaveToFile(vlNomeArq);

            if not fileexists(vlNomeArq) then
            begin
              pedidos.Lines.Add('Arquivo nao localizado: ' + vlNomeArq);
              exit;
            end;
            relatorio.LoadFromFile(vlNomeArq);

            { atribui o valor para variavel de grupo do relatório }
            relatorio.Variables['gricodigo'] := QuotedStr(vlGricodigo);
            relatorio.Variables['immnumepedido'] := QuotedStr(ped.FieldByName('immnumepedido').AsString);

            { defini configuração do fastreport para exibição }
            relatorio.PrepareReport(True);
            relatorio.PrintOptions.ShowDialog := False;
            relatorio.ShowProgress := False;

            try

              { busca numero do pedido para geração da exportacao da imagem do pedido }
              ped.close;
              ped.SQL.Text := 'SELECT immnumepedido from imm, ito WHERE imm.immhoraimpresso is null and imm.itochave=ito.itochave AND orcchave= ' +
                orc.FieldByName('orcchave').AsString + ' limit 1';
              ped.Open;

              vlGerado := False;
              { exporta a imagem do pedido }
              frxBMPExport.DefaultPath := vpPastaDia;
              frxBMPExport.filename := 'ped' + formatfloat('0000', ped.FieldByName('immnumepedido').AsInteger) + '.bmp';
              frxBMPExport.SeparateFiles := False;
              vlGerado := relatorio.Export(frxBMPExport);

              vlGerado := fileexists(frxBMPExport.filename);

              { imprime a imagem do pedido na impressora }
              if vlGerado then
              begin
                try
                  vlRetorno := ConfiguraModeloImpressora(7);
                  vlRetorno := IniciaPorta(vporta);

                  if vlRetorno = 1 then
                  begin
                    vlArqBmp := ExtractFilePath(frxBMPExport.filename) + 'ped' + formatfloat('0000', ped.FieldByName('immnumepedido').AsInteger) + '.bmp';

                    vlRetorno := 0;
                    if fileexists(vlArqBmp) then
                      vlRetorno := ImprimeBmpEspecial(pchar(vlArqBmp), 70, 70, 0);

                    if vlRetorno = 1 then
                    begin
                      vlRetorno := AcionaGuilhotina(0);
                      vlImpresso := True;
                    end
                    else
                      vlImpresso := False;

                  end;

                finally
                  FechaPorta;
                end;

              end;

            except
              on E: Exception do
              begin
                pedidos.Lines.Add('Exception class name = ' + E.ClassName);
                pedidos.Lines.Add('Exception message = ' + E.Message);

                vlImpresso := False;
              end;

            end;

            { ajustado a data e hora da impressao }
            if vlImpresso then
            begin

              immimp.close;
              immimp.Params[0].AsString := filaorcchave.AsString;
              immimp.Params[1].AsString := ped.FieldByName('immnumepedido').AsString;
              immimp.Open;

              immimp.First;
              while not immimp.Eof do
              begin
                consulta.close;
                consulta.SQL.Text := 'select immchave, immhoraimpresso,immimpresso from imm where immchave=' + immimp.FieldByName('immchave').AsString +
                  ' AND cznchave=' + vpCznChave;
                consulta.Open;
                consulta.Edit;
                consulta.Fields[1].AsString := agora(Application, Conexao);
                consulta.Fields[2].AsString := '1';

                consulta.Post;
                immimp.Next;
              end;
              result := vlImpresso;

            end;

          end
          else
          begin
            pedidos.Lines.Add('arquivo do grupo: ' + vGriCodigo + ' não configurado');
            vlImpresso := False;
          end;

          { ajusta a situação de impresso e sua data e hora para os itens do imm }

          if vlImpresso then
          begin

            immimp.close;
            immimp.Params[0].AsString := filaorcchave.AsString;
            immimp.Params[1].AsString := ped.FieldByName('immnumepedido').AsString;
            immimp.Open;

            immimp.First;
            while not immimp.Eof do
            begin
              consulta.close;
              consulta.SQL.Text := 'select immchave, immhoraimpresso,immimpresso from imm where immchave=' + immimp.FieldByName('immchave').AsString +
                ' AND cznchave=' + vpCznChave;
              consulta.Open;

              consulta.Edit;
              consulta.Fields[1].AsString := agora(Application, Conexao);
              consulta.Fields[2].AsString := '1';
              consulta.Post;
              immimp.Next;
            end;
            result := vlImpresso;
          end;

        end;
        fila.Next;
      end;

    end;
  finally
  end;
end;

procedure TfPrinciGereImpress.AjustaSituacaoCozinha;
begin
  consulta.close;
  consulta.SQL.Text := 'select cznchave from czn where cznfechamento IS null order by cznchave limit 1';
  consulta.Open;
  if consulta.IsEmpty then
  begin
    plCozinha.Caption := 'Atenção: A Cozinha não esta aberta, solicite a abertura da Cozinha!';
    plCozinha.Font.Color := clYellow;
    plCozinha.Color := clred;
    vpCozinhaAberta := False;
    Application.ProcessMessages;
  end
  else
  begin

    { cria pasta para salvar as imagens dos pedidos do dia }
    vpPastaDia := ExtractFilePath(Application.ExeName) + 'pedidos';
    vpPastaDia := vpPastaDia + '\' + formatfloat('000000', consulta.Fields[0].AsInteger);
    ForceDirectories(vpPastaDia);

    plCozinha.Caption := 'Cozinha aberta. Bom Trabalho!';
    plCozinha.Font.Color := clWhite;
    plCozinha.Color := clgreen;
    vpCozinhaAberta := True;
    Application.ProcessMessages;
    vpCznChave := consulta.Fields[0].AsString;
  end;
end;


function TfPrinciGereImpress.AtualizaIMpressora(vporta: string): string;
begin
  result := ConsultaImpressora(vporta);
end;

Function TfPrinciGereImpress.ConsultaImpressora(Porta: string): String;
Var
  Vch: String;
  i: Integer;
  S_linha: Ansistring;
  S_comando: String;
  S_texto: Ansistring;
  I_tipo_letra: Integer;
  I_italico: Integer;
  I_sublinhado: Integer;
  I_expandido: Integer;
  I_enfatizado: Integer;
  i_retorno: Integer;

  ErrorCorrectionLevel: Integer;
  ModuleSize: Integer;
  CodeType: Integer;
  QRCodeVersion: Integer;
  EncodingModes: Integer;
  CodeQr: String;
  IRetorno: Integer;
  sRetorno: String;

Begin
  Try

    sRetorno := '1';

    i_retorno := EstadoMP2032(Porta);

    erros.Lines.Add(IntToStr(i_retorno));

    If i_retorno <> 1 Then
    Begin
      // I_retorno := IniciaPorta(PAnsichar(Porta));
      // *********** IMPRESSORAS MP 4000 TH CONEXÃO SERIAL **************
      if i_retorno = 24 then
        erros.Lines.Add('24 - IMPRESSORA ON LINE ' + Porta);
      if i_retorno = 0 then
        erros.Lines.Add('0 - IMP. OFF LINE/SEM COMUNICAÇÃO ' + Porta);
      if i_retorno = 32 then
        erros.Lines.Add('32 - IMP. SEM PAPEL ' + Porta);
      if i_retorno = 5 then
        erros.Lines.Add('5 - ON LINE - POUCO PAPEL ' + Porta);

      Application.ProcessMessages;

    End;

    If i_retorno = 1 Then
    Begin

      sleep(200);

    End;
    // VALIDAÇÃO DE EXECUÇÃO DO COMANDO

    sRetorno := IntToStr(i_retorno);

    If i_retorno = 0 Then
      exit;

  Finally
    // FechaPorta();
    result := sRetorno;
  End;
End;

function TfPrinciGereImpress.EstadoMP2032(vporta: string): Integer;
Var
  vu: string;
  vlRetorno, i_retorno: Integer;
  s_cmdtx: string;
  i, U, E: Integer;
Begin

  vlRetorno := ConfiguraModeloImpressora(7);
  vlRetorno := IniciaPorta(vporta);

  if vlRetorno = 0 then
  begin
    result := 0;
    exit;
  end;

  vlRetorno := Le_Status();
  FechaPorta;
  result := vlRetorno;

End;


Procedure TfPrinciGereImpress.conectabanco;
Var
  arquini: TIniFile;
  vnomebanco: String;
  vportabanco: String;
  vservidor: String;
  vusuario: String;
  vsenha: String;
Begin

  arquini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'gourmeterp.ini');
  With arquini Do
  Begin
    vnomebanco := ReadString('posi', 'nomebanco', 'mizio');
    vservidor := ReadString('posi', 'servidor', '127.0.0.1');
    vusuario := ReadString('posi', 'usuario', 'root');
    vsenha := ReadString('posi', 'senha', 'xda973');
    vportabanco := ReadString('posi', 'portabanco', '3306');
  End;
  arquini.Free;

  Conexao.Connected := False;
  Conexao.Database := vnomebanco;
  Conexao.Username := vusuario;
  Conexao.Password := vsenha;
  Conexao.Port := StrToInt(vportabanco);
  Conexao.Server := vservidor;
  Conexao.Connected := True;

  mensagens.Panels[0].Text := 'IP: ' + vservidor;
  mensagens.Panels[1].Text := 'BD: ' + vnomebanco;

  if not Conexao.Connected then
  begin
    showmessage('Falha de conexão com o Banco de Dados. Verifique as configurações do gourmeterp.ini');
    Application.Terminate;
  end
  else
    AjustaPaines;

End;

procedure TfPrinciGereImpress.AjustaPaines;
begin
  { se exite destroi para recriar }
  qGri.close;
  qGri.SQL.Text := 'SELECT tci.tcicodigo, tci.tciporta, mit.mitidentificacao,  gri.griminuretardo,  gri.grisituacao, gri.gricodigo, grp.grpidentificacao ';
  qGri.SQL.Add('FROM tci ');
  qGri.SQL.Add('INNER JOIN mit ON tci.mitcodigo = mit.mitcodigo ');
  qGri.SQL.Add('INNER JOIN gri ON gri.tcicodigo = tci.tcicodigo ');
  qGri.SQL.Add('INNER JOIN grp ON gri.grpcodigo = grp.grpcodigo ');
  qGri.Open;
  ajustaPaineisImp(qGri);
end;

procedure TfPrinciGereImpress.ajustaPaineisImp(vquery: TUniQuery);
var
  plImp: TPanel;
  A, E: Integer;
begin
  vquery.First;
  A := 0;
  E := 1;

  while not vquery.Eof do
  begin
    if self.FindComponent('plimp' + vquery.FieldByName('gricodigo').AsString) = nil then
    begin

      plImp := TPanel.Create(self);
      plImp.Parent := plImpressoras;
      plImp.Name := 'plimp' + vquery.FieldByName('gricodigo').AsString;
      plImp.Caption := '';
      plImp.ParentBackground := False;
      plImp.ParentFont := False;
      plImp.Align := alNone;
      plImp.Height := 21;
      plImp.Width := 310;
      plImp.top := (23 * A) + 7;
      plImp.BorderWidth := 3;
      plImp.Alignment := taLeftJustify;
      plImp.Left := (315 * E) - plImp.Width;
      plImp.Font.Color := clWhite;
      plImp.Font.Size := 9;
      plImp.Tag := vquery.FieldByName('gricodigo').AsInteger;

    end;

    vquery.Next;
    A := A + 1;
    if A > 8 then
    begin
      E := E + 1;
      A := 0;
    end;
  end;
end;



end.
