unit ulats;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, ufrabase, ufraats,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,uPegaBase;

type
  Tlats = class(Tlfrmbase)
    fraats: Tfraats;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lats: Tlats;

implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lats := Tlats.Create(pCargaFrame);
  try

    lats.ShowModal;
    Result := lats.fraats.vretorno;
  finally
    lats.Free;
  end;
end;

exports formu;

end.
