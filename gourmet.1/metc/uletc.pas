unit uletc;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraetc, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tletc = class(Tlfrmbase)
    fraetc: Tfraetc;
  private
  public
    { Public declarations }
  end;

var
  letc: Tletc;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  letc := Tletc.Create(pCargaFrame);
  try
    letc.ShowModal;
    Result := letc.fraetc.vretorno;
  finally
    letc.Free;
  end;
end;

exports formu;

end.
