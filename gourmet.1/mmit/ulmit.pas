unit ulmit;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, uframit, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlmit = class(Tlfrmbase)
    framit: Tframit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lmit: Tlmit;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lmit := Tlmit.Create(pCargaFrame);
  try
    lmit.ShowModal;
    Result := lmit.framit.vretorno;
  finally
    lmit.Free;
  end;
end;

exports formu;

end.
