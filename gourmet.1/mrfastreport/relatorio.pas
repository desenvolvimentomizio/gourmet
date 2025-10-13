unit relatorio;

interface

uses
  Winapi.Windows, Vcl.Forms, frxChBox, frxGradient, frxChart, frxRich, Data.DB,
  MemDS, DBAccess, Uni, frxDMPExport, frxExportCSV, frxExportPDF,
  frxExportHTMLDiv, frxExportXLSX, frxExportXML, frxClass, frxExportXLS,
  frxDBSet, frxDCtrl, frxCross,
  frxBarcode, frxDesgn, Vcl.StdCtrls, Vcl.Buttons, Vcl.Controls, Vcl.ExtCtrls,
  System.Classes, Vcl.FileCtrl, Vcl.Dialogs, System.SysUtils, uFuncoes, DateUtils,
  frxExportText, frxDACComponents, frxUniDACComponents, printers, WinSpool,
  frxExportHelpers, frxExportBaseDialog;

type
  Tfrfr = class(TForm)
    FileListBox1: TFileListBox;

    Edit1: TEdit;
    frxDesigner: TfrxDesigner;
    frxBarCodeObject: TfrxBarCodeObject;
    frxCrossObject: TfrxCrossObject;
    frxDialogControls: TfrxDialogControls;
    DSdados: tunidatasource;
    frxDados: TfrxDBDataset;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bfechar: TBitBtn;
    bnovo: TBitBtn;
    bedita: TBitBtn;

    frxReport: TfrxReport;
    frxUniDACComponents: TfrxUniDACComponents;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxHTML5DivExport1: TfrxHTML5DivExport;
    frxPDFExport1: TfrxPDFExport;
    frxCSVExport1: TfrxCSVExport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    consulta: TUniQuery;
    frxRichObject1: TfrxRichObject;
    frxChartObject1: TfrxChartObject;
    frxGradientObject1: TfrxGradientObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    cfg: TUniQuery;
    cfgcfgcodigo: TIntegerField;
    cfgcfgprevisualizarimpressao: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure beditaClick(Sender: TObject);
    procedure FileListBox1Click(Sender: TObject);
    procedure bnovoClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function frxReportUserFunction(const MethodName: string; var Params: Variant): Variant;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Fzcone: tuniconnection;
    procedure AtualizaImp;
    procedure AbrirGavetaMP420TH;
  protected
  public
    { Public declarations }
    vusrcodigo: string;
    vtxtfiltro: string;
    ImprDefault: string;
    print: textfile;
    vpNomeImpressora: String;
  published
    property zcone: tuniconnection read Fzcone write Fzcone;

  end;

var
  frfr: Tfrfr;

implementation

uses
  Vcl.Clipbrd;

function formu(AOwner: TComponent; conexao: tuniconnection; vtabela: tunidatasource; vusuario: string; vfiltro: string; vmodulo: string): string;
begin
  Try
    frfr := Tfrfr.Create(AOwner);
    frfr.vtxtfiltro := vfiltro;
    frfr.zcone := conexao;
    frfr.frxUniDACComponents.DefaultDatabase := conexao;
    frfr.frxDados.DataSource := vtabela;
    frfr.vusrcodigo := vusuario;
    frfr.ShowModal;
    Result := '';
  Finally
    frfr.DSdados.DataSet := nil;
    FreeAndNil(frfr.frxDesigner);
    FreeAndNil(frfr.frxBarCodeObject);
    FreeAndNil(frfr.frxCrossObject);
    FreeAndNil(frfr.frxDialogControls);
    FreeAndNil(frfr.frxDados);
    FreeAndNil(frfr.frxUniDACComponents);
    FreeAndNil(frfr.frxXLSExport1);
    FreeAndNil(frfr.frxXMLExport1);
    FreeAndNil(frfr.frxXLSXExport1);
    FreeAndNil(frfr.frxHTML5DivExport1);
    FreeAndNil(frfr.frxPDFExport1);
    FreeAndNil(frfr.frxCSVExport1);
    FreeAndNil(frfr.frxDotMatrixExport1);
    FreeAndNil(frfr.frxReport);
    FreeAndNil(frfr);
  End;
end;

