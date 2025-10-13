unit ulfct;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrafct, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlfct = class(Tlfrmbase)
    frafct: Tfrafct;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lfct: Tlfct;

  // Início ID do Módulo ltog
const
  vPlIdMd = '03.06.81.011-01';

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lfct := Tlfct.Create(pCargaFrame);
  try
    lfct.ShowModal;
    Result := lfct.frafct.vretorno;
  finally
    lfct.Free;
  end;
end;

exports formu;

end.
