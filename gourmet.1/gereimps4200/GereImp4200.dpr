program GereImp4200;


uses
  Vcl.Forms,
  System.SysUtils,
  Winapi.Windows,
  ufprincigere4200 in 'ufprincigere4200.pas' {fprincigere4200},
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
  Application.CreateForm(Tfprincigere4200, fprincigere4200);
  Application.Run;

end.
