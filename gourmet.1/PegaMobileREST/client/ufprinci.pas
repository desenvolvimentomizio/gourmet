unit ufprinci;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
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
  FMX.Ani, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.FMXUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  DataPak.Android.BarcodeScanner, FMX.Objects;

Type
  TRotinas = (rblRegistraRetornoEntrega, rblRegistraLiberadoEntrega);

type
  TForm1 = class(TForm)
    DSRestConnection1: TDSRestConnection;
    BarcodeScanner1: TBarcodeScanner;
    Edit1: TEdit;
    Panel3: TPanel;
    ImageControl3: TImageControl;
    Label1: TLabel;
    btConfiguracao: TButton;
    Label5: TLabel;
    Rectangle2: TRectangle;
    lbMensagem: TLabel;
    lbrelogio: TLabel;
    tmRelaogio: TTimer;
    RcMensagem: TRoundRect;
    procedure FormCreate(Sender: TObject);
    procedure BarcodeScanner1ScanResult(Sender: TObject; AResult: string);
    procedure ImageControl3Click(Sender: TObject);
    procedure ImageControl2Click(Sender: TObject);
    procedure btConfiguracaoClick(Sender: TObject);
    procedure BarcodeScanner1ScanAbort(Sender: TObject);
    procedure GravarIPServidorREST(vIPServidorREST: string);
    function LerIPServidorREST: string;
    procedure DSRestConnection1Login(Sender: TObject; LoginProperties: TDSRestLoginProperties; var Cancel: Boolean);
    procedure tmRelaogioTimer(Sender: TObject);

  private
    { Private declarations }

{$IFDEF IOS}
    CodeBarIOS: TDPFQRCodeScanner;
    Procedure CodeBarIOSResultScan(Sender: TObject; AText: string);
{$ENDIF}
{$IFDEF ANDROID}
    Function AppBarcodeScanInstalado: Boolean;

{$ENDIF}
    procedure AjustaIPServidorREST;
    procedure MostraMensagem(const pMsg: String; pDuration: Integer; pTipo: Integer = 1);
  public
    vpSegundos: Integer;
    vpTotalSegundos: Integer;

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

procedure TForm1.MostraMensagem(const pMsg: String; pDuration: Integer; pTipo: Integer = 1);
begin
  vpSegundos := 0;
  vpTotalSegundos := 0;
  vpTotalSegundos := pDuration;
  lbMensagem.Text := pMsg;
  if pTipo = 0 then
  begin
    RcMensagem.Fill.Color := TAlphaColors.Red;
  end
  else if pTipo = 1 then
  begin
    RcMensagem.Fill.Color := TAlphaColors.Green;

  end
  else if pTipo = 2 then
  begin
    RcMensagem.Fill.Color := TAlphaColors.Orange;
  end;

end;

procedure TForm1.tmRelaogioTimer(Sender: TObject);
begin

  lbrelogio.Text := timetostr(now());

  if vpTotalSegundos > 0 then
  begin
    vpSegundos := vpSegundos + 1;
  end;

  if (vpTotalSegundos <= vpSegundos) and ((vpTotalSegundos <> 0) and (vpSegundos <> 0)) then
  begin
    vpSegundos := 0;
    vpTotalSegundos := 0;
    lbMensagem.Text := '';
    RcMensagem.Fill.Color := TAlphaColors.Null;

  end;

end;

function TForm1.AppBarcodeScanInstalado: Boolean;
var

  Intent: JIntent;
  Info: JApplicationInfo;
begin

  Try

    Result := false;
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
  Label5.Text := AResult;
  Edit1.Text := AResult;

  if Edit1.Text <> '' then
  begin
    Edit1.Text := copy(Edit1.Text, 1, pos('-', Edit1.Text) - 1);

    try
      if vpRotina = rblRegistraRetornoEntrega then
      begin
        cmd := TServerMethods1Client.Create(DSRestConnection1);
        Label1.Text := cmd.RegistraRetornoEntrega(Edit1.Text);

        if Label1.Text = 'Pedido não localizado.' then
        begin
          MostraMensagem(Label1.Text, 4, 0);
        end
        else if Label1.Text = 'Retorno já registrado.' then
        begin
          MostraMensagem(Label1.Text, 4, 2);
        end
        else if Label1.Text = 'ERRO do QRCode.' then
        begin
          MostraMensagem(Label1.Text, 4, 1);
        end
        else if Label1.Text = 'Retorno registrado com sucesso.' then
        begin
          MostraMensagem(Label1.Text, 4, 0);
        end;

      end
      else if vpRotina = rblRegistraLiberadoEntrega then
      begin
        cmd := TServerMethods1Client.Create(DSRestConnection1);
        Label1.Text := cmd.RegistraLiberadoEntrega(Edit1.Text);
        MostraMensagem(Label1.Text, 4);
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

procedure TForm1.DSRestConnection1Login(Sender: TObject; LoginProperties: TDSRestLoginProperties; var Cancel: Boolean);
begin
  try

  except

  end;
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

      MostraMensagem(E.Message, 1, 5);
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
