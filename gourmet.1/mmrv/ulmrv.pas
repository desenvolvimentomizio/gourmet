unit ulmrv;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, uframrv, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlmrv = class(Tlfrmbase)
    framrv: Tframrv;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lmrv: Tlmrv;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lmrv := Tlmrv.Create(pCargaFrame);
  try
    lmrv.ShowModal;
    Result := lmrv.framrv.vretorno;
  finally
    lmrv.Free;
  end;
end;

exports formu;

end.
