unit ulcst;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufracst, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlcst = class(Tlfrmbase)
    fracst: Tfracst;
  private
  public
    { Public declarations }
  end;

var
  lcst: Tlcst;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lcst := Tlcst.Create(pCargaFrame);
  try
    lcst.ShowModal;
    Result := lcst.fracst.vretorno;
  finally
    lcst.Free;
  end;
end;

exports formu;

end.
