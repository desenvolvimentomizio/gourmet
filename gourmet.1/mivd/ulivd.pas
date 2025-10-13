unit ulivd;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraivd, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlivd = class(Tlfrmbase)
    fraivd: Tfraivd;
  private
  public
    { Public declarations }
  end;

var
  livd: Tlivd;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  livd := Tlivd.Create(pCargaFrame);
  try
    livd.ShowModal;
    Result := livd.fraivd.vretorno;
  finally
    livd.Free;
  end;
end;

exports formu;

end.
