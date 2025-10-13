unit ultli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufratli,uPegaBase;

type
  Tltli = class(Tlfrmbase)
    fratli: Tfratli;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltli: Tltli;

implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltli := Tltli.Create(pCargaFrame);
  try

    ltli.ShowModal;
    Result := ltli.fratli.vretorno;
  finally
    ltli.Free;
  end;
end;

exports formu;

end.
