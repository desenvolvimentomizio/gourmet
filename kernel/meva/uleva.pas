unit uleva;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraeva, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tleva = class(Tlfrmbase)
    fraeva: Tfraeva;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  leva: Tleva;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  leva := Tleva.Create(pCargaFrame);
  try
    leva.ShowModal;
    Result := leva.fraeva.vretorno;
  finally
    leva.Free;
  end;
end;

exports formu;

end.
