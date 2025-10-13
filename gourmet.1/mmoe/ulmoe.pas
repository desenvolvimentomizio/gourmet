unit ulmoe;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, uframoe, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlmoe = class(Tlfrmbase)
    framoe: Tframoe;
  private
  public
    { Public declarations }
  end;

var
  lmoe: Tlmoe;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lmoe := Tlmoe.Create(pCargaFrame);
  try
    lmoe.ShowModal;
    Result := lmoe.framoe.vretorno;
  finally
    lmoe.Free;
  end;
end;

exports formu;

end.
