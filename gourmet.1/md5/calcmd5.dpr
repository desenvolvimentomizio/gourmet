program calcmd5;

uses
  Vcl.Forms,
  ufcalcmd5 in 'ufcalcmd5.pas' {fcalcmd5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfcalcmd5, fcalcmd5);
  Application.Run;
end.
