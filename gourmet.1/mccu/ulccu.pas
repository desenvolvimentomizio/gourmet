unit ulccu;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraccu, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlccu = class(Tlfrmbase)
    fraccu: Tfraccu;
  private
  public
    { Public declarations }
  end;

var
  lccu: Tlccu;

const
  vplidmd = '02.02.16.002-03';

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lccu := Tlccu.Create(pCargaFrame);
  try
    lccu.ShowModal;
    Result := lccu.fraccu.vretorno;
  finally
    lccu.Free;
  end;
end;

exports formu;

end.
