unit ulfnc;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrafnc, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlfnc = class(Tlfrmbase)
    frafnc: Tfrafnc;
  private
  public
    { Public declarations }
  end;

var
  lfnc: Tlfnc;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lfnc := Tlfnc.Create(pCargaFrame);
  try
    lfnc.ShowModal;
    Result := lfnc.frafnc.vretorno;
  finally
    lfnc.Free;
  end;
end;

exports formu;

end.
