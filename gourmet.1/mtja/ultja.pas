unit ultja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufratja, uPegaBase;

type
  Tltja = class(Tlfrmbase)
    fratja: Tfratja;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltja: Tltja;

implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltja := Tltja.Create(pCargaFrame);
  try

    ltja.ShowModal;
    Result := ltja.fratja.vretorno;
  finally
    ltja.Free;
  end;
end;

exports formu;


end.
