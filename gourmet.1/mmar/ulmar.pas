unit ulmar;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, uframar, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlmar = class(Tlfrmbase)
    framar: Tframar;
  private
  public
    { Public declarations }
  end;

var
  lmar: Tlmar;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lmar := Tlmar.Create(pCargaFrame);
  try
    lmar.ShowModal;
    Result := lmar.framar.vretorno;
  finally
    lmar.Free;
  end;
end;

exports formu;

end.
