unit ulmnc;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, uframnc, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlmnc = class(Tlfrmbase)
    framnc: Tframnc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lmnc: Tlmnc;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lmnc := Tlmnc.Create(pCargaFrame);
  try
    lmnc.ShowModal;
    Result := lmnc.framnc.vretorno;
  finally
    lmnc.Free;
  end;
end;

exports formu;

end.