function mrfrImpressao(AOwner: TComponent; conexao: tuniconnection; vtabela: tunidatasource; DirRelatorio: String; Impressora: String = ''; vusucodigo: string = ''): string;
var
  vlClbIdentificacao: string;

  vlData: TDateTime;
  vlAno, vlMes, vlDia: Word;
  vlHora, vlMin, vlSec, vlMili: Word;

  vlArqExport: string;
  vlVias: Integer;
begin
  Try
    frfr := Tfrfr.Create(AOwner);
    frfr.zcone := conexao;
    frfr.frxUniDACComponents.DefaultDatabase := conexao;
    frfr.frxDados.DataSource := vtabela;
    frfr.vpNomeImpressora := Impressora;

    try
      frfr.consulta.Connection := conexao;
      frfr.consulta.SQL.Text := 'select cfgviascomprovante from cfgmsai';
      frfr.consulta.Open;
      vlVias := frfr.consulta.FieldByName('cfgviascomprovante').AsInteger;
    except
      vlVias := 1;
    end;

    if FileExists(DirRelatorio) then
    begin
      if Length(Impressora) > 0 then
        frfr.frxReport.PrintOptions.Printer := Impressora;

      frfr.frxReport.LoadFromFile(DirRelatorio);
      frfr.frxReport.PrintOptions.Copies := vlVias;

      { implementacao da identificacao do emissor do relatorio }
      if vusucodigo <> '' then
      begin
        frfr.frxReport.Variables['CLBCODIGO'] := QuotedStr(vusucodigo);
      end;

      if lowercase(Impressora) = 'tsclient' then
      begin

        vlData := strtodatetime(agora(application, conexao));
        DecodeDateTime(vlData, vlAno, vlMes, vlDia, vlHora, vlMin, vlSec, vlMili);

        vlArqExport := 'imp' + formatfloat('0000', vlAno) + formatfloat('00', vlMes) + formatfloat('00', vlDia) + formatfloat('00', vlHora) + formatfloat('00', vlMin) +
          formatfloat('00', vlSec) + formatfloat('0000', vlMili) + '.prn';

        frfr.frxDotMatrixExport1.SaveToFile := true;
        frfr.frxDotMatrixExport1.FileName := '\\' + Impressora + '\c\mizio\impressoes\' + vlArqExport;
        frfr.frxDotMatrixExport1.ShowProgress := true;
        frfr.frxDotMatrixExport1.ShowDialog := false;
        frfr.frxReport.PrepareReport;
        frfr.frxReport.Export(frfr.frxDotMatrixExport1);
        // frfr.frxReport.ShowReport;
      end
      else
        frfr.frxReport.ShowReport;

    end;

    Result := '';
  Finally
    frfr.DSdados.DataSet := nil;
    FreeAndNil(frfr.frxDesigner);
    FreeAndNil(frfr.frxBarCodeObject);
    FreeAndNil(frfr.frxCrossObject);
    FreeAndNil(frfr.frxDialogControls);
    FreeAndNil(frfr.frxDados);
    FreeAndNil(frfr.frxUniDACComponents);
    FreeAndNil(frfr.frxXLSExport1);
    FreeAndNil(frfr.frxXMLExport1);
    FreeAndNil(frfr.frxXLSXExport1);
    FreeAndNil(frfr.frxHTML5DivExport1);
    FreeAndNil(frfr.frxPDFExport1);
    FreeAndNil(frfr.frxCSVExport1);
    FreeAndNil(frfr.frxDotMatrixExport1);
    FreeAndNil(frfr.frxReport);
    FreeAndNil(frfr);
  End;
end;

function mrfrGerador(AOwner: TComponent; conexao: tuniconnection; vtabela: tunidatasource; DirRelatorio: String; Impressora: String = ''; vusucodigo: string = ''): string;
var
  vlClbIdentificacao: string;
