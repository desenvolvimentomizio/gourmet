unit ulvnd;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufravnd, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlvnd = class(Tlfrmbase)
    fravnd: Tfravnd;

  private
  public
    { Public declarations }
  end;

var
  lvnd: Tlvnd;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lvnd := Tlvnd.Create(pCargaFrame);
  try
    lvnd.ShowModal;
    Result := lvnd.fravnd.vretorno;
  finally
    lvnd.Free;
  end;
end;

exports formu;

end.
