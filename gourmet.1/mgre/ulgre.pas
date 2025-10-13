unit ulgre;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufragre, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlgre = class(Tlfrmbase)
    fragre: Tfragre;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lgre: Tlgre;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lgre := Tlgre.Create(pCargaFrame);
  try
    lgre.ShowModal;
    Result := lgre.fragre.vretorno;
  finally
    lgre.Free;
  end;
end;

exports formu;

end.
