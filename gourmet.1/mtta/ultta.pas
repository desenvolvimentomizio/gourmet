unit ultta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufratta, uPegaBase;

type
  Tltta = class(Tlfrmbase)
    fratta: Tfratta;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltta: Tltta;

implementation

{$R *.dfm}



function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltta := Tltta.Create(pCargaFrame);
  try

    ltta.ShowModal;
    Result := ltta.fratta.vretorno;
  finally
    ltta.Free;
  end;
end;

exports formu;

end.
