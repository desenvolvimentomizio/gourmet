unit ultfp;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratfp, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltfp = class(Tlfrmbase)
    fratfp: Tfratfp;
  private
  public
    { Public declarations }
  end;

var
  ltfp: Tltfp;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltfp := Tltfp.Create(pCargaFrame);
  try
    ltfp.ShowModal;
    Result := ltfp.fratfp.vretorno;
  finally
    ltfp.Free;
  end;
end;

exports formu;

end.
