unit ultci;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratci, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltci = class(Tlfrmbase)
    fratci: Tfratci;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltci: Tltci;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltci := Tltci.Create(pCargaFrame);
  try
    ltci.ShowModal;
    Result := ltci.fratci.vretorno;
  finally
    ltci.Free;
  end;
end;

exports formu;

end.
