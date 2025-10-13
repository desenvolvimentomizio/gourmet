program GereImpGou;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Winapi.Windows,
  Vcl.Forms,
  ufprincigereimpgou in 'ufprincigereimpgou.pas' {fPrinciGereImpGou};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrinciGereImpGou, fPrinciGereImpGou);
  Application.Run;
end.
