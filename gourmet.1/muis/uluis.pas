unit uluis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, ufrabase, ufrauis, uPegaBase;

type
  Tluis = class(Tlfrmbase)
    frauis: Tfrauis;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  luis: Tluis;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  luis := Tluis.Create(pCargaFrame);
  try
    luis.ShowModal;
    Result := luis.frauis.vretorno;
  finally
    luis.Free;
  end;
end;

exports formu;

end.
