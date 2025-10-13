unit ulumo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufraumo, uPegaBase;

type
  Tlumo = class(Tlfrmbase)
    fraumo: Tfraumo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lumo: Tlumo;

implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lumo := Tlumo.Create(pCargaFrame);
  try
    lumo.ShowModal;
    Result := lumo.fraumo.vretorno;
  finally
    lumo.Free;
  end;
end;

exports formu;

end.
