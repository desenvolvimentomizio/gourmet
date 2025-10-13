program GereImpGou2019;

uses
  Vcl.Forms,
  ufPrinciGereImpGouu in 'ufPrinciGereImpGouu.pas' {fPrinciGereImpGou};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrinciGereImpGou, fPrinciGereImpGou);
  Application.Run;
end.
