unit ulaco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, uPegaBase, ufrabase, ufraaco;

type
  Tlaco = class(Tlfrmbase)
    fraaco: Tfraaco;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  laco: Tlaco;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  laco := Tlaco.Create(pCargaFrame);
  try
    laco.ShowModal;
    Result := laco.fraaco.vretorno;
  finally
    laco.Free;
  end;
end;

exports formu;

end.
