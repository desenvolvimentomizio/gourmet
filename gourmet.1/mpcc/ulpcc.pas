unit ulpcc;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrapcc, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlpcc = class(Tlfrmbase)
    frapcc: Tfrapcc;
  private
  public
    { Public declarations }
  end;

var
  lpcc: Tlpcc;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lpcc := Tlpcc.Create(pCargaFrame);
  try
    lpcc.ShowModal;
    Result := lpcc.frapcc.vretorno;
  finally
    lpcc.Free;
  end;
end;

exports formu;

end.
