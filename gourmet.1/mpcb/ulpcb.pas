unit ulpcb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, ufrabase,
  ufrapcb, uPegaBase;

type
  Tlpcb = class(Tlfrmbase)
    frapcb: Tfrapcb;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lpcb: Tlpcb;


  // Início ID do Módulo frapcb
const
  vPlIdMd = '02.10.16.003-01';
  vPlTitMdl = 'Contabilização';

  // Fim ID do Módulo frapcb

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lpcb := Tlpcb.Create(pCargaFrame);
  try

    lpcb.ShowModal;
    Result := lpcb.frapcb.vretorno;
  finally
    lpcb.Free;
  end;
end;

exports formu;

end.
