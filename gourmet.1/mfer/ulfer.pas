unit ulfer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls,uPegaBase, ufrabase, ufrafer;

type
  Tlfer = class(Tlfrmbase)
    frafer: Tfrafer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lfer: Tlfer;

implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lfer := Tlfer.Create(pCargaFrame);
  try

    lfer.ShowModal;
    Result := lfer.frafer.vretorno;
  finally
    lfer.Free;
  end;
end;

exports formu;


end.
