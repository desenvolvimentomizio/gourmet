program advo;

uses
  Vcl.Forms,
  System.SysUtils,
  Winapi.Windows,
  Vcl.Themes,
  System.Classes,
  Vcl.Styles;

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
  Pack := LoadPackage(pchar('mprincigourmet.bpl'));
  if Pack = 0 then
    exit;

  @MainForm := GetProcAddress(Pack, pchar('MainForm'));

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

begin
  vlPathBPL := ExtractFilePath(Application.ExeName) + 'BPLs;';
  vlPathModulos := ExtractFilePath(Application.ExeName) + 'Modulos;';
  vlPathDLL := ExtractFilePath(Application.ExeName) + 'DLLs;';
   SetEnvironmentVariable(PWideChar('PATH'), PWideChar(ExtractFilePath(Application.ExeName) + 'kernel;' + vlPathBPL + vlPathModulos + vlPathDLL));

 { Pack := LoadPackage('modulos\matz.bpl');
  if Pack <> 0 then
  begin
    try
      @vlVerificaAtualizacao := GetProcAddress(Pack, pchar('VerificaAtualizacao'));
      if Assigned(vlVerificaAtualizacao) then
      begin
        vlVerificaAtualizacao(Application, 'mgourmet.bpl', 'modulos', '.bpl');
        vlVerificaAtualizacao(Application, 'mprincigourmet.bpl', 'modulos', '.bpl');
      end;
    finally
      DoUnloadPackage(Application, Pack);
    end;

  end;}



  LoadMainForm;
  vlForm := TForm(Application.FindComponent('fprincigourmet'));

  SetMainForm(vlForm);
  Application.Run;

end.
