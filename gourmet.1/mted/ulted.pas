unit ulted;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrated, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlted = class(Tlfrmbase)
    frated: Tfrated;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lted: Tlted;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lted := Tlted.Create(pCargaFrame);
  try
    lted.ShowModal;
    Result := lted.frated.vretorno;
  finally
    lted.Free;
  end;
end;

exports formu;

end.
