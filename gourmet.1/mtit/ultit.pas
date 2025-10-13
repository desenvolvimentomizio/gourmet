unit ultit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, ufrabase, ufratit,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, uPegaBase;

type
  Tltit = class(Tlfrmbase)
    fratit: Tfratit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltit: Tltit;

implementation

{$R *.dfm}
function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltit := Tltit.Create(pCargaFrame);
  try

    ltit.ShowModal;
    Result := ltit.fratit.vretorno;
  finally
    ltit.Free;
  end;
end;

exports formu;

end.
