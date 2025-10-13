unit uledr;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.Forms, ulfrmbase, ufrabase, ufraedr,
  Vcl.StdCtrls, Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, Uni,
  uPegaBase;

type
  Tledr = class(Tlfrmbase)
    fraedr: Tfraedr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ledr: Tledr;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ledr := Tledr.Create(pCargaFrame);
  try
    ledr.ShowModal;
    Result := ledr.fraedr.vretorno;
  finally
    ledr.Free;
  end;
end;
exports formu;

end.
