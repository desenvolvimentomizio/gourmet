unit ufprg;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Dialogs, System.ImageList;

type
  Tfprg = class(Tfrmbase)
    registroprgchave: TIntegerField;
    registropcbchave: TIntegerField;
    registroprgvalor: TFloatField;
    registroprgtipo: TIntegerField;
    registroccgcodigo: TIntegerField;
    registroprgpercentual: TFloatField;
    Label1: TLabel;
    prgchave: TDBEdit;
    ccgcodigo: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    prgvalor: TDBEdit;
    prgpercentual: TDBEdit;
    Label4: TLabel;
    ccg: TUniQuery;
    ccgccgcodigo: TIntegerField;
    ccgccgidentificacao: TStringField;
    registroccgideintificacao: TStringField;
    prgsaldo: TUniQuery;
    prgsaldoprgvalor: TFloatField;
    prgsaldopcbvalor: TFloatField;
    registropcgcodigo: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure prgvalorExit(Sender: TObject);
    procedure registroBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    vpPcgCodigo: string;
  end;

var
  fprg: Tfprg;

  // Início ID do Módulo fprg
const
  vPlIdMd = '02.10.16.004-02';

  // Fim ID do Módulo fprg

implementation

{$R *.dfm}

procedure Tfprg.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  inherited;
  if psituacao.Caption = 'Incluindo' then
  begin
    prgsaldo.Close;
    prgsaldo.Params[0].AsString := vChaveMestre;
    prgsaldo.Open;

    self.prgvalor.Field.AsFloat := prgsaldopcbvalor.AsFloat - prgsaldoprgvalor.AsFloat;

  end;

end;

procedure Tfprg.prgvalorExit(Sender: TObject);
var
  vlPcbTotal: double;
begin
  inherited;
  self.ValidaSaida(Sender);

  if self.ActiveControl = bcancela then
    Exit;

  if prgvalor.Field.AsString = '' then
    Exit;

  if self.prgvalor.Field.AsFloat <= 0 then
  begin
    showmessage('Valor inválido. Necessita valor maior que 0,00!');
    prgvalor.SetFocus;
    Exit;
  end;

  vlPcbTotal := 0;
  consulta.Close;
  consulta.sql.Text := 'select pcbvalor,pcgcodigo from pcb where pcbchave=' + vChaveMestre;
  consulta.Open;
  vlPcbTotal := consulta.Fields[0].AsFloat;
  vpPcgCodigo := consulta.Fields[1].AsString;

  registroprgpercentual.AsFloat := (prgvalor.Field.AsFloat / vlPcbTotal) * 100;
end;

procedure Tfprg.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registropcbchave.AsString := vChaveMestre;
  self.registroprgtipo.AsInteger := 1;
end;

procedure Tfprg.registroBeforePost(DataSet: TDataSet);
begin
  inherited;
  self.registropcgcodigo.AsString := vpPcgCodigo;

end;

end.
