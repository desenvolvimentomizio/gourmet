unit ultng;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, ufrabase, ufratng,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,uPegabase;

type
  Tltng = class(Tlfrmbase)
    fratng: Tfratng;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltng: Tltng;

implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltng := Tltng.Create(pCargaFrame);
  try
    ltng.ShowModal;
    Result := ltng.fratng.vretorno;
  finally
    ltng.Free;
  end;
end;

exports formu;

end.
