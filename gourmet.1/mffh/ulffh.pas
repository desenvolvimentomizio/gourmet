unit ulffh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufraffh,uPegaBase;

type
  Tlffh = class(Tlfrmbase)
    fraffh: Tfraffh;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lffh: Tlffh;

implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lffh := Tlffh.Create(pCargaFrame);
  try

    lffh.ShowModal;
    Result := lffh.fraffh.vretorno;
  finally
    lffh.Free;
  end;
end;

exports formu;

end.
