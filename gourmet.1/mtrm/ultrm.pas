unit ultrm;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratrm, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltrm = class(Tlfrmbase)
    fratrm: Tfratrm;
  private
  public
    { Public declarations }
  end;

var
  ltrm: Tltrm;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltrm := Tltrm.Create(pCargaFrame);
  try
    ltrm.ShowModal;
    Result := ltrm.fratrm.vretorno;
  finally
    ltrm.Free;
  end;
end;

exports formu;

end.
