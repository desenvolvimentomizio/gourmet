unit ulanf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufraanf, uPegaBase;

type
  Tlanf = class(Tlfrmbase)
    fraanf: Tfraanf;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lanf: Tlanf;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lanf := Tlanf.Create(pCargaFrame);
  try

    lanf.ShowModal;
    Result := lanf.fraanf.vretorno;
  finally
    lanf.Free;
  end;
end;

exports formu;

end.
