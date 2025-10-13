unit ulsea;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrasea, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlsea = class(Tlfrmbase)
    frasea: Tfrasea;
  private
  public
    { Public declarations }
  end;

var
  lsea: Tlsea;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lsea := Tlsea.Create(pCargaFrame);
  try
    lsea.ShowModal;
    Result := lsea.frasea.vretorno;
  finally
    lsea.Free;
  end;
end;

exports formu;

end.