begin
  try
    frfr := Tfrfr.Create(AOwner);
    frfr.zcone := conexao;
    frfr.frxUniDACComponents.DefaultDatabase := conexao;
    frfr.frxDados.DataSource := vtabela;
    frfr.vpNomeImpressora := Impressora;

    if FileExists(DirRelatorio) then
      frfr.frxReport.LoadFromFile(DirRelatorio);

    { implementacao da identificacao do emissor do relatorio }
    if vusucodigo <> '' then
    begin
      frfr.frxReport.Variables['CLBCODIGO'] := QuotedStr(vusucodigo);
    end;

    frfr.frxReport.DesignReport;

    Result := '';
  finally
    frfr.DSdados.DataSet := nil;
    FreeAndNil(frfr.frxDesigner);
    FreeAndNil(frfr.frxBarCodeObject);
    FreeAndNil(frfr.frxCrossObject);
    FreeAndNil(frfr.frxDialogControls);
    FreeAndNil(frfr.frxDados);
    FreeAndNil(frfr.frxUniDACComponents);
    FreeAndNil(frfr.frxXLSExport1);
    FreeAndNil(frfr.frxXMLExport1);
    FreeAndNil(frfr.frxXLSXExport1);
    FreeAndNil(frfr.frxHTML5DivExport1);
    FreeAndNil(frfr.frxPDFExport1);
    FreeAndNil(frfr.frxCSVExport1);
    FreeAndNil(frfr.frxDotMatrixExport1);
    FreeAndNil(frfr.frxReport);
    FreeAndNil(frfr);
  end;
end;

function mrfrImpressaoDireta(AOwner: TComponent; conexao: tuniconnection; vtabela: tunidatasource; DirRelatorio: String; Impressora: String = ''; vusucodigo: string = ''): string;
var
  vlClbIdentificacao: string;
  vlData: TDateTime;
  vlAno, vlMes, vlDia: Word;
  vlHora, vlMin, vlSec, vlMili: Word;
  vlVias: Integer;
  vlArqExport: string;
  Handle: THandle;
  vlsql:string;
begin
  Try
    frfr := Tfrfr.Create(AOwner);
    frfr.zcone := conexao;
    frfr.frxUniDACComponents.DefaultDatabase := conexao;

    frfr.frxDados.DataSource := vtabela;

    if frfr.frxDados.DataSource.DataSet is tuniquery then
    begin
    (frfr.frxDados.DataSource.DataSet as tuniquery).Open;
    end
    else
    begin
      frfr.frxDados.DataSource.DataSet.Open;
    end;

    frfr.vpNomeImpressora := trim(Impressora);

    frfr.cfg.Close;
    frfr.cfg.Connection := conexao;
    frfr.cfg.ParamByName('flacodigo').AsInteger := 1;
    frfr.cfg.Open;

    try
      frfr.consulta.Connection := conexao;
      frfr.consulta.SQL.Text := 'select cfgviascomprovante from cfgmsai';
      frfr.consulta.Open;
      vlVias := frfr.consulta.FieldByName('cfgviascomprovante').AsInteger;
    except
      vlVias := 1;
    end;

    if FileExists(DirRelatorio) then
    begin
      frfr.frxReport.LoadFromFile(DirRelatorio);
      frfr.frxReport.PrintOptions.Copies := vlVias;

      { implementacao da identificacao do emissor do relatorio }
      if vusucodigo <> '' then
      begin

        frfr.frxReport.Variables['CLBCODIGO'] := QuotedStr(vusucodigo);
      end;

      if Length(Impressora) > 0 then
      begin

        frfr.frxReport.PrintOptions.Printer := trim(Impressora);

      end;

          frfr.frxReport.PrintOptions.ShowDialog := false;
          frfr.frxReport.ShowProgress := false;

          if Impressora<>'' then
            frfr.frxReport.PrintOptions.Printer := Impressora;

          frfr.frxReport.PrepareReport;
          frfr.frxReport.print;

    end;

    Result := '';
  Finally
    try
    frfr.DSdados.DataSet := nil;
    FreeAndNil(frfr.frxDesigner);
    FreeAndNil(frfr.frxBarCodeObject);
    FreeAndNil(frfr.frxCrossObject);
    FreeAndNil(frfr.frxDialogControls);
    FreeAndNil(frfr.frxDados);
    FreeAndNil(frfr.frxUniDACComponents);
    FreeAndNil(frfr.frxXLSExport1);
    FreeAndNil(frfr.frxXMLExport1);
    FreeAndNil(frfr.frxXLSXExport1);
    FreeAndNil(frfr.frxHTML5DivExport1);
    FreeAndNil(frfr.frxPDFExport1);
    FreeAndNil(frfr.frxCSVExport1);
    FreeAndNil(frfr.frxDotMatrixExport1);
    FreeAndNil(frfr.frxReport);
    FreeAndNil(frfr);
    except

    end;
  End;
