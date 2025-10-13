unit ulctz;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufractz, Uni, uPegaBase;

type
  Tlctz = class(Tlfrmbase)
    fractz: Tfractz;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lctz: Tlctz;

  // Início ID do Módulo lctz
const
  vPlIdMd = '02.10.16.001-02';


  // Fim ID do Módulo lctz

implementation

{$R *.dfm}

function ContaCorrente(AOwner: TComponent; conexao: TUniConnection; vusuario: string; vLteChave: string; vtfdcodigo: Integer; vCedCodigo: Integer;
  vFlaCodigo: string; vPcgCodigo: string; vPhgCodigo: string; vRmgValor: string): Boolean;

var
  lfram: Tfractz;

begin
  try
    lctz := Tlctz.create(AOwner);
    lctz.fractz.IdModulo := vPlIdMd;
    lctz.fractz.vChaveMestre := vLteChave;
    lctz.fractz.vpLteChave := vLteChave;
    lctz.fractz.titulo := vPlTitMdl;
    lctz.fractz.Acesso.Usuario := StrToInt(vusuario);
    lctz.fractz.vpCedCodigo := inttostr(vCedCodigo);
    lctz.fractz.vpFlaCodigo := vFlaCodigo;
    lctz.fractz.vpPcgCodigo := vPcgCodigo;
    lctz.fractz.vpPhgCodigo := vPhgCodigo;
    lctz.fractz.vpRmgValor := vRmgValor;
    lctz.fractz.VlrTotal := vRmgValor;

    lctz.fractz.zcone := conexao;
    lfram := lctz.FindComponent('fractz') as Tfractz;
    lfram.carregar;
    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := True;
    lctz.ShowModal;

    if lctz.fractz.vretorno <> '' then
      Result := True
    else
      Result := False;

  finally
    FreeAndNil(lctz);
  end;

end;

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.titulo := vPlTitMdl;
  lctz := Tlctz.create(pCargaFrame);
  try
    lctz.fractz.VlrTotal:=pCargaFrame.Filtro;
    lctz.ShowModal;
    Result := lctz.fractz.vretorno;
  finally
    lctz.Free;
  end;
end;

exports formu, ContaCorrente;

procedure Tlctz.FormActivate(Sender: TObject);
begin
  inherited;
  if fractz.uqtabela.IsEmpty then
    fractz.ActIncluir.Execute;
end;

end.
