program MizioWhats;

uses
  Vcl.Forms,
  uFprinciMizioWhats in 'uFprinciMizioWhats.pas' {FprinciMizioWhats};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFprinciMizioWhats, FprinciMizioWhats);
  Application.Run;
end.
