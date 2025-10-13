unit ultpe;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratpe, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltpe = class(Tlfrmbase)
    fratpe: Tfratpe;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltpe: Tltpe;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltpe := Tltpe.Create(pCargaFrame);
  try
    ltpe.ShowModal;
    Result := ltpe.fratpe.vretorno;
  finally
    ltpe.Free;
  end;
end;

exports formu;

end.
