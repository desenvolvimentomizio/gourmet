unit uldrg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufradrg,uPegaBase;

type
  Tldrg = class(Tlfrmbase)
    fradrg: Tfradrg;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ldrg: Tldrg;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ldrg := Tldrg.Create(pCargaFrame);
  try
    ldrg.ShowModal;
    Result := ldrg.fradrg.vretorno;
  finally
    ldrg.Free;
  end;
end;

exports formu;

end.
