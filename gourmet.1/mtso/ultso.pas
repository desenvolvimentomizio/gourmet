unit ultso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufratso, ufrabase,uPegaBase;

type
  Tltso = class(Tlfrmbase)
    fratso: Tfratso;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltso: Tltso;

implementation



{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltso := Tltso.Create(pCargaFrame);
  try
    ltso.ShowModal;
    Result := ltso.fratso.vretorno;
  finally
    ltso.Free;
  end;
end;

exports formu;

end.
