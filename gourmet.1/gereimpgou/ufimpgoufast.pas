unit ufimpgoufast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, inifiles, Data.DB, DBAccess, Uni, UniProvider,
  MySQLUniProvider, DASQLMonitor, UniSQLMonitor, MemDS, Vcl.Printers,
  System.StrUtils, frxPreview, frxBarcode, frxDBSet, frxExportImage,
  Vcl.StdCtrls, Vcl.ComCtrls, frxRich, frxExportBaseDialog;

// Declarando a MP2032.DLL e sua funções em Delphi
{Function IniciaPorta(Porta: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function FechaPorta: Integer; Stdcall; Far; External 'MP2032.DLL';
Function Le_Status: Integer; Stdcall; Far; External 'MP2032.DLL';
Function HabilitaEsperaImpressao(Flag: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ConfiguraModeloImpressora(ModeloImpressora: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function LeituraStatusEstendido(A: Array Of Byte): Integer; Stdcall; Far; External 'MP2032.DLL';}

type
  Tfimpgoufast = class(TForm)
    Image1: TImage;
    plmensagem: TPanel;
    frxReportImpressor: TfrxReport;
    imprimir: TTimer;
    consulta: TUniQuery;
    UniSQLMonitor: TUniSQLMonitor;
    MySQLUniProvider: TMySQLUniProvider;
    Conexao: TUniConnection;
    tcisituacao: TUniQuery;
    frxBMPExport: TfrxBMPExport;
    frxDados: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    mit: TUniQuery;
    frxRichObject1: TfrxRichObject;
    RichEdit1: TRichEdit;
    procedure imprimirTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function conectabanco: boolean;
    function EstadoMP2032(vporta: string): Integer;
    { Private declarations }
  public
    { Public declarations }
    vporta: string;
    vArquivo: string;
    vTciCodigo: string;
    vimms: string;
  end;

var
  fimpgoufast: Tfimpgoufast;

implementation

{$R *.dfm}

function IsValidatePrinter(LabelPrinter: String): boolean;
var
  i: Integer;
begin
  for i := 0 to Printer.Printers.Count - 1 do
    if AnsiContainsText(Printer.Printers[i], LabelPrinter) then
      Exit(true);
  result := False;
end;

function Tfimpgoufast.conectabanco: boolean;
Var
  arquini: TIniFile;
  vnomebanco: String;
  vportabanco: String;
  vservidor: String;
  vusuario: String;
  vsenha: String;
  vCaminho: string;
Begin

  arquini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'gourmeterp.ini');
  vCaminho := ExtractFilePath(Application.ExeName);
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
  Conexao.Connected := true;
  result := Conexao.Connected;

End;

procedure Tfimpgoufast.FormShow(Sender: TObject);
begin

  { vArquivo := '$(gourmet1)\pedidos\001590\ped0267.fp3';
    vporta := 'LANCHES';

    vporta:=StringReplace(vporta,'_',' ',[rfReplaceAll, rfIgnoreCase]);

    vimms := '2529,2530';
    vTciCodigo := '5'; }

  vArquivo := paramstr(1);
  vporta := paramstr(2);

  vporta := StringReplace(vporta, '_', ' ', [rfReplaceAll, rfIgnoreCase]);

  vimms := paramstr(3);
  vTciCodigo := paramstr(4);

  imprimir.Enabled := true;
end;

procedure Tfimpgoufast.imprimirTimer(Sender: TObject);
var
  vlRetorno: Integer;
  vltentativas: Integer;
  vlTciPorta: string;
begin


  imprimir.Enabled := False;

  vltentativas := 0;
  if conectabanco then
  begin

    while true do
    begin

      self.Caption := 'Impressora ' + vporta;

      Application.ProcessMessages;

      Vcl.Printers.Printer.PrinterIndex := Vcl.Printers.Printer.Printers.IndexOf(vporta);

      if IsValidatePrinter(trim(vporta)) then // Identifica se é uma impressora válida
      begin


      frxReportImpressor.PrintOptions.Printer:=vporta;
        mit.Close;
        mit.ParamByName('mitidentificacao').AsString := vporta;
        mit.Open;

        vlTciPorta := mit.FieldByName('tciporta').AsString;

        if pos('.', vlTciPorta) > 0 then
        begin
          vlRetorno := EstadoMP2032(vlTciPorta);

        end
        else
        begin
          if not Printer.Printing then
          begin
            vlRetorno := 24;
          end;
        end;

        if vlRetorno = 24 then
        begin

          frxReportImpressor.PrintOptions.Printer := vporta;

          frxReportImpressor.SelectPrinter;

          tcisituacao.Close;
          tcisituacao.SQL.Text := 'select tcicodigo, tciimprimindo, mitidentificacao from tci,mit where tci.mitcodigo=mit.mitcodigo and tcicodigo=' + vTciCodigo;
          tcisituacao.Open;

          tcisituacao.Edit;
          tcisituacao.FieldByName('tciimprimindo').AsString := datetimetostr(now());
          tcisituacao.post;

          plmensagem.Caption := tcisituacao.FieldByName('mitidentificacao').AsString + ' imprimindo ...';

          Application.ProcessMessages;

          if fileexists(vArquivo) then
          begin

            if frxReportImpressor.PreviewPages.LoadFromFile(vArquivo) then
            begin
              if frxReportImpressor.Print then
              begin

                tcisituacao.Edit;
                tcisituacao.FieldByName('tciimprimindo').AsString := '';
                tcisituacao.post;

                consulta.Close;
                consulta.SQL.Text := 'update gri,tci set grisituacao=24 where gri.tcicodigo=tci.tcicodigo and tci.tciporta='+QuotedStr(vlTciPorta);
                consulta.ExecSQL;


                Vcl.Printers.Printer.PrinterIndex := -1;
                break;

              end;
            end;

            vltentativas := vltentativas + 1;

            if vltentativas > 10 then
            begin

              plmensagem.Caption := inttostr(vltentativas) + ' Tentativa ...';
              Application.ProcessMessages;
              tcisituacao.Close;
              tcisituacao.SQL.Text := 'select tcicodigo, tciimprimindo from tci where tcicodigo=' + vTciCodigo;
              tcisituacao.Open;

              tcisituacao.Edit;
              tcisituacao.FieldByName('tciimprimindo').AsString := '';
              tcisituacao.post;

              consulta.Close;
              consulta.SQL.Text := 'update imm set immhoraimpresso=' + QuotedStr('') + ' where immchave in (' + vimms + ')';
              consulta.ExecSQL;
              break;
            end;

          end
          else
          begin
            Vcl.Printers.Printer.PrinterIndex := -1;
            Close;

          end;
        end
        else
        begin
        begin

                    tcisituacao.Close;
          tcisituacao.SQL.Text := 'select tcicodigo, tciimprimindo, mitidentificacao from tci,mit where tci.mitcodigo=mit.mitcodigo and tcicodigo=' + vTciCodigo;
          tcisituacao.Open;


              tcisituacao.Edit;
              tcisituacao.FieldByName('tciimprimindo').AsString := '';
              tcisituacao.post;

              consulta.Close;
              consulta.SQL.Text := 'update imm set immhoraimpresso=' + QuotedStr('') + ' where immchave in (' + vimms + ')';
              consulta.ExecSQL;




          Vcl.Printers.Printer.PrinterIndex := -1;

          sleep(500);
          close;
        end;
        end;

        Close;

      end;
    end;
    Close;
  end
  else
  begin

    Close;
  end;

end;

function Tfimpgoufast.EstadoMP2032(vporta: string): Integer;
Var
  vu: string;
  vlRetorno, i_retorno: Integer;
  s_cmdtx: string;
  i, U, E: Integer;
Begin

 { vlRetorno := ConfiguraModeloImpressora(7);
  vlRetorno := IniciaPorta(vporta);

  if vlRetorno = 0 then
  begin
    result := 0;
    Exit;
  end;

  vlRetorno := Le_Status();
  FechaPorta;

  result := vlRetorno;}
  result :=24;

End;

end.
