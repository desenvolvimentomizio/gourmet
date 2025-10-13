unit ulpop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufrapop, uPegaBase;

type
  Tlpop = class(Tlfrmbase)
    frapop: Tfrapop;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lpop: Tlpop;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lpop := Tlpop.Create(pCargaFrame);
  try

    lpop.ShowModal;
    Result := lpop.frapop.vretorno;
  finally
    lpop.Free;
  end;
end;

exports formu;

end.
