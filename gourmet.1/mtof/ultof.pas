unit ultof;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratof, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, System.SysUtils,
  uPegaBase;

type
  Tltof = class(Tlfrmbase)
    fratof: Tfratof;
  private
  public
    { Public declarations }
  end;

var
  ltof: Tltof;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltof := Tltof.Create(pCargaFrame);
  try
    ltof.ShowModal;
    Result := ltof.fratof.vretorno;
  finally
    ltof.Free;
  end;
end;

exports formu;

end.
