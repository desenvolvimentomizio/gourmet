unit ulpcr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, uPegabase, ufrapcr;

type
  Tlpcr = class(Tlfrmbase)
    frapcr: Tfrapcr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lpcr: Tlpcr;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lpcr := Tlpcr.Create(pCargaFrame);
  try
    lpcr.ShowModal;
    Result := lpcr.frapcr.vretorno;
  finally
    lpcr.Free;
  end;
end;

exports formu;


end.
