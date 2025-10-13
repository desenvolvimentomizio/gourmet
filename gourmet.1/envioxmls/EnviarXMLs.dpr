program EnviarXMLs;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  System.SysUtils,
  Winapi.Windows,
  uFprinciEnvioXML in '..\..\kernel\enviarXML\uFprinciEnvioXML.pas' {FprinciEnvioXML};

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
  SetEnvironmentVariable(PWideChar('PATH'),
    PWideChar(vlPathBPL + vlPathModulos + vlPathDLL));







  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFprinciEnvioXML, FprinciEnvioXML);
  Application.Run;
end.


