unit ultch;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratch, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltch = class(Tlfrmbase)
    fratch: Tfratch;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltch: Tltch;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltch := Tltch.Create(pCargaFrame);
  try
    ltch.ShowModal;
    Result := ltch.fratch.vretorno;
  finally
    ltch.Free;
  end;
end;

exports formu;

end.
