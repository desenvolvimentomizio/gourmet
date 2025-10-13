program PainelNuc;

uses
  madExcept,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  System.SysUtils,
  Winapi.Windows;

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
  Pack: HModule;
begin
  Pack := LoadPackage('modulos\mintnuc.bpl');
  if Pack = 0 then
    Exit;

  @MainForm := GetProcAddress(Pack, PChar('MainForm'));
  if Assigned(MainForm) then
    MainForm(Application);
end;

var
  vlPathBPL: String;
  vlPathModulos: String;
  vlPathDLL: String;
  vlForm: TForm;
  Pack: Cardinal;

  vlatualizador: string;

begin
  vlPathBPL := ExtractFilePath(Application.ExeName) + 'BPLs;';
  vlPathModulos := ExtractFilePath(Application.ExeName) + 'Modulos;';
  vlPathDLL := ExtractFilePath(Application.ExeName) + 'DLLs;';
  SetEnvironmentVariable(PWideChar('PATH'), PWideChar(vlPathBPL + vlPathModulos + vlPathDLL));

  LoadMainForm;
  vlForm := TForm(Application.FindComponent('fprincinuc'));
  SetMainForm(vlForm);
  Application.Run;

end.
