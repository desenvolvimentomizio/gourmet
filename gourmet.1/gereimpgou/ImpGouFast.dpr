program ImpGouFast;

uses
  madExcept,
  Vcl.Forms,
  ufimpgoufast in 'ufimpgoufast.pas' {fimpgoufast};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfimpgoufast, fimpgoufast);
  Application.Run;
end.
