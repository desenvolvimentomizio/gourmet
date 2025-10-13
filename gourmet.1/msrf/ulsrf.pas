unit ulsrf;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrasrf, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlsrf = class(Tlfrmbase)
    frasrf: Tfrasrf;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lsrf: Tlsrf;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lsrf := Tlsrf.Create(pCargaFrame);
  try
    lsrf.ShowModal;
    Result := lsrf.frasrf.vretorno;
  finally
    lsrf.Free;
  end;
end;

exports formu;

end.
