program testar;

uses
  Vcl.Forms,
  ufcfv in 'ufcfv.pas' {fcfv};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfcfv, fcfv);
  Application.Run;
end.
