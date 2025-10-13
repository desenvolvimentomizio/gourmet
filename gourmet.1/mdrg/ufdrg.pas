unit ufdrg;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.SysUtils, System.ImageList;

type
  Tfdrg = class(Tfrmbase)
    registrodrgchave: TIntegerField;
    registromlgchave: TIntegerField;
    registrodrgvalor: TFloatField;
    registrodrgtipo: TIntegerField;
    registroccgcodigo: TIntegerField;
    registrodrgpercentual: TFloatField;
    Label1: TLabel;
    drgchave: TDBEdit;
    Label2: TLabel;
    ccgcodigo: TDBEdit;
    Label3: TLabel;
    drgvalor: TDBEdit;
    Label4: TLabel;
    drgpercentual: TDBEdit;
    ccg: TUniQuery;
    ccgccgcodigo: TIntegerField;
    ccgccgidentificacao: TStringField;
    registroccgidentificacao: TStringField;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure drgvalorExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdrg: Tfdrg;

  // Início ID do Módulo fdrg
const
  vPlIdMd = '02.10.16.002-02';


  // Fim ID do Módulo fdrg

implementation

{$R *.dfm}

procedure Tfdrg.drgvalorExit(Sender: TObject);
begin
  inherited;
  self.ValidaSaida(Sender);
  consulta.Close;
  consulta.sql.Text := 'select rmgvalor from rmg where rmgchave=' + vChaveMestre;
  consulta.Open;

  self.registrodrgpercentual.AsString := FormatFloat('#,###0.000', (drgvalor.Field.AsCurrency / consulta.Fields[0].AsCurrency) * 100);

end;

procedure Tfdrg.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  inherited;

end;

procedure Tfdrg.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registromlgchave.AsString := vChaveMestre;
end;

end.
