unit ulclc;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraclc, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlclc = class(Tlfrmbase)
    fraclc: Tfraclc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lclc: Tlclc;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lclc := Tlclc.Create(pCargaFrame);
  try
    lclc.ShowModal;
    Result := lclc.fraclc.vretorno;
  finally
    lclc.Free;
  end;
end;

exports formu;

end.
