program MonitorProducao;

uses
  madExcept,
  madListHardware,
  madListProcesses,
  madListModules,
  System.StartUpCopy,
  FMX.Forms,
  uFprinciMonitorProducao in 'uFprinciMonitorProducao.pas' {FprinciMonitorProducao},
  uClientClasses in 'uClientClasses.pas',
  uClientModule in 'uClientModule.pas' {ClientModule: TDataModule},
  uDMDados in 'uDMDados.pas' {DMDados: TDataModule},
  MultiDetailAppearanceU in 'C:\componentes\ListView-ListViewMultiDetailAppearance\MultiDetailAppearanceU.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFprinciMonitorProducao, FprinciMonitorProducao);
  Application.CreateForm(TClientModule, ClientModule);
  Application.CreateForm(TDMDados, DMDados);
  Application.Run;
end.
