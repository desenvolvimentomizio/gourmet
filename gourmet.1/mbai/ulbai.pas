unit ulbai;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrabai, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlbai = class(Tlfrmbase)
    frabai: Tfrabai;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lbai: Tlbai;

  // Início ID do Módulo lbai
const
  vPlIdMd = '00.00.00.001-01';

  // Fim ID do Módulo lbai

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lbai := Tlbai.Create(pCargaFrame);
  try
    lbai.ShowModal;
    Result := lbai.frabai.vretorno;
  finally
    lbai.Free;
  end;
end;

function formulario(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lbai := Tlbai.Create(pCargaFrame);
  try
    lbai.ShowModal;
    Result := lbai.frabai.vretorno;
  finally
    lbai.Free;
  end;
end;

exports formu, formulario;

end.
