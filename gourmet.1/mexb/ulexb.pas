unit ulexb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,upegabase,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufraexb;

type
  Tlexb = class(Tlfrmbase)
    fraexb: Tfraexb;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lexb: Tlexb;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lexb := Tlexb.Create(pCargaFrame);
  try
    lexb.ShowModal;
    Result := lexb.fraexb.vretorno;
  finally
    lexb.Free;
  end;
end;

exports formu;

end.
