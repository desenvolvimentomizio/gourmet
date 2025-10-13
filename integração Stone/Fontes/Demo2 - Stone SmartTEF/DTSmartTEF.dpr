program DTSmartTEF;

uses
  System.StartUpCopy,
  FMX.Forms,
  FMX.Skia,
  UntPDVApi in 'UntPDVApi.pas' {FrmPDVApi},
  untSTONEIntent in 'untSTONEIntent.pas',
  uFancyDialog in 'uFancyDialog.pas',
  USession in 'USession.pas';

{$R *.res}

begin
  GlobalUseSkia := false;
  Application.Initialize;
  Application.CreateForm(TFrmPDVApi, FrmPDVApi);
  Application.Run;
end.
