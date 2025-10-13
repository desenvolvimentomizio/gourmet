unit ulccormg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufraccormg, uPegaBase;

type
  Tlccormg = class(Tlfrmbase)
    fraccormg: Tfraccormg;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lccormg: Tlccormg;

implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lccormg := Tlccormg.Create(pCargaFrame);
  try

    lccormg.ShowModal;
    Result := lccormg.fraccormg.vretorno;
  finally
    lccormg.Free;
  end;
end;

exports formu;

end.
