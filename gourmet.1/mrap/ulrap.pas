unit ulrap;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufrarap, uPegaBase;

type
  Tlrap = class(Tlfrmbase)
    frarap: Tfrarap;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lrap: Tlrap;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lrap := Tlrap.Create(pCargaFrame);
  try
    lrap.ShowModal;
    Result := lrap.frarap.vretorno;
  finally
    lrap.Free;
  end;
end;

exports formu;


end.
