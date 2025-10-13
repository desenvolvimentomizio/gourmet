unit ulfab;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrafab, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlfab = class(Tlfrmbase)
    frafab: Tfrafab;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lfab: Tlfab;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lfab := Tlfab.Create(pCargaFrame);
  try
    lfab.ShowModal;
    Result := lfab.frafab.vretorno;
  finally
    lfab.Free;
  end;
end;

exports formu;

end.
