program PGSISProcessos;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufprinci in 'ufprinci.pas' {Form1},
  uClientClasses in 'uClientClasses.pas',
  Androidapi.JNI.Toast in 'Androidapi.JNI.Toast.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Portrait, TFormOrientation.InvertedPortrait, TFormOrientation.Landscape, TFormOrientation.InvertedLandscape];
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
