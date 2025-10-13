unit ufmizio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, registry, Vcl.StdCtrls, ShellApi,
  Vcl.ExtCtrls;

type
  Tfmizio = class(TForm)
    Inicializar: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure InicializarTimer(Sender: TObject);
  private
    { Private declarations }
    vPathApp: string;
    vPathAtu: string;
    procedure executar(programa: string);

  public
    { Public declarations }

  end;

var
  fmizio: Tfmizio;

implementation

{$R *.dfm}

function GetUserEnvironmentVariable(const name: string): string;
var
  rv: DWORD;
begin
  // HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
  with TRegistry.Create do
    try
      RootKey := HKEY_LOCAL_MACHINE;
      OpenKey('SYSTEM\CurrentControlSet\Control\Session Manager\Environment', False);
      result := ReadString(name);
      SendMessageTimeout(HWND_BROADCAST, WM_SETTINGCHANGE, 0, LParam(PChar('SYSTEM\CurrentControlSet\Control\Session Manager\Environment')), SMTO_ABORTIFHUNG, 5000, rv);
    finally
      Free
    end
end;

procedure SetUserEnvironmentVariable(const name, value: string);
var
  rv: DWORD;
begin
  with TRegistry.Create do
    try
      RootKey := HKEY_LOCAL_MACHINE;
      OpenKey('SYSTEM\CurrentControlSet\Control\Session Manager\Environment', False);
      WriteString(name, value);
      SendMessageTimeout(HWND_BROADCAST, WM_SETTINGCHANGE, 0, LParam(PChar('SYSTEM\CurrentControlSet\Control\Session Manager\Environment')), SMTO_ABORTIFHUNG, 5000, rv);
    finally
      Free
    end
end;

procedure Tfmizio.FormCreate(Sender: TObject);
begin
  vPathApp := extractfilepath(ParamStr(0)) + 'modulos';
end;

procedure Tfmizio.FormShow(Sender: TObject);
begin
  Inicializar.Enabled := true;
end;

procedure Tfgourmeterp.inicializarTimer(Sender: TObject);
begin
  Inicializar.Enabled := False;
  vPathAtu := GetUserEnvironmentVariable('Path');
  if pos(vPathApp, vPathAtu) = 0 then
  begin
    SetUserEnvironmentVariable('Path', vPathApp + ';' + vPathAtu);
  end;
  executar('pega.exe');
  self.Close;
end;

procedure Tfmizio.executar(programa: string);
var
  vApp: string;
begin

  vApp := extractfilepath(application.ExeName) + programa;
  if fileexists(vApp) then
  begin
    ShellExecute(Handle, 'open', PChar(vApp), nil, nil, SW_SHOW);
  end
  else
  begin
    showmessage('Não foi possivel localizar o programa: ' + programa);
  end;
end;

end.
