unit ulssn;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrassn, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlssn = class(Tlfrmbase)
    frassn: Tfrassn;
  private
  public
    { Public declarations }
  end;

var
  lssn: Tlssn;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lssn := Tlssn.Create(pCargaFrame);
  try
    lssn.ShowModal;
    Result := lssn.frassn.vretorno;
  finally
    lssn.Free;
  end;
end;

exports formu;

end.
