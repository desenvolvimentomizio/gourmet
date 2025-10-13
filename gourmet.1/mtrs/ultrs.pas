unit ultrs;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratrs, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltrs = class(Tlfrmbase)
    fratrs: Tfratrs;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uftrs;

var
  ltrs: Tltrs;

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltrs := Tltrs.Create(pCargaFrame);
  try
    ltrs.ShowModal;
    Result := ltrs.fratrs.vretorno;
  finally
    ltrs.Free;
  end;
end;

exports formu;

end.
