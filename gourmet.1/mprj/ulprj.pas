unit ulprj;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, ufrabase, ufraprj, Vcl.ComCtrls,
  uPegaBase;

type
  Tlprj = class(Tlfrmbase)
    fraprj: Tfraprj;
  private
  public
    { Public declarations }
  end;

var
  lprj: Tlprj;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lprj := Tlprj.Create(pCargaFrame);
  try
    lprj.ShowModal;
    Result := lprj.fraprj.vretorno;
  finally
    lprj.Free;
  end;
end;

exports formu;

end.
