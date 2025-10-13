unit ufcfp;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, MemDS, DBAccess,
  Vcl.ComCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, System.Actions, Vcl.ActnList;

type
  Tfcfp = class(Tfrmbase)
    registrocfpcodigo: TIntegerField;
    registrocfpMascara: TStringField;
    registrocggcodigo: TIntegerField;
    Label1: TLabel;
    cfpCodigo: TDBEdit;
    Label2: TLabel;
    cfpMascara: TDBEdit;
    Label3: TLabel;
    cggcodigo: TDBEdit;
    Label4: TLabel;
    registrocedcodigo: TIntegerField;
    cedcodigo: TDBEdit;
    ced: tuniquery;
    cedcedcodigo: TIntegerField;
    cedcedidentificacao: TStringField;
    registrocedidentificacao: TStringField;
    registrocfpidentificacao: TStringField;
    Label5: TLabel;
    cfpidentificacao: TDBEdit;
    registrocfpoperacao: TIntegerField;
    cgg: tuniquery;
    cggcggcodigo: TIntegerField;
    cggcggidentificacao: TStringField;
    registrocggidentificacao: TStringField;
    pcg: tuniquery;
    pcgpcgcodigo: TIntegerField;
    pcgseacodigo: TIntegerField;
    pcgpcgestrutural: TStringField;
    pcgcfpcodigo: TIntegerField;
    pcgpcgidentificacao: TStringField;
    pcgcedcodigo: TIntegerField;
    pcgpcgativa: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure cfpCodigoExit(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fcfp: Tfcfp;

  // Início ID do Módulo fracfp
const
  vPlIdMd = '02.02.16.003-02';

  // Fim ID do Módulo fracfp

implementation

{$R *.dfm}

procedure Tfcfp.bconfirmaClick(Sender: TObject);
begin
  inherited;
  pcg.Open;
  pcg.Append;
  consulta.Close;
  consulta.sql.Text := 'select max(pcgcodigo) as chave from pcg';
  consulta.Open;
  pcgpcgcodigo.AsInteger := consulta.Fields[0].AsInteger + 1;
  pcgseacodigo.AsInteger := 0;
  pcgpcgestrutural.AsString := self.registrocfpcodigo.AsString;
  pcgcfpcodigo.AsInteger := self.registrocfpcodigo.AsInteger;
  pcgpcgidentificacao.AsString := self.cfpidentificacao.Field.AsString;
  pcgcedcodigo.AsInteger := self.cedcodigo.Field.AsInteger;
  pcgpcgativa.AsInteger := 1;
  pcg.post;
end;

procedure Tfcfp.cfpCodigoExit(Sender: TObject);
begin
  inherited;
  self.ValidaSaida(Sender);
  consulta.Close;
  consulta.sql.Text:='select max(cfpcodigo)  from cfp where cfpcodigo='+cfpCodigo.Field.AsString;
  consulta.Open;
  if (not consulta.IsEmpty) and (consulta.Fields[0].AsInteger>0) then
  begin
    ShowMessage('Este código de grupo já esta em uso !'+#13+
    'O vai sugerir o próximo livre!');
    cfpCodigo.Field.AsInteger:=consulta.Fields[0].AsInteger+1;
  end;

end;

procedure Tfcfp.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

procedure Tfcfp.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrocfpoperacao.AsInteger := 0;
end;

end.
