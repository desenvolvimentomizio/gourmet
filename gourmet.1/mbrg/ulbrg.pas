unit ulbrg;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrabrg, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlbrg = class(Tlfrmbase)
    frabrg: Tfrabrg;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lbrg: Tlbrg;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lbrg := Tlbrg.Create(pCargaFrame);
  try
    lbrg.ShowModal;
    Result := lbrg.frabrg.vretorno;
  finally
    lbrg.Free;
  end;
end;

exports formu;

end.
