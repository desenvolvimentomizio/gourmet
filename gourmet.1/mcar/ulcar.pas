unit ulcar;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufracar, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlcar = class(Tlfrmbase)
    fracar: Tfracar;
  private
  public
    { Public declarations }
  end;

var
  lcar: Tlcar;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lcar := Tlcar.Create(pCargaFrame);
  try
    lcar.ShowModal;
    Result := lcar.fracar.vretorno;
  finally
    lcar.Free;
  end;
end;

Exports formu;

end.
