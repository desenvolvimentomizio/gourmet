unit ulrel;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrarel, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlrel = class(Tlfrmbase)
    frarel: Tfrarel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lrel: Tlrel;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lrel := Tlrel.Create(pCargaFrame);
  try
    lrel.ShowModal;
    Result := lrel.frarel.vretorno;
  finally
    lrel.Free;
  end;
end;

exports formu;

end.
