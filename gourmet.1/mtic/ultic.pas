unit ultic;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratic, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltic = class(Tlfrmbase)
    fratic: Tfratic;
  private
  public
    { Public declarations }
  end;

var
  ltic: Tltic;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltic := Tltic.Create(pCargaFrame);
  try
    ltic.ShowModal;
    Result := ltic.fratic.vretorno;
  finally
    ltic.Free;
  end;
end;

exports formu;

end.
