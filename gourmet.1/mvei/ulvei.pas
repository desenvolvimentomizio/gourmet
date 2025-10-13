unit ulvei;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufravei, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlvei = class(Tlfrmbase)
    fravei: Tfravei;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lvei: Tlvei;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lvei := Tlvei.Create(pCargaFrame);
  try
    lvei.ShowModal;
    Result := lvei.fravei.vretorno;
  finally
    lvei.Free;
  end;
end;

exports formu;

end.
