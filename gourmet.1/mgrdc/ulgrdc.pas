unit ulgrdc;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufragrdc, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, System.SysUtils, Uni,
  uPegaBase;

type
  Tlgrdc = class(Tlfrmbase)
    fragrdc: Tfragrdc;
    procedure FormActivate(Sender: TObject);
    procedure frardcActAtualizarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lgrdc: Tlgrdc;

implementation

{$R *.dfm}

function RegistraCartoes(AOwner: TComponent; Conexao: TUniConnection; vTotal: string; pMdaCodigo: Integer): string;
var
  lfram: Tfragrdc;
  vch: string;
begin
  try
    lgrdc := Tlgrdc.Create(AOwner);
    lgrdc.fragrdc.IdModulo := vplidmd;
    lgrdc.fragrdc.titulo := vPlTitMdl;

    lgrdc.fragrdc.ZCone := Conexao;

    lgrdc.fragrdc.MdaCodigo := pMdaCodigo;
    lgrdc.fragrdc.VlrTotal := vTotal;

    lgrdc.fragrdc.Acesso.Usuario := 1;
    lfram := lgrdc.FindComponent('frardc') as Tfragrdc;

    lfram.ModoFrame := modoPesqEdicao;
    lfram.FormaFrame := ffFormu;

    lfram.Carregar;

    (* titulo foi tratado no frardc *)
    lgrdc.Caption := lgrdc.fragrdc.titulo;

    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := True;

    lgrdc.ShowModal;
    vch := FloatToStr(lgrdc.fragrdc.VlrRegistrado);
    Result := vch;
  finally
    FreeAndNil(lgrdc);
  end;
end;

exports RegistraCartoes;

procedure Tlgrdc.FormActivate(Sender: TObject);
begin
  inherited;
  if fragrdc.uqtabela.IsEmpty then
    fragrdc.ActIncluir.Execute;
end;

procedure Tlgrdc.frardcActAtualizarExecute(Sender: TObject);
begin
  inherited;
  fragrdc.ActAtualizarExecute(Sender);

end;

end.
