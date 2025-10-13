unit ulref;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraref, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlref = class(Tlfrmbase)
    fraref: Tfraref;
  private
  public
    { Public declarations }
  end;

var
  lref: Tlref;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lref := Tlref.Create(pCargaFrame);
  try
    lref.ShowModal;
    Result := lref.fraref.vretorno;
  finally
    lref.Free;
  end;
end;

exports formu;

end.
