unit ultip;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratip, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltip = class(Tlfrmbase)
    fratip: Tfratip;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltip: Tltip;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltip := Tltip.Create(pCargaFrame);
  try
    ltip.ShowModal;
    Result := ltip.fratip.vretorno;
  finally
    ltip.Free;
  end;
end;

exports formu;

end.
