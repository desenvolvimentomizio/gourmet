unit ulphg;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraphg, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, System.SysUtils,
  uPegaBase;

type
  Tlphg = class(Tlfrmbase)
    fraphg: Tfraphg;
  private
  public
    { Public declarations }
  end;

var
  lphg: Tlphg;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lphg := Tlphg.Create(pCargaFrame);
  try
    lphg.ShowModal;
    Result := lphg.fraphg.vretorno;
  finally
    lphg.Free;
  end;
end;

exports formu;

end.
