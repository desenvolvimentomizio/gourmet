unit ulctd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufractd, uPegaBase;

type
  Tlctd = class(Tlfrmbase)
    fractd: Tfractd;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lctd: Tlctd;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lctd := Tlctd.Create(pCargaFrame);
  try

    lctd.ShowModal;
    Result := lctd.fractd.vretorno;
  finally
    lctd.Free;
  end;
end;

exports formu;

end.
