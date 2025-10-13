unit ufdog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, uFuncoes, Vcl.Mask,
  Vcl.DBCtrls;

type
  Tfdog = class(Tfrmbase)
    registrodogchave: TIntegerField;
    registroogechave: TIntegerField;
    registropcgcodigo: TIntegerField;
    registrodogprevisao: TFloatField;
    registrodogmes: TIntegerField;
    registrodogano: TIntegerField;
    registrodogrealizado: TFloatField;
    registrodogpercotimista: TFloatField;
    registrodogperpessimista: TFloatField;
    registrodogsituacao: TIntegerField;
    registroclbcodigo: TIntegerField;
    registrodogregistro: TDateTimeField;
    Label1: TLabel;
    dogchave: TDBEdit;
    Label2: TLabel;
    pcgcodigo: TDBEdit;
    Label3: TLabel;
    dogprevisao: TDBEdit;
    Label4: TLabel;
    dogmes: TDBLookupComboBox;
    meses: TUniQuery;
    mesesmescodigo: TIntegerField;
    mesesmesidentificacao: TStringField;
    Dmeses: TDataSource;
    pcg: TUniQuery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgidentificacao: TStringField;
    registropcgidentificacao: TStringField;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdog: Tfdog;

implementation

{$R *.dfm}

procedure Tfdog.FormShow(Sender: TObject);
var
  i: Integer;
begin

  inherited;

  meses.Connection := ZCone;
  meses.Open;

end;

procedure Tfdog.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrodogrealizado.AsFloat := 0;
  registrodogpercotimista.AsFloat := 0;
  registrodogperpessimista.AsFloat := 0;
  registrodogsituacao.AsInteger := 1;
  registroclbcodigo.AsInteger := acesso.Usuario;
  registrodogregistro.AsString := agora(application, ZCone);
  registroogechave.AsString := vChaveMestre;
  consulta.Close;
  consulta.SQL.Text:='select ogeano from oge where ogechave='+vChaveMestre;
  consulta.Open;
  registrodogano.asstring:=consulta.FieldByName('ogeano').AsString;



end;

end.
