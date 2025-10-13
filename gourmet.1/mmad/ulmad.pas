unit ulmad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, uPegaBase, ufrabase, uframad;

type
  Tlmad = class(Tlfrmbase)
    framad: Tframad;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lmad: Tlmad;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lmad := Tlmad.Create(pCargaFrame);
  try
    lmad.ShowModal;
    Result := lmad.framad.vretorno;
  finally
    lmad.Free;
  end;
end;

exports formu;

end.
