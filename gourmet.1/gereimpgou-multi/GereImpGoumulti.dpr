program GereImpGoumulti;

uses
  madExcept,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  ufprincigereimpgou in 'ufprincigereimpgou.pas' {fPrinciGereImpGou},
  uImpressorThread in 'uImpressorThread.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrinciGereImpGou, fPrinciGereImpGou);
  Application.Run;
end.
