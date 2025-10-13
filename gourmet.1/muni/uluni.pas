unit uluni;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, System.Classes, Vcl.Controls, ufrabase,
  ufrauni, Uni, uPegaBase;

type

  Tluni = class(Tlfrmbase)
    frauni: Tfrauni;
    procedure frauniActAtualizarExecute(Sender: TObject);
  private
  public
    { Public declarations }
    vusrcodigo: string;
  end;

var
  luni: Tluni;

implementation

{$R *.dfm}

uses ufuni;

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  luni := Tluni.Create(pCargaFrame);
  try
    luni.ShowModal;
    Result := luni.frauni.vretorno;
  finally
    luni.Free;
  end;
end;

exports formu;

procedure Tluni.frauniActAtualizarExecute(Sender: TObject);
begin

  if frauni.TxtFiltro <> '' then
  begin
    frauni.uqtabela.Filter := frauni.TxtFiltro;
    frauni.uqtabela.Filtered := True;
  end;

  inherited;

  frauni.ActAtualizarExecute(Sender);

end;

end.
