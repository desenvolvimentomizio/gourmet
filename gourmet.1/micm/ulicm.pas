unit ulicm;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraicm, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlicm = class(Tlfrmbase)
    fraicm: Tfraicm;
  private
  public
    { Public declarations }
  end;

var
  licm: Tlicm;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  licm := Tlicm.Create(pCargaFrame);
  try
    licm.ShowModal;
    Result := licm.fraicm.vretorno;
  finally
    licm.Free;
  end;
end;

exports formu;

end.
