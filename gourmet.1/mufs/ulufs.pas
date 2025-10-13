unit ulufs;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraufs, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlufs = class(Tlfrmbase)
    fraufs: Tfraufs;
  private
  public
    { Public declarations }
  end;

var
  lufs: Tlufs;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lufs := Tlufs.Create(pCargaFrame);
  try
    lufs.ShowModal;
    Result := lufs.fraufs.vretorno;
  finally
    lufs.Free;
  end;
end;

exports formu;

end.
