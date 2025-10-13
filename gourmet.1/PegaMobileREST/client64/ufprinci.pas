unit ufprinci;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  Datasnap.DSClientRest, FMX.Edit, FMX.Controls.Presentation, FMX.StdCtrls,
  System.IOUtils, FMX.DialogService, inifiles, System.Permissions,

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
  FMX.Objects, FMX.Media,
  ZXing.BarcodeFormat,
  ZXing.ReadResult,
  ZXing.ScanManager, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo, FMX.Platform,
  DataPak.Android.BarcodeScanner, FMX.Layouts;

Type
  TRotinas = (rblRegistraRetornoEntrega, rblRegistraLiberadoEntrega);

type
  Tfprinci = class(TForm)
    DSRestConnection1: TDSRestConnection;
    ImageControl3: TImageControl;
    Label1: TLabel;
    btConfiguracao: TButton;
    Rectangle2: TRectangle;
    lbMensagem: TLabel;
    lbrelogio: TLabel;
    tmRelaogio: TTimer;
    RcMensagem: TRoundRect;
    CameraComponent1: TCameraComponent;
    imgCamera: TImage;
    lblScanStatus: TLabel;
    Layout1: TLayout;
    MediaPlayer1: TMediaPlayer;

    procedure FormCreate(Sender: TObject);
    procedure ImageControl3Click(Sender: TObject);
    procedure ImageControl2Click(Sender: TObject);
    procedure btConfiguracaoClick(Sender: TObject);
    procedure GravarIPServidorREST(vIPServidorREST: string);
    function LerIPServidorREST: string;
    procedure DSRestConnection1Login(Sender: TObject; LoginProperties: TDSRestLoginProperties; var Cancel: Boolean);
    procedure tmRelaogioTimer(Sender: TObject);

    procedure CameraPermissionRequestResult(Sender: TObject; const APermissions: TArray<string>;
      const AGrantResults: TArray<TPermissionStatus>);

    procedure ExplainReason(Sender: TObject; const APermissions: TArray<string>; const APostRationaleProc: TProc);
    procedure CameraComponent1SampleBufferReady(Sender: TObject; const ATime: TMediaTime);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
    fPermissionCamera: String;
    fScanInProgress: Boolean;
    fFrameTake: Integer;
    fScanBitmap: TBitmap;
    procedure ParseImage();

    function AppEvent(AAppEvent: TApplicationEvent; AContext: TObject): Boolean;
    procedure SinalSonoro(vTipoSom: Integer);

{$IFDEF IOS}
    CodeBarIOS: TDPFQRCodeScanner;
    Procedure CodeBarIOSResultScan(Sender: TObject; AText: string);
{$ENDIF}
    procedure AjustaIPServidorREST;
    procedure ScanResult(AResult: string);
  public
    vpSegundos: Integer;
    vpTotalSegundos: Integer;

    vpRotina: TRotinas;
    vpIPServidorREST: string;
    { Public declarations }
    procedure MostraMensagem(const pMsg: String; pDuration: Integer; pTipo: Integer = 1);

  end;

var
  fprinci: Tfprinci;

implementation

uses
  uClientClasses, Androidapi.JNI.Os;

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.iPhone55in.fmx IOS}
{$R *.NmXhdpiPh.fmx ANDROID}
{$IFDEF ANDROID}

procedure Tfprinci.MostraMensagem(const pMsg: String; pDuration: Integer; pTipo: Integer = 1);
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
  sleep(vpTotalSegundos);

end;

procedure Tfprinci.ParseImage();
begin

  TThread.CreateAnonymousThread(
    procedure
    var
      ReadResult: TReadResult;
      ScanManager: TScanManager;

    begin
      try
        fScanInProgress := True;
        ScanManager := TScanManager.Create(TBarcodeFormat.Auto, nil);

        try

          ReadResult := ScanManager.Scan(fScanBitmap);

        except
          on E: Exception do
          begin

            TThread.Synchronize(TThread.CurrentThread,
              procedure
              begin
                lblScanStatus.Text := E.Message;
              end);

            exit;
          end;

        end;

        TThread.Synchronize(TThread.CurrentThread,
          procedure
          begin

            if (Length(lblScanStatus.Text) > 10) then
            begin
              lblScanStatus.Text := '*';
            end;

            lblScanStatus.Text := lblScanStatus.Text + '*';
            if (ReadResult <> nil) then
            begin
              CameraComponent1.Active := false;
              imgCamera.Visible := false;
              ScanResult(ReadResult.Text);

            end;

          end);

      finally
        if ReadResult <> nil then
          FreeAndNil(ReadResult);

        ScanManager.Free;
        fScanInProgress := false;
      end;

    end).Start();