end;

exports formu, mrfrImpressao, mrfrGerador, mrfrImpressaoDireta;

{$R *.dfm}
{ Documentação improvisada

  Gerador de Relatório para o Sistema Pega2013 e derivados
  Algumas Observações:
  1 - Os nomes dos relatórios devem seguir o padrão abaixo descrito.
  a - YYYYYYYYY - XXXXXXXXXXXXXXXXXXXXXXXXXX.fr3
  b - onde YYYYYYYYY será o nome da origem do Relatório. Exemplo: Clientes
  c - ' - ' separador de origem e do Nome do Relatório propriamente dito.
  d -  XXXXXXXXXXXXXXXXXXXXXXXXXX - será o nome do relatório. Exemplo: Vendas por período.
  e - Os nomes das origens devem iniciar com a primeira maíuscula e o restante minúsculas. Exemplo: Clientes
  f - o '  - ' é o que permite a separação entre os relatórios para facilitar a visualização e o uso dos mesmos. Uso obrigatório.
  g - Os nomes dos Relatórios após o ' - ' devem iniciar com a primeira maíuscula e o restante minúsculas. Exemplo: Vendas por Período.
  h - Para o correto funcionamento da máscara de busca é obrigatória o uso da extensão " .fr3 "
  i - O Modelo Template já está disponível e deve ser usado para diminuir o tempo de criação dos relatórios. Algumas observações:
  1 Voce pode gerar Templates (modelos) de relatórios próprios ou específicos. Crie o modelo e o salve normalmente. Um alerta, porém. O modelo deve ser salvo
  na pasta onde o executável se encontra. É a única limitação encontrada até agora.
  2 Depois de salvar seu modelo, feche o Fast4. Abra novamente e vá até Arquivo-->Novo-->Modelo. Seu modelo deve estar lá!! Clique nele e confirme. Pronto.
  Simples e rápido.




  O gerador de relatório está usando alguns padrões fixos, tais como Máscara e origem dos relatórios.
  Máscara: *.fr3
  Origem: 'c:\Superrelat\'
  FileListBox1.Mask := 'c:\Superrelat\*.fr3';

  Quando gerar a bpl tem que mudar isso.
}

procedure Tfrfr.AbrirGavetaMP420TH;
var
  Handle: THandle;
  CaracteresImpressos: DWORD;
  Documento: TDocInfo1;
  TextoAnsiString: AnsiString;
  TextoUnicode: string;
  vlNomeImpressora: String;
begin

  vlNomeImpressora := frfr.vpNomeImpressora;

  if not OpenPrinter(PChar(vlNomeImpressora), Handle, nil) then
  begin
    ShowMessage('Impressora não encontrada');
    Exit;
  end;

  Documento.pDocName := PChar('Abertura de Gaveta');
  Documento.pOutputFile := nil;
  Documento.pDataType := 'RAW';

  // Inicia um novo documento no Spool do Windows
  StartDocPrinter(Handle, 1, @Documento);

  // Apenas notifica o Windows que uma nova página começará.
  // Nenhum controle é aplicado a impressora.
  StartPagePrinter(Handle);

  TextoUnicode := chr(27) + chr(6);
  TextoAnsiString := AnsiString(TextoUnicode);
  WritePrinter(Handle, PAnsiChar(chr(27) + chr(118) + chr(140)), Length(TextoAnsiString), CaracteresImpressos);

  // Apenas notifica o Windows que a página finalizou.
  // Nenhum controle é aplicado a impressora.
  EndPagePrinter(Handle);

  // Finaliza o documento no Spool
  EndDocPrinter(Handle);

  // Fecha a impressora
  ClosePrinter(Handle);
end;

procedure Tfrfr.AtualizaImp;
var
  Device, FName, Port: array [0 .. 100] of Char;
  DevMode: THandle;
begin
  Printer.GetPrinter(Device, FName, Port, DevMode);
  ImprDefault := StrPas(Port);
end;

