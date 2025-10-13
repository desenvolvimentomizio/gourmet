program GereAiqFome;

uses
  madExcept,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  ufprinciaiqgfome in 'ufprinciaiqgfome.pas' {fprinciaiqgfome};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfprinciaiqgfome, fprinciaiqgfome);
  Application.Run;
end.
