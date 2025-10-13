unit uliat;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraiat, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tliat = class(Tlfrmbase)
    fraiat: Tfraiat;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  liat: Tliat;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  liat := Tliat.Create(pCargaFrame);
  try
    // liat.fraiat.vChaveMestre := vfiltro;
    liat.ShowModal;
    Result := liat.fraiat.vretorno;
  finally
    liat.Free;
  end;
end;

exports formu;

end.
