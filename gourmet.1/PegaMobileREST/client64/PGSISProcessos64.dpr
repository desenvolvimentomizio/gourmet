program PGSISProcessos64;

uses
  System.StartUpCopy,
  FMX.Forms,
  Androidapi.JNI.Toast in 'Androidapi.JNI.Toast.pas',
  uClientClasses in 'uClientClasses.pas',
  ufprinci in 'ufprinci.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
