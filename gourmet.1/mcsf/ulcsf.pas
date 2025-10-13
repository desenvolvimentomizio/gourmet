unit ulcsf;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufracsf, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlcsf = class(Tlfrmbase)
    fracsf: Tfracsf;
  private
  public
    { Public declarations }
  end;

var
  lcsf: Tlcsf;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lcsf := Tlcsf.Create(pCargaFrame);
  try
    lcsf.ShowModal;
    Result := lcsf.fracsf.vretorno;
  finally
    lcsf.Free;
  end;
end;

exports formu;

end.
