program mizioServerRest;

uses
  System.SysUtils,
  MidasLib,
  Vcl.Forms,
  ufprinciServRest in 'ufprinciServRest.pas' {fprinciServRest} ,
  uSM in 'uSM.pas' {SM: TDSServerModule} ,
  uSC in 'uSC.pas' {SC: TDataModule} ,
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfprinciServRest, fprinciServRest);
  Application.CreateForm(TSC, SC);
  Application.Run;

end.
