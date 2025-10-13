unit ulcsv;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufracsv, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlcsv = class(Tlfrmbase)
    fracsv: Tfracsv;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lcsv: Tlcsv;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lcsv := Tlcsv.Create(pCargaFrame);
  try
    lcsv.ShowModal;
    Result := lcsv.fracsv.vretorno;
  finally
    lcsv.Free;
  end;
end;

exports formu;

end.
