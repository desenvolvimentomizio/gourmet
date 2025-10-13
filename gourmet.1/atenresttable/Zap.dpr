program Zap;



uses
  System.StartUpCopy,
  {$IFDEF MSWINDOWS}
  MidasLib,
  {$ENDIF }
  FMX.Forms,
  ufprinciatentable in 'ufprinciatentable.pas' {fprinciatentable},
  uCC in 'uCC.pas',
  uCm in 'uCm.pas' {CM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.soPortrait];
  Application.CreateForm(Tfprinciatentable, fprinciatentable);
  Application.CreateForm(TCM, CM);
  Application.Run;
end.
