unit ulims;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufraims, upegabase;

type
  Tlims = class(Tlfrmbase)
    fraims: Tfraims;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lims: Tlims;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lims := Tlims.Create(pCargaFrame);
  try
    lims.ShowModal;
    Result := lims.fraims.vretorno;
  finally
    lims.Free;
  end;
end;

exports formu;

end.
