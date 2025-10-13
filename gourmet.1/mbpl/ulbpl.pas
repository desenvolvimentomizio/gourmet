unit ulbpl;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrabpl, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlbpl = class(Tlfrmbase)
    frabpl: Tfrabpl;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lbpl: Tlbpl;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lbpl := Tlbpl.Create(pCargaFrame);
  try
    lbpl.ShowModal;
    Result := lbpl.frabpl.vretorno;
  finally
    lbpl.Free;
  end;
end;

exports formu;

end.
