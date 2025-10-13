unit ulnrt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, ufrabase, ufranrt, uPegaBase,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tlnrt = class(Tlfrmbase)
    franrt: Tfranrt;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lnrt: Tlnrt;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lnrt := Tlnrt.Create(pCargaFrame);
  try
    lnrt.ShowModal;
    Result := lnrt.franrt.vretorno;
  finally
    lnrt.Free;
  end;
end;

exports formu;


end.
