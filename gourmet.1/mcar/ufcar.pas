unit ufcar;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tfcar = class(Tfrmbase)
    registrocarcodigo: TIntegerField;
    registrocaridentificacao: TStringField;
    registrobcocodigo: TStringField;
    registroctacodigo: TIntegerField;
    registrocarconvenio: TStringField;
    registrocarnumerocar: TStringField;
    registrocarobs1: TStringField;
    registrocarobs2: TStringField;
    registrocarobs3: TStringField;
    registrocarlayout: TIntegerField;
    registrocarcontrato: TStringField;
    registrocarretorno: TStringField;
    registrocarregistrado: TIntegerField;
    registrocardescontado: TIntegerField;
    Label1: TLabel;
    carcodigo: TDBEdit;
    Label2: TLabel;
    caridentificacao: TDBEdit;
    Label3: TLabel;
    bcocodigo: TDBEdit;
    Label4: TLabel;
    ctacodigo: TDBEdit;
    registrocarnumarqrem: TStringField;
    registrocaraceite: TIntegerField;
    sen: tuniquery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosenaceite: TStringField;
    registrosenregistrado: TStringField;
    registrosendescontado: TStringField;
    cta: tuniquery;
    ctactaidentificacao: TStringField;
    ctactacodigo: TIntegerField;
    bco: tuniquery;
    bcobconome: TStringField;
    bcobcocodigo: TStringField;
    registrobconome: TStringField;
    registroctaidentificacao: TStringField;
    registrocardiasmulta: TIntegerField;
    registrocarpercmulta: TFloatField;
    registrocardiasdesc: TIntegerField;
    Label17: TLabel;
    carpercmulta: TDBEdit;
    Label18: TLabel;
    cardiasmulta: TDBEdit;
    Label19: TLabel;
    carpercmorames: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    carpercdesc: TDBEdit;
    Label22: TLabel;
    cardiasdesc: TDBEdit;
    Label23: TLabel;
    registrocarpercdesc: TFloatField;
    registrocarpercmorames: TFloatField;
    Label13: TLabel;
    GBCobBancaria: TGroupBox;
    caraceite: TDBEdit;
    Label16: TLabel;
    Label10: TLabel;
    carregistrado: TDBEdit;
    Label11: TLabel;
    cardescontado: TDBEdit;
    carnumerocar: TDBEdit;
    Label6: TLabel;
    Label5: TLabel;
    carconvenio: TDBEdit;
    registrocarmodalidade: TStringField;
    registrocarcodigocedente: TStringField;
    Label15: TLabel;
    carmodalidade: TDBEdit;
    Label24: TLabel;
    carcodigocedente: TDBEdit;
    Label14: TLabel;
    carcontrato: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    carobs3: TDBEdit;
    carobs2: TDBEdit;
    carobs1: TDBEdit;
    carnumarqrem: TDBEdit;
    Label12: TLabel;
    registrocargeraboleto: TIntegerField;
    registrosencargeraboleto: TStringField;
    Label25: TLabel;
    cargeraboleto: TDBEdit;
    registrocardiasjuros: TIntegerField;
    Label26: TLabel;
    cardiasjuros: TDBEdit;
    Label27: TLabel;
    carlayout: TDBRadioGroup;
    registrocardiasparaprotesto: TIntegerField;
    Label28: TLabel;
    cardiasparaprotesto: TDBEdit;
    Label29: TLabel;
    registrocardefinicaoindividual: TIntegerField;
    registrosencardefinicaoindividual: TStringField;
    Label30: TLabel;
    meccodigo: TDBEdit;
    registromeccodigo: TStringField;
    mec: TUniQuery;
    mecmeccodigo: TStringField;
    mecmecidentificacao: TStringField;
    registromecidentificacao: TStringField;
    Label31: TLabel;
    cardefinicaoindividual: TDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    procedure FormShow(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fcar: Tfcar;

  // Início ID do Módulo fracar
const
  vPlIdMd = '02.02.13.002-02';

  // Fim ID do Módulo fracar

implementation

{$R *.dfm}

procedure Tfcar.FormShow(Sender: TObject);
begin
  (* Ajusta tamanho padrão para primeira abertura da tela *)
  Self.Height := 610;
  Self.Width := 735;

  IdModulo := vPlIdMd;
  inherited;
end;

end.
