program atenresttable;

{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  ufprinciatentable in 'ufprinciatentable.pas' {fprinciatentable},
  ufuncoes in 'ufuncoes.pas',
  ufdor in 'ufdor.pas' {fdor};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfprinciatentable, fprinciatentable);
  Application.CreateForm(Tfdor, fdor);
  Application.Run;
end.
