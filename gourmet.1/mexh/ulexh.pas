unit ulexh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, ufrabase, ufraexh,upegabase,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tlexb = class(Tlfrmbase)
    fraexh: Tfraexh;
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
    Result := lexb.fraexh.vretorno;
  finally
    lexb.Free;
  end;
end;

exports formu;
end.
