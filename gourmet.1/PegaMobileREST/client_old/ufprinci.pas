unit ufprinci;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  Datasnap.DSClientRest, FMX.Edit, FMX.Controls.Presentation, FMX.StdCtrls,
  System.IOUtils, FMX.DialogService, inifiles,

{$IFDEF ANDROID}
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.GraphicsContentViewText,
  FMX.Helpers.Android,
  Androidapi.Helpers,
  Androidapi.NativeActivity,
  Androidapi.JNIBridge,
  IdURI,
  Androidapi.JNI.Net,
  Androidapi.JNI.Widget,
  Androidapi.JNI.Toast,
{$ENDIF}
{$IF defined(IOS)}
  DPF.iOS.BaseControl, DPF.iOS.BarCodeReader,
{$ENDIF}
  DataPak.Android.BarcodeScanner, FMX.Ani, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.FMXUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

Type
  TRotinas = (rblRegistraRetornoEntrega, rblRegistraLiberadoEntrega);

type
  TForm1 = class(TForm)
    DSRestConnection1: TDSRestConnection;
    BarcodeScanner1: TBarcodeScanner;
    ToolBar1: TToolBar;
    Edit1: TEdit;
    Panel1: TPanel;
    ImageControl2: TImageControl;
    Panel3: TPanel;
    ImageControl3: TImageControl;
    Label1: TLabel;
    btConfiguracao: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BarcodeScanner1ScanResult(Sender: TObject; AResult: string);
    procedure ImageControl3Click(Sender: TObject);
    procedure ImageControl2Click(Sender: TObject);
    procedure btConfiguracaoClick(Sender: TObject);
    procedure BarcodeScanner1ScanAbort(Sender: TObject);
    procedure GravarIPServidorREST(vIPServidorREST: string);
    function LerIPServidorREST: string;

  private
    { Private declarations }

{$IFDEF IOS}
    CodeBarIOS: TDPFQRCodeScanner;
    Procedure CodeBarIOSResultScan(Sender: TObject; AText: string);
{$ENDIF}
{$IFDEF ANDROID}
    Function AppBarcodeScanInstalado: Boolean;
    procedure Mensagem(vTexto: string);
    procedure AjustaIPServidorREST;
{$ENDIF}
  public
    vpRotina: TRotinas;
    vpIPServidorREST: string;
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

uses
  uClientClasses;

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.iPhone55in.fmx IOS}
{$R *.NmXhdpiPh.fmx ANDROID}
{$IFDEF ANDROID}
{$IFDEF ANDROID}

procedure Toast(const Msg: string; duration: TToastLength);
var
  ToastLength: Integer;
begin
  if duration = ShortToast then
    ToastLength := TJToast.JavaClass.LENGTH_SHORT
  else
    ToastLength := TJToast.JavaClass.LENGTH_LONG;
  CallInUiThread(
    procedure
    begin
      TJToast.JavaClass.makeText(SharedActivityContext, StrToJCharSequence(Msg), ToastLength).show
    end);
end;
{$ENDIF}

function TForm1.AppBarcodeScanInstalado: Boolean;
var

  Intent: JIntent;
  Info: JApplicationInfo;
begin

  Try

    Result := False;
    Info := SharedActivityContext.getPackageManager.getApplicationInfo(StringToJString('com.google.zxing.client.android'), 0);

    if Info.packageName.equals(StringToJString('com.google.zxing.client.android')) then
    Begin

      Result := True;

    End;

  Except
    on E: Exception do
    begin

      Try
        Intent := TJIntent.JavaClass.init(TJIntent.JavaClass.ACTION_VIEW);
        Intent.setData(TJnet_Uri.JavaClass.parse(StringToJString('https://play.google.com/store/apps/details?id=com.google.zxing.client.android')));
        Intent.setPackage(StringToJString('com.android.vending'));
        SharedActivity.startActivity(Intent);
        SharedActivity.finishActivity(0);
      Except
        ShowMessage('Erro ao abrir o Google Play !');
      End;
    End;

  end;

end;
{$ENDIF}

procedure TForm1.BarcodeScanner1ScanAbort(Sender: TObject);
begin
  { }
end;

procedure TForm1.BarcodeScanner1ScanResult(Sender: TObject; AResult: string);
var
  cmd: TServerMethods1Client;
