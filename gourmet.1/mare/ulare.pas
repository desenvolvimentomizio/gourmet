unit ulare;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraare, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlare = class(Tlfrmbase)
    fraare: Tfraare;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lare: Tlare;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lare := Tlare.Create(pCargaFrame);
  try
    lare.ShowModal;
    Result := lare.fraare.vretorno;
  finally
    lare.Free;
  end;
end;

exports formu;

end.
