unit ulbrd;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrabrd, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlbrd = class(Tlfrmbase)
    frabrd: Tfrabrd;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lbrd: Tlbrd;

  // In�cio ID do M�dulo lbrd
const
  vPlIdMd = '00.00.00.001-01';

  // Fim ID do M�dulo lbrd

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lbrd := Tlbrd.Create(pCargaFrame);
  try
    lbrd.ShowModal;
    Result := lbrd.frabrd.vretorno;
  finally
    lbrd.Free;
  end;
end;

exports formu;

end.
