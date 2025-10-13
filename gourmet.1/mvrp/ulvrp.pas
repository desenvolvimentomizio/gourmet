unit ulvrp;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufravrp, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlvrp = class(Tlfrmbase)
    fravrp: Tfravrp;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lvrp: Tlvrp;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lvrp := Tlvrp.Create(pCargaFrame);
  try
    lvrp.ShowModal;
    Result := lvrp.fravrp.vretorno;
  finally
    lvrp.Free;
  end;
end;

exports formu;

end.
