program GerContingenciaNFCe;

uses
  madExcept,
  Vcl.Forms,
  System.SysUtils,
  Winapi.Windows,
  System.Classes;

{$R *.res}

procedure SetMainForm(FormAtivo: TForm);
var
  TmpMain: ^TCustomForm;
begin
  TmpMain := @application.MainForm;
  TmpMain^ := FormAtivo;
end;


procedure LoadMainForm;
type
  TMainForm = procedure(AOwner: TApplication);
var
  MainForm: TMainForm;
  Pack: HModule;
  vlModulo: string;
begin

  if fileexists(extractfilepath(application.ExeName) + 'modulos\mGerContiNFCe.bpl') then
    Pack := LoadPackage('mGerContiNFCe.bpl')
  else
    Pack := LoadPackage('mGerContingenciaNFCe.bpl');

  if Pack = 0 then
    exit;

  @MainForm := GetProcAddress(Pack, PChar('MainForm'));
  if Assigned(MainForm) then
    MainForm(application);
end;


var
  vlPathBPL: String;
  vlPathModulos: String;
  vlPathDLL: String;
  vlForm: TForm;

begin

  vlPathBPL := extractfilepath(application.ExeName) + 'kernel;' + extractfilepath(application.ExeName) + 'BPLs;';
  vlPathModulos := extractfilepath(application.ExeName) + 'Modulos;';
  vlPathDLL := extractfilepath(application.ExeName) + 'DLLs;';
  SetEnvironmentVariable(PWideChar('PATH'), PWideChar(vlPathBPL + vlPathModulos + vlPathDLL));

  LoadMainForm;

  if fileexists(extractfilepath(application.ExeName) + 'modulos\mGerContiNFCe.bpl') then
    vlForm := TForm(application.FindComponent('fGerContiNFCe'))
  else
    vlForm := TForm(application.FindComponent('fGerContingenciaNFCe'));

  SetMainForm(vlForm);
  application.Run;

end.
