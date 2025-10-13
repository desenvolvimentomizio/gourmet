unit ulotb;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraotb, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlotb = class(Tlfrmbase)
    fraotb: Tfraotb;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lotb: Tlotb;

  // Início ID do Módulo lotb
const
  vPlIdMd = '01.11.20.003-02';

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lotb := Tlotb.Create(pCargaFrame);
  try
    lotb.ShowModal;
    Result := lotb.fraotb.vretorno;
  finally
    lotb.Free;
  end;
end;

exports formu;

end.
