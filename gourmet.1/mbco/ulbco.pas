unit ulbco;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.Forms, ulfrmbase, ufrabase, ufrabco,
  Vcl.StdCtrls, Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, Uni,
  uPegaBase;

type
  Tlbco = class(Tlfrmbase)
    frabco: Tfrabco;
  private
  public
    { Public declarations }
  end;

var
  lbco: Tlbco;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lbco := Tlbco.Create(pCargaFrame);
  try
    lbco.ShowModal;
    Result := lbco.frabco.vretorno;
  finally
    lbco.Free;
  end;
end;

exports formu;

end.
