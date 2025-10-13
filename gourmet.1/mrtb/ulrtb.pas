unit ulrtb;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrartb, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlrtb = class(Tlfrmbase)
    frartb: Tfrartb;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lrtb: Tlrtb;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lrtb := Tlrtb.Create(pCargaFrame);
  try
    lrtb.ShowModal;
    Result := lrtb.frartb.vretorno;
  finally
    lrtb.Free;
  end;
end;

exports formu;

end.
