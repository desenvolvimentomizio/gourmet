program Tablets;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufprinci in 'ufprinci.pas' {fprinci};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfprinci, fprinci);
  Application.Run;
end.
