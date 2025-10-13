unit ulcgr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufracgr,uPegaBase;

type
  Tlcgr = class(Tlfrmbase)
    fracgr: Tfracgr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lcgr: Tlcgr;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lcgr := Tlcgr.Create(pCargaFrame);
  try

    lcgr.ShowModal;
    Result := lcgr.fracgr.vretorno;
  finally
    lcgr.Free;
  end;
end;

exports formu;


end.
