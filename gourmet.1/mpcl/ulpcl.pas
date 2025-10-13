unit ulpcl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufrapcl, uPegaBase;

type
  Tlpcl = class(Tlfrmbase)
    frapcl: Tfrapcl;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lpcl: Tlpcl;

  // In�cio ID do M�dulo lpcl
const
  vPlIdMd = '00.10.00.000-01';

  // Fim ID do M�dulo lpcl

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lpcl := Tlpcl.Create(pCargaFrame);
  try
    lpcl.ShowModal;
    Result := lpcl.frapcl.vretorno;
  finally
    lpcl.Free;
  end;
end;

exports formu;

end.
