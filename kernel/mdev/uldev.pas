unit uldev;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufradev, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tldev = class(Tlfrmbase)
    fradev: Tfradev;

  private
  public
    { Public declarations }
  end;

var
  ldev: Tldev;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ldev := Tldev.Create(pCargaFrame);
  try
    ldev.ShowModal;
    Result := ldev.fradev.vretorno;
  finally
    ldev.Free;
  end;
end;

exports formu;

end.
