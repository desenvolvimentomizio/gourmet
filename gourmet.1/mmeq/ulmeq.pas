unit ulmeq;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, uframeq, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlmeq = class(Tlfrmbase)
    frameq: Tframeq;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lmeq: Tlmeq;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lmeq := Tlmeq.Create(pCargaFrame);
  try
    lmeq.ShowModal;
    Result := lmeq.frameq.vretorno;
  finally
    lmeq.Free;
  end;
end;

exports formu;

end.
