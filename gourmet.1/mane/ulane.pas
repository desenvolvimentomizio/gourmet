unit ulane;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraane, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlane = class(Tlfrmbase)
    fraane: Tfraane;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lane: Tlane;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lane := Tlane.Create(pCargaFrame);
  try
    lane.ShowModal;
    Result := lane.fraane.vretorno;
  finally
    lane.Free;
  end;
end;

exports formu;

end.
