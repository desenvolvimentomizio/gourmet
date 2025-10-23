program GereWhatsEvo;

uses
  madExcept,
  Vcl.Forms,
  ufprincigerewhatsevo in 'ufprincigerewhatsevo.pas' {FprinciWhaGouEVO},
  ufMensagens in 'ufMensagens.pas' {fMensagens};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFprinciWhaGouEVO, FprinciWhaGouEVO);
  Application.Run;
end.
