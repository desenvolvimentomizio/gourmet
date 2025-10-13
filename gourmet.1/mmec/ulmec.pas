unit ulmec;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, uPegaBase, ufrabase, uframec;

type
  Tlmec = class(Tlfrmbase)
    framec: Tframec;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lmec: Tlmec;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lmec := Tlmec.Create(pCargaFrame);
  try
    lmec.ShowModal;
    Result := lmec.framec.vretorno;
  finally
    lmec.Free;
  end;
end;

exports formu;


end.
