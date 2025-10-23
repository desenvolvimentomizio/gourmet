program MizioContingencia;

uses
  System.SysUtils,
  Winapi.Windows,
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  ufGerContiNFCe in 'ufGerContiNFCe.pas' {fGerContiNFCe},
  ufuncoes in '..\funcoes\ufuncoes.pas',
  UFuncoesContigencia in 'UFuncoesContigencia.pas',
  uFormAtualiza in 'uFormAtualiza.pas' {FormAtualiza};

{$R *.res}
var
  vlPathBPL: String;
  vlPathModulos: String;
  vlPathDLL: String;
  vlForm: TForm;

begin
  vlPathBPL := ExtractFilePath(Application.ExeName) + 'BPLs;';
  vlPathModulos := ExtractFilePath(Application.ExeName) + 'Modulos;';
  vlPathDLL := ExtractFilePath(Application.ExeName) + 'DLLs;';
  SetEnvironmentVariable(PWideChar('PATH'), PWideChar(vlPathBPL + vlPathModulos + vlPathDLL));


  Application.Initialize;
 // Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfGerContiNFCe, fGerContiNFCe);
  Application.Run;
end.
