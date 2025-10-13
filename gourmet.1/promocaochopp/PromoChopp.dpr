program PromoChopp;

uses
  Vcl.Forms,
  ufprincipromochopp in 'ufprincipromochopp.pas' {fprincipromochopp};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfprincipromochopp, fprincipromochopp);
  Application.Run;
end.