end;

procedure Tfprinci.tmRelaogioTimer(Sender: TObject);
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

{$ENDIF}

procedure Tfprinci.ScanResult(AResult: string);
var
  cmd: TServerMethods1Client;
  vlOrcchave: string;
  vlRetorno: string;
begin
  ImageControl3.Visible := True;

  if AResult <> '' then
  begin
    vlOrcchave := copy(AResult, 1, pos('-', AResult) - 1);

    try

      cmd := TServerMethods1Client.Create(DSRestConnection1);
      vlRetorno := cmd.RegistraRetornoEntrega(vlOrcchave);

      if vlRetorno = 'Pedido não localizado.' then
      begin
        SinalSonoro(0);
        MostraMensagem(vlRetorno, 4, 0);
      end
      else if vlRetorno = 'Retorno já registrado.' then
      begin
        SinalSonoro(1);
        MostraMensagem(vlRetorno, 4, 2);
      end
      else if vlRetorno = 'ERRO do QRCode.' then
      begin
        SinalSonoro(0);
        MostraMensagem(vlRetorno, 4, 0);
      end
      else if vlRetorno = 'Retorno registrado com sucesso.' then
      begin
        SinalSonoro(1);
        MostraMensagem(vlRetorno, 4, 1);
      end
      else
      begin
        MostraMensagem(vlRetorno, 4, 0);
      end;
      lblScanStatus.Text := '';
    finally
      FreeAndNil(cmd);
    end;
  end;

end;

procedure Tfprinci.btConfiguracaoClick(Sender: TObject);
begin
  AjustaIPServidorREST;
end;

procedure Tfprinci.Button1Click(Sender: TObject);
begin
  imgCamera.Visible := True;
  vpRotina := rblRegistraRetornoEntrega;

  Label1.Text := '';

{$IFDEF ANDROID}
  PermissionsService.RequestPermissions([fPermissionCamera], CameraPermissionRequestResult, ExplainReason);
{$ENDIF}
end;

procedure Tfprinci.DSRestConnection1Login(Sender: TObject; LoginProperties: TDSRestLoginProperties;
var Cancel: Boolean);
begin
  try

  except

  end;
end;

procedure Tfprinci.GravarIPServidorREST(vIPServidorREST: string);
var
  loIniFIle: TInifile;
begin
  loIniFIle := TInifile.Create(GetHomePath + PathDelim + 'config.ini');
  loIniFIle.WriteString('config', 'IPServidorREST', vIPServidorREST);
  loIniFIle.Free;

end;

function Tfprinci.LerIPServidorREST: string;
var
  loIniFIle: TInifile;
  vlIPServidorREST: string;
begin
  loIniFIle := TInifile.Create(GetHomePath + PathDelim + 'config.ini');
  vlIPServidorREST := loIniFIle.ReadString('config', 'IPServidorREST', '');
  loIniFIle.Free;
  Result := vlIPServidorREST;
end;

procedure Tfprinci.AjustaIPServidorREST;
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

