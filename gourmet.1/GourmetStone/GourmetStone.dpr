program GourmetStone;



uses
  Vcl.Forms,

  dialogs,
  System.SysUtils,
  Winapi.Windows,
  System.Classes,
  inifiles,
  uupgrade in '..\uupgrade.pas';

{$R *.res}


procedure SetMainForm(FormAtivo: TForm);
var
  TmpMain: ^TCustomForm;
begin
  TmpMain := @Application.MainForm;
  TmpMain^ := FormAtivo;
end;

procedure LoadMainForm;
type
  TMainForm = procedure(AOwner: TApplication);
var
  MainForm: TMainForm;
  Pack: HMODULE;
begin
  Pack := LoadPackage('mGourmetStone.bpl');
  if Pack = 0 then
    exit;

  @MainForm := GetProcAddress(Pack, PChar('MainForm'));
  if Assigned(MainForm) then
    MainForm(Application);
end;

type
  TVerificaAtualizacao = function(onwer: TApplication; varquivo: String; vPasta: String; vExtensao: string; vVersao: String = ''): String;

var
  vlPathBPL: String;
  vlPathModulos: String;
  vlPathDLL: String;
  vlForm: TForm;
  Pack: Cardinal;

  arquini: TIniFile;
  vlVersao: string;


begin
  vlPathBPL := ExtractFilePath(Application.ExeName) + 'BPLs;';
  vlPathModulos := ExtractFilePath(Application.ExeName) + 'Modulos;';
  vlPathDLL := ExtractFilePath(Application.ExeName) + 'DLLs;';
  SetEnvironmentVariable(PWideChar('PATH'), PWideChar(ExtractFilePath(Application.ExeName) + 'kernel;' + vlPathBPL + vlPathModulos + vlPathDLL));

   VerificarRelease;

  LoadMainForm;
  vlForm := TForm(Application.FindComponent('FintegracaoStone'));
  SetMainForm(vlForm);
  Application.Run;

end.

