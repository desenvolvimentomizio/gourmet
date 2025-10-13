unit ulfla;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrafla, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlfla = class(Tlfrmbase)
    frafla: Tfrafla;
  private
  public
    { Public declarations }
  end;

var
  lfla: Tlfla;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lfla := Tlfla.Create(pCargaFrame);
  try
    lfla.ShowModal;
    Result := lfla.frafla.vretorno;
  finally
    lfla.Free;
  end;
end;

exports formu;

end.
