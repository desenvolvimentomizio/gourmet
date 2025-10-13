unit ulsrv;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrasrv, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlsrv = class(Tlfrmbase)
    frasrv: Tfrasrv;

  private
  public
    { Public declarations }
  end;

var
  lsrv: Tlsrv;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lsrv := Tlsrv.Create(pCargaFrame);
  try
    lsrv.ShowModal;
    Result := lsrv.frasrv.vretorno;
  finally
    lsrv.Free;
  end;
end;

exports formu;

end.
