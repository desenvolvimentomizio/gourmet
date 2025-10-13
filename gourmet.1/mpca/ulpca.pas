unit ulpca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufrapca,uPegaBase;

type
  Tlpca = class(Tlfrmbase)
    frapca: Tfrapca;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lpca: Tlpca;

implementation

{$R *.dfm}
function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lpca := Tlpca.Create(pCargaFrame);
  try

    lpca.ShowModal;
    Result := lpca.frapca.vretorno;
  finally
    lpca.Free;
  end;
end;

exports formu;

end.