begin
  Edit1.Text := AResult;

  if Edit1.Text <> '' then
  begin
    Edit1.Text := copy(Edit1.Text, 1, pos('-', Edit1.Text) - 1);

    try
      if vpRotina = rblRegistraRetornoEntrega then
      begin
        cmd := TServerMethods1Client.Create(DSRestConnection1);
        Label1.Text := cmd.RegistraRetornoEntrega(Edit1.Text);
        Mensagem(Label1.Text);
      end
      else if vpRotina = rblRegistraLiberadoEntrega then
      begin
        cmd := TServerMethods1Client.Create(DSRestConnection1);
        Label1.Text := cmd.RegistraLiberadoEntrega(Edit1.Text);
        Mensagem(Label1.Text);
      end;

    finally
      freeandnil(cmd);
    end;
  end;

end;

procedure TForm1.btConfiguracaoClick(Sender: TObject);
begin
  AjustaIPServidorREST;
end;

procedure TForm1.GravarIPServidorREST(vIPServidorREST: string);
var
  loIniFIle: TInifile;
begin
  loIniFIle := TInifile.Create(GetHomePath + PathDelim + 'config.ini');
  loIniFIle.WriteString('config', 'IPServidorREST', vIPServidorREST);
  loIniFIle.Free;

end;

function TForm1.LerIPServidorREST: string;
var
  loIniFIle: TInifile;
  vlIPServidorREST: string;
begin
  loIniFIle := TInifile.Create(GetHomePath + PathDelim + 'config.ini');
  vlIPServidorREST := loIniFIle.ReadString('config', 'IPServidorREST', '');
  loIniFIle.Free;
  Result := vlIPServidorREST;
end;

procedure TForm1.Mensagem(vTexto: string);
begin
{$IFDEF ANDROID}
  Toast(vTexto, ShortToast);
{$ENDIF}
end;

procedure TForm1.AjustaIPServidorREST;
var
  LPrompt: string;
  LDefaultValue: string;
  TaskName: string;
begin
  try
    LPrompt := 'IP do servidor';
    LDefaultValue := LerIPServidorREST;
    TDialogService.InputQuery('Informe o IP do SERVIDOR', [LPrompt], [LDefaultValue],
      procedure(const AResult: TModalResult; const AValues: array of string)
      begin
        if AResult = mrOk then
        begin
          TaskName := AValues[0];
          GravarIPServidorREST(TaskName);
          vpIPServidorREST := TaskName;
        end
        else
          TaskName := '';

      end);
  except
    on E: Exception do
    begin
      Mensagem(E.Message);
    end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  loIniFIle: TInifile;
  cmd: TServerMethods1Client;
begin
  vpIPServidorREST := LerIPServidorREST;
  if vpIPServidorREST = '' then
  begin
    AjustaIPServidorREST;
  end
  else
  begin
    try
      DSRestConnection1.Host := vpIPServidorREST;
      cmd := TServerMethods1Client.Create(DSRestConnection1);
    except
      ShowMessage('Servidor indisponivel, verifique!');
    end;
  end;



{$IFDEF IOS}
  if Not Assigned(CodeBarIOS) then
    CodeBarIOS := TDPFQRCodeScanner.Create(Self);

  CodeBarIOS.Name := 'CodeBarIOSResult';
  CodeBarIOS.Parent := Self;
  CodeBarIOS.Align := TAlignLayout.Bottom;
  CodeBarIOS.Visible := True;
  CodeBarIOS.Margins.Left := 10;
  CodeBarIOS.Margins.Right := 10;
  CodeBarIOS.Margins.Bottom := 10;
  CodeBarIOS.Margins.Top := 10;
  CodeBarIOS.OnScan := CodeBarIOSResultScan;

{$ENDIF}
end;

procedure TForm1.ImageControl2Click(Sender: TObject);
begin
  Edit1.Text := '';
  Label1.Text := '';
  vpRotina := rblRegistraLiberadoEntrega;

{$IFDEF ANDROID}
  if AppBarcodeScanInstalado then
    BarcodeScanner1.Scan;

{$ENDIF}
end;

procedure TForm1.ImageControl3Click(Sender: TObject);
begin
  vpRotina := rblRegistraRetornoEntrega;
  Edit1.Text := '';
  Label1.Text := '';

{$IFDEF ANDROID}
  if AppBarcodeScanInstalado then
    BarcodeScanner1.Scan;

{$ENDIF}
end;

{$IFDEF IOS}

procedure TForm1.CodeBarIOSResultScan(Sender: TObject; AText: string);
Begin

  Edit1.Text := AText;
End;
{$ENDIF}

end.
