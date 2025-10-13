unit ulcre;

interface

uses
  Winapi.Windows, Vcl.Forms, ulrfi, ufrabase, ufrarfi, ufracre, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlcre = class(Tlrfi)
    fracre: Tfracre;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lcre: Tlcre;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lcre := Tlcre.Create(pCargaFrame);
  try
    lcre.ShowModal;
    Result := lcre.fracre.vretorno;
  finally
    lcre.Free;
  end;
end;

exports formu;

end.
