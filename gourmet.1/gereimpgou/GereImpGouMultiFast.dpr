program GereImpGouMultiFast;

uses
  madExcept,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  ufprincigereimpgoufast in 'ufprincigereimpgoufast.pas' {fprincigereimpgoufast},
  ufprincigereimpgoufast02 in 'ufprincigereimpgoufast02.pas' {fprincigereimpgoufast02},
  ufprincigereimpgoufast03 in 'ufprincigereimpgoufast03.pas' {fprincigereimpgoufast03},
  ufprincigereimpgoufast01 in 'ufprincigereimpgoufast01.pas' {fprincigereimpgoufast01};

{$R *.res}

begin
   ReportMemoryLeaksOnShutdown := DebugHook <> 0;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfprincigereimpgoufast, fprincigereimpgoufast);
  Application.CreateForm(Tfprincigereimpgoufast01, fprincigereimpgoufast01);
  Application.Run;
end.
