unit ulatr;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraatr, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlatr = class(Tlfrmbase)
    fraatr: Tfraatr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  latr: Tlatr;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  latr := Tlatr.Create(pCargaFrame);
  try
    latr.ShowModal;
    Result := latr.fraatr.vretorno;
  finally
    latr.Free;
  end;
end;

exports formu;

end.
