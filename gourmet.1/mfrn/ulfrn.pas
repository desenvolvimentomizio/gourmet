unit ulfrn;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrafrn, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlfrn = class(Tlfrmbase)
    frafrn: Tfrafrn;
  private
  public
    { Public declarations }
  end;

var
  lfrn: Tlfrn;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;

  lfrn := Tlfrn.Create(pCargaFrame);
  lfrn.frafrn.uqtabela.FilterSQL:='etd.tsecodigo<>9';
  try
    lfrn.ShowModal;
    Result := lfrn.frafrn.vretorno;
  finally
    lfrn.Free;
  end;
end;

exports formu;

end.
