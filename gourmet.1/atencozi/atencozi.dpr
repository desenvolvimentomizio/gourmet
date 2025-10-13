program atencozi;

uses
  Vcl.Forms,
  ufuncoes in '..\base\ufuncoes.pas',
  ufajustapreco in '..\aten2013\ufajustapreco.pas' {fajustapreco},
  ufcliorc in '..\aten2013\ufcliorc.pas' {fcliorc},
  ufitoproservico in '..\aten2013\ufitoproservico.pas' {fitoproservico},
  ufivlinhacomplpro in '..\aten2013\ufivlinhacomplpro.pas' {fivlinhacomplpro},
  uforcfpagto in '..\aten2013\uforcfpagto.pas' {forcfpagto},
  ufprinci in '..\aten2013\ufprinci.pas' {fprinciAten},
  ulcolaboradores in '..\aten2013\ulcolaboradores.pas' {lcolaboradores},
  ufprincirest in 'ufprincirest.pas' {fprincirest},
  uThAjustaMesas in 'uThAjustaMesas.pas',
  ulunidades in '..\aten2013\ulunidades.pas' {lunidades},
  uBuscaProduto in '..\base\uBuscaProduto.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfprincirest, fprincirest);
  Application.CreateForm(Tlunidades, lunidades);
  Application.Run;
end.
