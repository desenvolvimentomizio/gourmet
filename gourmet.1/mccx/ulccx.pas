unit ulccx;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, ufrabase, ufraccx, uPegaBase;

type
  Tlccx = class(Tlfrmbase)
    fraccx: Tfraccx;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lccx: Tlccx;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  (*
    ** Verifica se tela já está carregada pela aplicação e bloqueia a abertura **
    *** Corrige problemas do Atendimento onde usuário pode pressionar rapidamente tecla de atalho repetidas vezes ***
  *)
  if not(pCargaFrame.AOwner.FindComponent('lccx') = nil) then
    Exit;

  pCargaFrame.Titulo := vPlTitMdl;
  lccx := Tlccx.Create(pCargaFrame);
  try

    lccx.ShowModal;

    Result := lccx.fraccx.vretorno;
  finally
    lccx.Free;
  end;
end;

exports formu;

end.
