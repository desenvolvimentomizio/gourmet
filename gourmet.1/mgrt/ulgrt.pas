unit ulgrt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufragrt,uPegaBase;

type
  Tlgrt = class(Tlfrmbase)
    fragrt: Tfragrt;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lgrt: Tlgrt;

implementation

{$R *.dfm}



function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lgrt := Tlgrt.Create(pCargaFrame);
  try

    lgrt.ShowModal;
    Result := lgrt.fragrt.vretorno;
  finally
    lgrt.Free;
  end;
end;

exports formu;


end.
