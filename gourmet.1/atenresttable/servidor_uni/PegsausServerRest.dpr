program PegsausServerRest;

uses
  Vcl.Forms,
  ufprinciServRest in 'ufprinciServRest.pas' {fprinciServRest},
  uSM in 'uSM.pas' {SM: TDSServerModule},
  uSC in 'uSC.pas' {SC: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfprinciServRest, fprinciServRest);
  Application.CreateForm(TSC, SC);
  Application.Run;
end.

