unit ulprg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, ufrabase, ufraprg,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, uPegaBase;

type
  Tlprg = class(Tlfrmbase)
    fraprg: Tfraprg;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lprg: Tlprg;

implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lprg := Tlprg.Create(pCargaFrame);
  try
    lprg.ShowModal;
    Result := lprg.fraprg.vretorno;
  finally
    lprg.Free;
  end;
end;

exports formu;

end.
