unit ulgra;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufragra, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlgra = class(Tlfrmbase)
    fragra: Tfragra;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lgra: Tlgra;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lgra := Tlgra.Create(pCargaFrame);
  try
    lgra.ShowModal;
    Result := lgra.fragra.vretorno;
  finally
    lgra.Free;
  end;
end;

exports formu;

end.
