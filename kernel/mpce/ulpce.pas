unit ulpce;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufrapce, upegabase;

type
  Tlpce = class(Tlfrmbase)
    frapce: Tfrapce;
  private
    { Private declarations }
  public
    { Public declarations }
    vpRetorno: string;
  end;

var
  lpce: Tlpce;

const
  vplidmd = '00.00.00.000-00';

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
var
  vlEtdcodigo: string;
begin
  pCargaFrame.Titulo := vPlTitMdl;

  lpce := Tlpce.Create(pCargaFrame);
  try
    lpce.ShowModal;
    Result := lpce.vpRetorno;
  finally
    lpce.Free;
  end;
end;

exports formu;

end.
