unit uladv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufraadv, uPegaBase;

type
  Tladv = class(Tlfrmbase)
    fraadv: Tfraadv;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ladv: Tladv;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ladv := Tladv.Create(pCargaFrame);
  try
    ladv.ShowModal;
    Result := ladv.fraadv.vretorno;
  finally
    ladv.Free;
  end;
end;

exports formu;

end.
