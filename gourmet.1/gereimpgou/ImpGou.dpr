program ImpGou;

uses
  madExcept,
  Vcl.Forms,
  ufimpgou in 'ufimpgou.pas' {fimpgou};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfimpgou, fimpgou);
  Application.Run;
end.
