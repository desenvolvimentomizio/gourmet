unit ulfra;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufrafra, uni, uPegaBase;

type
  Tlfra = class(Tlfrmbase)
    frafra: Tfrafra;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lfra: Tlfra;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lfra := Tlfra.Create(pCargaFrame);
  try
    lfra.ShowModal;
    Result := lfra.frafra.vretorno;
  finally
    lfra.Free;
  end;
end;

exports formu;

end.
