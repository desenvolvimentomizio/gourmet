program mizio;

uses
  Vcl.Forms,
  ufprinci in 'ufprinci.pas' {fprinci},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Light Slate');
  Application.CreateForm(Tfprinci, fprinci);
  Application.Run;
end.
