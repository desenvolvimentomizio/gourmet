program DownloadDFe;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, frm_xml, dtm_xml, memdslaz, sqlite3laz
  { you can add units after this };

{$R *.res}

begin
  Application.Title:='Download DFe';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(Tdtmxml, dtmxml);
  Application.CreateForm(Tfrmxml, frmxml);
  Application.Run;
end.

