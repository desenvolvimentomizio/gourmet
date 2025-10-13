unit ultgr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPegaBase, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, ufrabase, ufratgr;

type
  Tltgr = class(Tlfrmbase)
    fratgr: Tfratgr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltgr: Tltgr;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltgr := Tltgr.Create(pCargaFrame);
  try
    ltgr.ShowModal;
    Result := ltgr.fratgr.vretorno;
  finally
    ltgr.Free;
  end;
end;

exports formu;

end.
