unit ultpv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufratpv,uPegaBase;

type
  Tltpv = class(Tlfrmbase)
    fratpv: Tfratpv;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltpv: Tltpv;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltpv := Tltpv.Create(pCargaFrame);
  try
    ltpv.ShowModal;
    Result := ltpv.fratpv.vretorno;
  finally
    ltpv.Free;
  end;
end;

exports formu;

end.
