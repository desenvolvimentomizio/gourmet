unit uling;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraing, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tling = class(Tlfrmbase)
    fraing: Tfraing;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ling: Tling;

  // Início ID do Módulo ling
const
  vPlIdMd = '00.00.00.001-01';

  // Fim ID do Módulo ling

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ling := Tling.Create(pCargaFrame);
  try
    ling.ShowModal;
    Result := ling.fraing.vretorno;
  finally
    ling.Free;
  end;
end;

exports formu;

end.
