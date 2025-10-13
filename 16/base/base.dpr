program base;

uses
  Vcl.Forms,
  ufprinci in 'ufprinci.pas' {fprinci},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Smokey Quartz Kamri');
  Application.CreateForm(Tfprinci, fprinci);
  Application.Run;
end.
