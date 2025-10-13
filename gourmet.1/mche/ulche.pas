unit ulche;

interface

uses
  Winapi.Windows, System.SysUtils, Vcl.Forms, ulfrmbase, ufrabase, ufrache,
  Vcl.StdCtrls, Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, Uni;

type
  Tlche = class(Tlfrmbase)
    frache: Tfrache;
    procedure FormActivate(Sender: TObject);
  private
    procedure Carregar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lche: Tlche;

implementation

{$R *.dfm}

uses ufche;

function RegistraCheques(AOwner: TComponent; conexao: TUniConnection; vUsrCodigo: String; vTotal: string; vDtlChave: string; vEtdCodigo: String = ''): string;
var
  lfram: Tfrache;
  vch: string;
begin
  try
    lche := Tlche.Create(AOwner);
    lfram := lche.frache as Tfrache;
    lfram.IdModulo := vplidmd;
    lfram.titulo := vPlTitMdl;
    lfram.vChaveMestre := vDtlChave;
    lfram.Acesso.Usuario := StrToInt(vUsrCodigo);

    lfram.TipoCheque := cheTerceiros;
    lfram.EtdCodigo := vEtdCodigo;
    lfram.DtlChave := vDtlChave;
    lfram.VlrTotal := vTotal;

    lfram.zcone := conexao;

    lfram.Carregar;

    lche.ShowModal;

    vch := FloatToStr(lche.frache.VlrRegistrado);
    Result := vch;
  finally
    FreeAndNil(lche);
  end;
end;

function RegistraChequesProprios(AOwner: TComponent; conexao: TUniConnection; vUsrCodigo: String; vTotal: string; vDtlChave: string;
  vCtaCodigo: String = ''): string;
var
  lfram: Tfrache;
  vch: string;
begin
  try
    lche := Tlche.Create(AOwner);
    lfram := lche.frache as Tfrache;
    lfram.IdModulo := vplidmd;
    lfram.titulo := vPlTitMdl;
    lfram.vChaveMestre := vDtlChave;
    lfram.Acesso.Usuario := StrToInt(vUsrCodigo);

    lfram.TipoCheque := cheProprio;
    lfram.CtaCodigo := vCtaCodigo;
    lfram.DtlChave := vDtlChave;
    lfram.VlrTotal := vTotal;

    lfram.zcone := conexao;

    lfram.Carregar;

    lche.ShowModal;

    vch := FloatToStr(lche.frache.VlrRegistrado);
    Result := vch;
  finally
    FreeAndNil(lche);
  end;
end;

exports RegistraCheques, RegistraChequesProprios;

procedure Tlche.FormActivate(Sender: TObject);
begin
  inherited;
  if frache.uqtabela.IsEmpty then
    frache.ActIncluir.Execute;
end;

procedure Tlche.Carregar;
begin
  inherited;
end;

end.
