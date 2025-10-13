unit ulpde;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrapde, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlpde = class(Tlfrmbase)
    frapde: Tfrapde;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lpde: Tlpde;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lpde := Tlpde.Create(pCargaFrame);
  try
    lpde.ShowModal;
    Result := lpde.frapde.vretorno;
  finally
    lpde.Free;
  end;
end;

exports formu;

end.
