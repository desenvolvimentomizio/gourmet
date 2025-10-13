unit ultom;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratom, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltom = class(Tlfrmbase)
    fratom: Tfratom;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltom: Tltom;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltom := Tltom.Create(pCargaFrame);
  try
    ltom.ShowModal;
    Result := ltom.fratom.vretorno;
  finally
    ltom.Free;
  end;
end;

exports formu;

end.
