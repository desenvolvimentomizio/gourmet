unit ulivt;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraivt, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlivt = class(Tlfrmbase)
    fraivt: Tfraivt;
  private
  public
    { Public declarations }
  end;

var
  livt: Tlivt;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  livt := Tlivt.Create(pCargaFrame);
  try
    livt.ShowModal;
    Result := livt.fraivt.vretorno;
  finally
    livt.Free;
  end;
end;

exports formu;

end.
