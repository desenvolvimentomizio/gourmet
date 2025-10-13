unit ulivu;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraivu, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlivu = class(Tlfrmbase)
    fraivu: Tfraivu;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  livu: Tlivu;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  livu := Tlivu.Create(pCargaFrame);
  try
    livu.ShowModal;
    Result := livu.fraivu.vretorno;
  finally
    livu.Free;
  end;
end;

exports formu;

end.
