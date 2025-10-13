unit ulttm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufrattm, uPegaBase;

type
  Tlttm = class(Tlfrmbase)
    frattm: Tfrattm;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lttm: Tlttm;

  // In�cio ID do M�dulo lbrd
const
  vPlIdMd = '00.00.00.001-01';

  // Fim ID do M�dulo lbrd


implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lttm := Tlttm.Create(pCargaFrame);
  try
    lttm.ShowModal;
    Result := lttm.frattm.vretorno;
  finally
    lttm.Free;
  end;
end;

exports formu;


end.
