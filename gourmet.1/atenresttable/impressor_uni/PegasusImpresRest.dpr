program mizioImpresRest;

uses
  System.SysUtils,
  MidasLib,
  Vcl.Forms,
  ufprinciImpresRest in 'ufprinciImpresRest.pas' {fprinciImpresRest},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfprinciImpresRest, fprinciImpresRest);
  Application.Run;

end.
