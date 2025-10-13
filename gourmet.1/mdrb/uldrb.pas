unit uldrb;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufradrb, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tldrb = class(Tlfrmbase)
    fradrb: Tfradrb;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ldrb: Tldrb;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ldrb := Tldrb.Create(pCargaFrame);
  try
    ldrb.ShowModal;
    Result := ldrb.fradrb.vretorno;
  finally
    ldrb.Free;
  end;
end;

exports formu;

end.