{ Make sure the camera is released if you're going away. }
function Tfprinci.AppEvent(AAppEvent: TApplicationEvent; AContext: TObject): Boolean;
begin
  case AAppEvent of
    TApplicationEvent.WillBecomeInactive, TApplicationEvent.EnteredBackground, TApplicationEvent.WillTerminate:
      CameraComponent1.Active := false;
  end;
end;

procedure Tfprinci.FormCreate(Sender: TObject);
var
  loIniFIle: TInifile;
  cmd: TServerMethods1Client;
  AppEventSvc: IFMXApplicationEventService;
begin
  vpIPServidorREST := LerIPServidorREST;
  if vpIPServidorREST = '' then
  begin
    AjustaIPServidorREST;
    DSRestConnection1.Host := vpIPServidorREST;
    cmd := TServerMethods1Client.Create(DSRestConnection1);
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

  if TPlatformServices.Current.SupportsPlatformService(IFMXApplicationEventService, IInterface(AppEventSvc)) then
  begin
    AppEventSvc.SetApplicationEventHandler(AppEvent);
  end;

  lblScanStatus.Text := '';
  fFrameTake := 0;
  fScanBitmap := nil;

{$IFDEF ANDROID}
  fPermissionCamera := JStringToString(TJManifest_permission.JavaClass.CAMERA);
{$ENDIF}
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

procedure Tfprinci.ImageControl2Click(Sender: TObject);
begin
  Label1.Text := '';
  vpRotina := rblRegistraLiberadoEntrega;

end;

procedure Tfprinci.CameraComponent1SampleBufferReady(Sender: TObject; const ATime: TMediaTime);
begin
  TThread.Synchronize(TThread.CurrentThread,
    procedure
    begin
      CameraComponent1.SampleBufferToBitmap(imgCamera.Bitmap, True);

      if (fScanInProgress) then
      begin
        exit;
      end;

      { This code will take every 4 frame. }
      inc(fFrameTake);
      if (fFrameTake mod 4 <> 0) then
      begin
        exit;
      end;

      if Assigned(fScanBitmap) then
        FreeAndNil(fScanBitmap);

      fScanBitmap := TBitmap.Create();
      fScanBitmap.Assign(imgCamera.Bitmap);

      ParseImage();
    end);

end;

procedure Tfprinci.CameraPermissionRequestResult(Sender: TObject; const APermissions: TArray<string>;
const AGrantResults: TArray<TPermissionStatus>);
begin
  if (Length(AGrantResults) = 1) and (AGrantResults[0] = TPermissionStatus.Granted) then
  begin
    CameraComponent1.Active := false;
    CameraComponent1.Quality := FMX.Media.TVideoCaptureQuality.MediumQuality;
    CameraComponent1.Kind := FMX.Media.TCameraKind.BackCamera;
    CameraComponent1.FocusMode := FMX.Media.TFocusMode.ContinuousAutoFocus;
    CameraComponent1.Active := True;

  end
  else
    TDialogService.ShowMessage('Cannot scan for barcodes because the required permissions is not granted')
end;

procedure Tfprinci.ExplainReason(Sender: TObject; const APermissions: TArray<string>; const APostRationaleProc: TProc);
begin

  TDialogService.ShowMessage('The app needs to access the camera to scan barcodes ...',
    procedure(const AResult: TModalResult)
    begin
      APostRationaleProc;
    end)
end;

procedure Tfprinci.SinalSonoro(vTipoSom: Integer);
begin

{$IFDEF ANDROID}
    if vTipoSom = 1 then
    begin
      MediaPlayer1.FileName := System.IOUtils.TPath.GetDocumentsPath + PathDelim + 'acerto.mp3';
    end
    else
    begin
      MediaPlayer1.FileName := System.IOUtils.TPath.GetDocumentsPath + PathDelim + 'erro.mp3';
    end;

    MediaPlayer1.Play;

{$ELSE}

    if vTipoSom = 1 then
      MediaPlayer1.FileName := GetDocumentsPath + PathDelim + 'acerto.mp3'
    else
      MediaPlayer1.FileName := GetDocumentsPath + PathDelim + 'erro.mp3';

    MediaPlayer1.Play;

{$ENDIF}
end;

procedure Tfprinci.ImageControl3Click(Sender: TObject);
begin
  try

    imgCamera.Visible := True;
    vpRotina := rblRegistraRetornoEntrega;
    ImageControl3.Visible := false;

    Label1.Text := '';
    lblScanStatus.Text := '';

{$IFDEF ANDROID}
    PermissionsService.RequestPermissions([fPermissionCamera], CameraPermissionRequestResult, ExplainReason);
{$ENDIF}
  except
    imgCamera.Visible := false;
    vpRotina := rblRegistraRetornoEntrega;
    ImageControl3.Visible := True;

    Label1.Text := '';
    lblScanStatus.Text := '';
  end;
end;

{$IFDEF IOS}

procedure TForm1.CodeBarIOSResultScan(Sender: TObject; AText: string);
Begin

  Edit1.Text := AText;
End;
{$ENDIF}

end.
