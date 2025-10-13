program PGSISProcessos;

uses
  System.StartUpCopy,
  FMX.Forms,
  Androidapi.JNI.Toast in 'Androidapi.JNI.Toast.pas',
  uClientClasses in 'uClientClasses.pas',
  ufprinci in 'ufprinci.pas' {fprinci};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfprinci, fprinci);
  Application.Run;
end.
