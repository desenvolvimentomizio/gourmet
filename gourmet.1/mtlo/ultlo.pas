unit ultlo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufratlo, uPegaBase;

type
  Tltlo = class(Tlfrmbase)
   fratlo: Tfratlo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltlo: Tltlo;

implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltlo := Tltlo.Create(pCargaFrame);
  try

    ltlo.ShowModal;
    Result := ltlo.fratlo.vretorno;
  finally
    ltlo.Free;
  end;
end;

exports formu;


end.
