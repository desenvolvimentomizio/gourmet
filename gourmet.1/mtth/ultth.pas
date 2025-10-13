unit ultth;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, ufrabase, ufratth,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,uPegaBase;

type
  Tltth = class(Tlfrmbase)
    fratth: Tfratth;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltth: Tltth;

implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltth := Tltth.Create(pCargaFrame);
  try

    ltth.ShowModal;
    Result := ltth.fratth.vretorno;
  finally
    ltth.Free;
  end;
end;

exports formu;

end.
