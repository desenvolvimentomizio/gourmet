program AtendSen;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufPrinciSenhas in 'ufPrinciSenhas.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Portrait, TFormOrientation.InvertedPortrait, TFormOrientation.Landscape, TFormOrientation.InvertedLandscape];
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
