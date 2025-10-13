program MonitorIntegracao;

uses
  madExcept,
  Vcl.Forms,
  uFprinciMonitorIntegracao in 'uFprinciMonitorIntegracao.pas' {fMonitorIntegracao},
  AIQCFG in 'AIQCFG.pas',
  uDMAIQ in 'uDMAIQ.pas' {DMAIQ: TDataModule},
  constants in 'constants.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMonitorIntegracao, fMonitorIntegracao);
  Application.CreateForm(TDMAIQ, DMAIQ);
  Application.Run;
end.
