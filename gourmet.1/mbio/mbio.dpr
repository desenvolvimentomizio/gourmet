program mbio;

uses
  Vcl.Forms,
  UBioTxt in 'UBioTxt.pas',
  UBiometria in 'UBiometria.pas' {FBiometria};

type
  Interface1 = interface
  end;
{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFBiometria, FBiometria);
  Application.Run;
end.
