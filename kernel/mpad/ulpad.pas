unit ulpad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufrapad, upegabase;

type
  Tlpad = class(Tlfrmbase)
    frapad: Tfrapad;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lpad: Tlpad;


const
  vplidmd = '00.00.00.000-03';


implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lpad := Tlpad.Create(pCargaFrame);
  try
    lpad.ShowModal;
    Result := lpad.frapad.vretorno;
  finally
    lpad.Free;
  end;
end;

exports formu;

end.