procedure Tfrfr.bfecharClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrfr.bconfirmaClick(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
    ShowMessage('Selecione um Relatório antes de usar esta função.');
  end
  else
  begin
    frxReport.LoadFromFile(Edit1.Text);
    frxReport.ShowReport;
  end;

end;

procedure Tfrfr.beditaClick(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
    ShowMessage('Selecione um Relatório antes de usar esta função.');
  end
  else
  begin
    frxReport.LoadFromFile(Edit1.Text);
    frxReport.DesignReport();
  end;
end;

procedure Tfrfr.bnovoClick(Sender: TObject);
begin
  if Edit1.Text = '' then
    frxReport.DesignReport()
  else
  begin
    Edit1.Text := '';
    frxReport.DesignReport();
  end;
end;

procedure Tfrfr.FileListBox1Click(Sender: TObject);
var
  ind: Integer;
begin
  try
    for ind := -1 to FileListBox1.Items.Count do
      Edit1.Text := ExtractFilePath(application.ExeName) + 'relat\' + FileListBox1.Items[FileListBox1.ItemIndex];
  except
  end;
end;

procedure Tfrfr.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Action := caFree;
end;

procedure Tfrfr.FormCreate(Sender: TObject);
begin
  frxReport.AddFunction('function AjustaDias(Data: TDateTime; vDias: Integer): TDateTime', 'DelphiFunctions', 'Adiciona ou Remove dias.');
  frxReport.AddFunction('function DataExtenso(Data: TDateTime): String', 'DelphiFunctions', 'Retorna Data por extenso.');
  frxReport.AddFunction('function ValorExtenso(Valor: Double): String', 'DelphiFunctions', 'Retorna valor em reais por extenso.');
  frxReport.AddFunction('function StringReplace(const S, OldPattern, NewPattern: string): string', 'DelphiFunctions',
    'Função StringReplace do Delphi com flags rfReplaceAll e rfIgnoreCase.');
end;

procedure Tfrfr.FormShow(Sender: TObject);
var
  nome, nome2: string;
  i, num, num2, a: Integer;
  nomatab: string;
  vlCtaCodigo: string;
  vlCtaIdentificacao: string;

begin

  FileListBox1.Directory := ExtractFilePath(application.ExeName) + 'relat';

  if (self.vtxtfiltro <> '') and (self.vtxtfiltro <> 'Relatórios') then
    FileListBox1.Mask := self.vtxtfiltro + '*.fr3'
  else
    FileListBox1.Mask := '*.fr3';

  vlCtaCodigo := trim(copy(self.vtxtfiltro, 1, pos(' ', self.vtxtfiltro) - 1));

  vlCtaIdentificacao := trim(copy(self.vtxtfiltro, pos(' ', self.vtxtfiltro) + 1, 200));
  consulta.Connection := zcone;

  try
    i := strtoint(vlCtaCodigo);

    consulta.Close;
    consulta.SQL.Text := 'select ctacodigo from cta where ctacodigo=' + vlCtaCodigo + ' and ctaidentificacao=' + chr(39) + vlCtaIdentificacao + chr(39);
    consulta.Open;

    if not consulta.IsEmpty then
    begin
      FileListBox1.Mask := 'extrato*.fr3';
    end;
    consulta.Close;

  except

  end;

  FileListBox1.Update;
  i := 0;
  a := 0;

  while i <= (FileListBox1.Count - 1) do
  begin
    if (i + 1) <= (FileListBox1.Count - 1) then
    begin
      num := AnsiPos('-', FileListBox1.Items[i]);
      num2 := AnsiPos('-', FileListBox1.Items[i + 1]);
      nomatab := FileListBox1.Items[i];
      nomatab := copy(nomatab, 1, num - 2);

      if copy(FileListBox1.Items[i], 1, num - 2) <> copy(FileListBox1.Items[i + 1], 1, num - 2) then
        a := 0;

    end;
    i := i + 1;
  end;

  cfg.Close;
  cfg.ParamByName('flacodigo').AsInteger := 1;
  cfg.Open;

end;

function Tfrfr.frxReportUserFunction(const MethodName: string; var Params: Variant): Variant;
begin
  If lowercase(MethodName) = 'dataextenso' Then
    Result := DataExtenso(Params[0]);

  If lowercase(MethodName) = 'valorextenso' Then
    Result := ValorExtenso(Params[0]);

  If lowercase(MethodName) = 'stringreplace' Then
    Result := StringReplace(Params[0], Params[1], Params[2], [rfReplaceAll, rfIgnoreCase]);
end;

end.
