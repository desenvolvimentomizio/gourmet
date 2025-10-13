unit ulpun;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrapun, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlpun = class(Tlfrmbase)
    frapun: Tfrapun;
    procedure frapunActAlteraPrecoExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  lpun: Tlpun;

const
  vplidmd = '01.01.05.002-03';

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lpun := Tlpun.Create(pCargaFrame);
  try
    lpun.frapun.AlterandoPreco := pCargaFrame.Modulo = 'Alterando Preço';
    lpun.frapun.TxtFiltro:=pCargaFrame.Filtro;

    lpun.ShowModal;
    Result := lpun.frapun.vretorno;
  finally
    lpun.Free;
  end;
end;

exports formu;

procedure Tlpun.frapunActAlteraPrecoExecute(Sender: TObject);
begin
  inherited;
  frapun.ActAlteraPrecoExecute(Sender);

end;

end.
