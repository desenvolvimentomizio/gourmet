unit ulcfo;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufracfo, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlcfo = class(Tlfrmbase)
    fracfo: Tfracfo;
  private
  public
    { Public declarations }
  end;

var
  lcfo: Tlcfo;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lcfo := Tlcfo.Create(pCargaFrame);
  try
    lcfo.ShowModal;
    Result := lcfo.fracfo.vretorno;
  finally
    lcfo.Free;
  end;
end;

exports formu;

end.
