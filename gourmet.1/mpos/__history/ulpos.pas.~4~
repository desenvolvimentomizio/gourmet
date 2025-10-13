unit ulpos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufrapos,uPegaBase;

type
  Tlpos = class(Tlfrmbase)
    frapos: Tfrapos;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lpos: Tlpos;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lpos := Tlpos.Create(pCargaFrame);
  try
    lpos.ShowModal;
    Result := lpos.frapos.vretorno;
  finally
    lpos.Free;
  end;
end;

exports formu;

end.
