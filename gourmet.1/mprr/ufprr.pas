unit ufprr;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tfprr = class(Tfrmbase)
    prrsaldo: TUniQuery;
    prrsaldoprrvalor: TFloatField;
    prrsaldopcrvalor: TFloatField;
    Label1: TLabel;
    prrchave: TDBEdit;
    ccgcodigo: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    prrvalor: TDBEdit;
    prrpercentual: TDBEdit;
    Label4: TLabel;
    ccg: TUniQuery;
    ccgccgcodigo: TIntegerField;
    ccgccgidentificacao: TStringField;
    registroprrchave: TIntegerField;
    registropcrchave: TIntegerField;
    registroprrvalor: TFloatField;
    registroprrtipo: TIntegerField;
    registroccgcodigo: TIntegerField;
    registroccgidentificacao: TStringField;
    registroprrpercentual: TFloatField;
    registropcgcodigo: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure prrvalorExit(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure registroBeforePost(DataSet: TDataSet);
    procedure prrpercentualExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vpPcgCodigo: string;
  end;

var
  fprr: Tfprr;

  // Início ID do Módulo fprr
const
  vPlIdMd = '00.00.00.000-00';

  // Fim ID do Módulo fprr

implementation

{$R *.dfm}

procedure Tfprr.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  inherited;
  if psituacao.Caption = 'Incluindo' then
  begin
    prrsaldo.Close;
    prrsaldo.Params[0].AsString := vChaveMestre;
    prrsaldo.Open;

    prrvalor.Field.AsFloat := prrsaldopcrvalor.AsFloat - prrsaldoprrvalor.AsFloat;

  end;

end;

procedure Tfprr.prrpercentualExit(Sender: TObject);
var
vlPcrTotal:double;

begin
  inherited;

  self.ValidaSaida(Sender);

  vlPcrTotal := 0;
  consulta.Close;
  consulta.sql.Text := 'select pcrvalor,pcgcodigo from pcr where pcrchave=' + vChaveMestre;
  consulta.Open;
  vlPcrTotal := consulta.Fields[0].AsFloat;
  vpPcgCodigo := consulta.Fields[1].AsString;
  prrvalor.Field.AsFloat:=  vlPcrTotal*(prrpercentual.Field.AsFloat/100);

end;

procedure Tfprr.prrvalorExit(Sender: TObject);
var
  vlPcrTotal: double;
begin
  inherited;

  self.ValidaSaida(Sender);

  vlPcrTotal := 0;
  consulta.Close;
  consulta.sql.Text := 'select pcrvalor,pcgcodigo from pcr where pcrchave=' + vChaveMestre;
  consulta.Open;
  vlPcrTotal := consulta.Fields[0].AsFloat;
  vpPcgCodigo := consulta.Fields[1].AsString;

  registroprrpercentual.AsFloat := (prrvalor.Field.AsFloat / vlPcrTotal) * 100;

end;

procedure Tfprr.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registropcrchave.AsString := vChaveMestre;
  self.registroprrtipo.AsInteger := 1;
  self.registroprrpercentual.AsFloat:=100;
end;

procedure Tfprr.registroBeforePost(DataSet: TDataSet);
begin
  inherited;
  self.registropcgcodigo.AsString := vpPcgCodigo;
end;

end.
