program AtendimentoApp;

uses
  madExcept,
  Vcl.Forms,
  System.SysUtils,
  Winapi.Windows,
  System.Classes,
  inifiles,
  uupgrade in '..\uupgrade.pas';

{$R *.res}
{ Enable large address space support for this demo }


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
  Pack: HModule;
begin

  Pack := LoadPackage('mAtendimento.bpl');
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
  vlVerificaAtualizacao: TVerificaAtualizacao;

  arquini: TIniFile;
  vlVersao: string;

  vlatualizador: string;

begin

  ReportMemoryLeaksOnShutdown := true;

  try
    vlPathBPL := ExtractFilePath(Application.ExeName) + 'BPLs;';
    vlPathModulos := ExtractFilePath(Application.ExeName) + 'Modulos;';
    vlPathDLL := ExtractFilePath(Application.ExeName) + 'DLLs;';
    SetEnvironmentVariable(PWideChar('PATH'), PWideChar(ExtractFilePath(Application.ExeName) + 'kernel;' + vlPathBPL + vlPathModulos + vlPathDLL));

  //  VerificarRelease;


    LoadMainForm;
    vlForm := TForm(Application.FindComponent('FPrinciGou'));
    SetMainForm(vlForm);
    Application.Run;


  finally

  end;

end.
