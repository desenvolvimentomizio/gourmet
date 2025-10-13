program AtendSai;

uses
  madListHardware,
  madListProcesses,
  madListModules,
  madExcept,
  inifiles,
  Vcl.Forms,
  System.SysUtils,
  Winapi.Windows,
  System.Classes;

{$R *.res}

procedure DoUnloadPackage(AOwner: TComponent; Module: HModule);
var
  i: Integer;
  m: TMemoryBasicInformation;
begin
  for i := AOwner.ComponentCount - 1 downto 0 do
  begin
    VirtualQuery(GetClass(AOwner.Components[i].ClassName), m, SizeOf(m));
    if (Module = 0) or (HModule(m.AllocationBase) = Module) then
      AOwner.Components[i].Free;
  end;
  UnRegisterModuleClasses(Module);
  UnloadPackage(Module);
end;

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
  Pack := LoadPackage('mAtendSai.bpl');
  if Pack = 0 then
    Exit;

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

begin

  ReportMemoryLeaksOnShutdown := True;

  try
    vlPathBPL := ExtractFilePath(Application.ExeName) + 'BPLs;';
    vlPathModulos := ExtractFilePath(Application.ExeName) + 'Modulos;';
    vlPathDLL := ExtractFilePath(Application.ExeName) + 'DLLs;';
     SetEnvironmentVariable(PWideChar('PATH'), PWideChar(ExtractFilePath(Application.ExeName) + 'kernel;' + vlPathBPL + vlPathModulos + vlPathDLL));

    arquini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'gourmeterp.ini');
    With arquini Do
    Begin
      vlVersao := ReadString('posi', 'Versao', '00000');
    End;
    arquini.Free;

    if vlVersao = '' then
      vlVersao := '00000';

    Pack := LoadPackage('modulos\matz.bpl');
    if Pack <> 0 then
    begin
      try
        @vlVerificaAtualizacao := GetProcAddress(Pack, PChar('VerificaAtualizacao'));
        if Assigned(vlVerificaAtualizacao) then
        begin
          vlVerificaAtualizacao(Application, 'mAtendSai.bpl', 'modulos', '.bpl', vlVersao);
        end;
      finally
        DoUnloadPackage(Application, Pack);
      end;

    end;

    LoadMainForm;
    vlForm := TForm(Application.FindComponent('FprinciSai'));
    SetMainForm(vlForm);
    Application.Run;

  finally

  end;

end.
