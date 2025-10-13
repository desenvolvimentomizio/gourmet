unit ultcc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufratcc,uPegaBase;

type
  Tltcc = class(Tlfrmbase)
    fratcc: Tfratcc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltcc: Tltcc;

implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltcc := Tltcc.Create(pCargaFrame);
  try

    ltcc.ShowModal;
    Result := ltcc.fratcc.vretorno;
  finally
    ltcc.Free;
  end;
end;

exports formu;

end.
