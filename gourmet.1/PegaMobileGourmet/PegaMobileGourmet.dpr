program PegaMobileGourmet;

uses
  System.StartUpCopy,
  FMX.Forms,
  uFPrinciMobile in 'uFPrinciMobile.pas' {fPrinciGourmetMobile},
  uDmdados in 'uDmdados.pas' {DMDados: TDataModule},
  ufItem in 'ufItem.pas' {fItem},
  uRCCDados in 'uRCCDados.pas',
  uRCMDados in 'uRCMDados.pas' {RCMDados: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfPrinciGourmetMobile, fPrinciGourmetMobile);
  Application.CreateForm(TDMDados, DMDados);
  Application.CreateForm(TfItem, fItem);
  Application.CreateForm(TRCMDados, RCMDados);
  Application.Run;
end.
