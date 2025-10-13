program GourmetPainelIntegracao;

uses
  Vcl.Forms,
  ufpainelInegracao in 'ufpainelInegracao.pas' {fpainelInegracao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfpainelInegracao, fpainelInegracao);
  Application.Run;
end.
