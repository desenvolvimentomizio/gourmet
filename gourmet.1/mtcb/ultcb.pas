unit ultcb;

interface

uses
  Winapi.Windows, ulfrmbase, Vcl.Forms, ufrabase, ufratcb, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltcb = class(Tlfrmbase)
    fratcb: Tfratcb;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltcb: Tltcb;

const
  vPlIdMd = '01.10.16.004-02';
  vPlTitMdl = 'Tipos de Contribuintes';

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltcb := Tltcb.Create(pCargaFrame);
  try
    ltcb.ShowModal;
    Result := ltcb.fratcb.vretorno;
  finally
    ltcb.Free;
  end;
end;

exports formu;

end.
