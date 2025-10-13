program SPEDFiscal;

uses
  Forms,
  ufuncoes in 'ufuncoes.pas',
  Frm_SPEDFiscal in 'Frm_SPEDFiscal.pas' {FrmSPEDFiscal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmSPEDFiscal, FrmSPEDFiscal);
  Application.Run;

end.
