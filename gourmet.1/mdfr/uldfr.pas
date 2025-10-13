unit uldfr;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufradfr, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tldfr = class(Tlfrmbase)
    fradfr: Tfradfr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ldfr: Tldfr;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ldfr := Tldfr.Create(pCargaFrame);
  try
    ldfr.ShowModal;
    Result := ldfr.fradfr.vretorno;
  finally
    ldfr.Free;
  end;
end;

exports formu;

end.
