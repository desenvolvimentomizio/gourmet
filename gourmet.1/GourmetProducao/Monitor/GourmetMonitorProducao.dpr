program GourmetMonitorProducao;

uses
  madExcept,
  Vcl.Forms,
  ufPrinciMonitorProducao in 'ufPrinciMonitorProducao.pas' {fPrinciMonitorProducao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrinciMonitorProducao, fPrinciMonitorProducao);
  Application.Run;
end.
