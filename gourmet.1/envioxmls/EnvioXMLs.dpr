program EnvioXMLs;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  System.SysUtils,
  Winapi.Windows,
  ufEnvioXML in 'ufEnvioXML.pas' {fEnvioXML} ,
  ufuncoes in '..\base\ufuncoes.pas';

{$R *.res}

var
  vlPathBPL: String;
  vlPathModulos: String;
  vlPathDLL: String;

begin
  vlPathBPL := ExtractFilePath(Application.ExeName) + 'BPLs;';
  vlPathModulos := ExtractFilePath(Application.ExeName) + 'Modulos;';
  vlPathDLL := ExtractFilePath(Application.ExeName) + 'DLLs;';
   SetEnvironmentVariable(PWideChar('PATH'), PWideChar(ExtractFilePath(Application.ExeName) + 'kernel;' + vlPathBPL + vlPathModulos + vlPathDLL));

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfEnvioXML, fEnvioXML);
  Application.Run;

end.
