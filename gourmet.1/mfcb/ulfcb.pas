unit ulfcb;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrafcb, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlfcb = class(Tlfrmbase)
    frafcb: Tfrafcb;
  private
  public
    { Public declarations }
  end;

var
  lfcb: Tlfcb;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lfcb := Tlfcb.Create(pCargaFrame);
  try
    lfcb.ShowModal;
    Result := lfcb.frafcb.vretorno;
  finally
    lfcb.Free;
  end;
end;

exports formu;

end.
