unit uliga;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraiga, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tliga = class(Tlfrmbase)
    fraiga: Tfraiga;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  liga: Tliga;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  liga := Tliga.Create(pCargaFrame);
  try
    liga.ShowModal;
    Result := liga.fraiga.vretorno;
  finally
    liga.Free;
  end;
end;

exports formu;

end.
