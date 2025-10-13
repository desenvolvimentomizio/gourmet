unit ulmdc;

interface

uses
  Winapi.Windows, System.SysUtils, Vcl.Forms, ulfrmbase, ufrabase, uframdc,
  Vcl.StdCtrls, Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls,
  uPegaBase;

type
  Tlmdc = class(Tlfrmbase)
    framdc: Tframdc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lmdc: Tlmdc;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lmdc := Tlmdc.Create(pCargaFrame);
  try
    lmdc.ShowModal;
    Result := lmdc.framdc.vretorno;
  finally
    lmdc.Free;
  end;
end;

exports formu;

end.
