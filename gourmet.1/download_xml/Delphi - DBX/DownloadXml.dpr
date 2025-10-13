program DownloadXml;

uses
  Vcl.Forms,
  MidasLib,
  uXML in 'uXML.pas' {frmxml},
  dXML in 'dXML.pas' {dtmxml: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdtmxml, dtmxml);
  Application.CreateForm(Tfrmxml, frmxml);
  Application.Run;
end.
