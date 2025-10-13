unit ufcfgment;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons,
  Vcl.ComCtrls, System.SysUtils, uPegaBase, System.ImageList;

type
  Tfcfgment = class(Tfrmbase)
    Dtoe: tunidatasource;
    toe: tuniquery;
    toetoecodigo: TIntegerField;
    toetoeidentificacao: TStringField;
    registrocfgcodigo: TIntegerField;
    registrocfgtoeativofora: TIntegerField;
    registrocfgtoeativointe: TIntegerField;
    registrocfgtoeped: TIntegerField;
    registrocfgtoetmp: TIntegerField;
    registrocfgtoeusofora: TIntegerField;
    registrocfgtoeusointe: TIntegerField;
    registrocfgprouso: TIntegerField;
    Label4: TLabel;
    Label38: TLabel;
    cfgtoeativofora: TDBEdit;
    lcfgtoeativofora: TDBLookupComboBox;
    lcfgtoeativointe: TDBLookupComboBox;
    cfgtoeativointe: TDBEdit;
    Label39: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    cfgtoeusofora: TDBEdit;
    lcfgtoeusofora: TDBLookupComboBox;
    llcfgtoeusointe: TDBLookupComboBox;
    cfgtoeusointe: TDBEdit;
    Label6: TLabel;
    Label3: TLabel;
    cfgprouso: TDBEdit;
    Label8: TLabel;
    Label1: TLabel;
    cfgtoeped: TDBEdit;
    lcfgtoeped: TDBLookupComboBox;
    lcfgtoetmp: TDBLookupComboBox;
    cfgtoetmp: TDBEdit;
    Label2: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    pro: tuniquery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    registropronome: TStringField;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    registrocfgcadastrapro: TIntegerField;
    cfgcadastrapro: TDBEdit;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosenidentificacao: TStringField;
    registrocfgtoetransentflafora: TIntegerField;
    registrotoecfgtoetransentflafora: TStringField;
    registrocfgtoetransentflainte: TIntegerField;
    registrotoecfgtoetransentflainte: TStringField;
    Label10: TLabel;
    cfgtoetransentflafora: TDBEdit;
    Label11: TLabel;
    cfgtoetransentflainte: TDBEdit;
    Bevel4: TBevel;
    Label12: TLabel;
    registrocfgimpfatura: TIntegerField;
    registrosencfgimpfatura: TStringField;
    Label13: TLabel;
    cfgimpfatura: TDBEdit;
    registrocfgajustacusto: TIntegerField;
    registrosencfgajustacusto: TStringField;
    Label14: TLabel;
    cfgajustacusto: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    FCfgCodigo: Integer;
    { Private declarations }
  published
    property CfgCodigo: Integer read FCfgCodigo write FCfgCodigo;

  public
    { Public declarations }
  end;

var
  fcfgment: Tfcfgment;

  // Início ID do Módulo fracfgment
const
  vPlIdMd = '03.06.81.003-01';
  vPlTitMdl = 'Configurações Estoque - Entradas';

  // Fim ID do Módulo fracfgment

implementation

{$R *.dfm}

function formulario(pCargaFrame: TCargaFrame): string;
begin
  fcfgment := Tfcfgment.Create(pCargaFrame);
  fcfgment.ShowModal;
  fcfgment.Free;
end;

exports formulario;

procedure Tfcfgment.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  CfgCodigo := StrToInt(vChaveMestre);
  registro.Params[0].AsInteger := CfgCodigo;

  inherited;

  toe.Open;
end;

procedure Tfcfgment.registroAfterInsert(DataSet: TDataSet);
begin
  registrocfgcodigo.AsInteger := CfgCodigo;
  registrocfgtoeped.AsInteger := 0;
  registrocfgtoetmp.AsInteger := 0;
end;

end.
