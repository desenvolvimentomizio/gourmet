unit uldog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufradog,uPegaBase;

type
  Tldog = class(Tlfrmbase)
    fradog: Tfradog;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ldog: Tldog;

implementation

{$R *.dfm}
function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ldog := Tldog.Create(pCargaFrame);
  try

    ldog.ShowModal;
    Result := ldog.fradog.vretorno;
  finally
    ldog.Free;
  end;
end;

exports formu;

end.
