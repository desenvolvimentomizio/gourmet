unit ultrb;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratrb, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltrb = class(Tlfrmbase)
    fratrb: Tfratrb;
  private
  public
    { Public declarations }
  end;

var
  ltrb: Tltrb;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltrb := Tltrb.Create(pCargaFrame);
  try
    ltrb.ShowModal;
    Result := ltrb.fratrb.vretorno;
  finally
    ltrb.Free;
  end;
end;

exports formu;

end.
