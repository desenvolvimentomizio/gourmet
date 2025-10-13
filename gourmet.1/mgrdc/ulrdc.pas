unit ulrdc;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrardc, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, System.SysUtils, Uni,
  uPegaBase;

type
  Tlrdc = class(Tlfrmbase)
    frardc: Tfrardc;
    procedure FormActivate(Sender: TObject);
    procedure frardcActAtualizarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lrdc: Tlrdc;

implementation

{$R *.dfm}

function RegistraCartoes(AOwner: TComponent; Conexao: TUniConnection; vTotal: string; pMdaCodigo: Integer): string;
var
  lfram: Tfrardc;
  vch: string;
begin
  try
    lrdc := Tlrdc.Create(AOwner);
    lrdc.frardc.IdModulo := vplidmd;
    lrdc.frardc.titulo := vPlTitMdl;

    lrdc.frardc.ZCone := Conexao;

    lrdc.frardc.MdaCodigo := pMdaCodigo;
    lrdc.frardc.VlrTotal := vTotal;

    lrdc.frardc.Acesso.Usuario := 1;
    lfram := lrdc.FindComponent('frardc') as Tfrardc;

    lfram.ModoFrame := modoPesqEdicao;
    lfram.FormaFrame := ffFormu;

    lfram.Carregar;

    (* titulo foi tratado no frardc *)
    lrdc.Caption := lrdc.frardc.titulo;

    lfram.edbusca.Tag := 1;
    lfram.PlFiltros.Visible := True;

    lrdc.ShowModal;
    vch := FloatToStr(lrdc.frardc.VlrRegistrado);
    Result := vch;
  finally
    FreeAndNil(lrdc);
  end;
end;

exports RegistraCartoes;

procedure Tlrdc.FormActivate(Sender: TObject);
begin
  inherited;
  if frardc.uqtabela.IsEmpty then
    frardc.ActIncluir.Execute;
end;

procedure Tlrdc.frardcActAtualizarExecute(Sender: TObject);
begin
  inherited;
  frardc.ActAtualizarExecute(Sender);

end;

end.
