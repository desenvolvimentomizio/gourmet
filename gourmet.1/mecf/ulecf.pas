unit ulecf;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraecf, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlecf = class(Tlfrmbase)
    fraecf: Tfraecf;
  private
  public
    { Public declarations }
  end;

var
  lecf: Tlecf;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lecf := Tlecf.Create(pCargaFrame);
  try
    lecf.ShowModal;
    Result := lecf.fraecf.vretorno;
  finally
    lecf.Free;
  end;
end;

exports formu;

end.
