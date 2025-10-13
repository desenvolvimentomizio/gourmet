unit ufmceest;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.SysUtils, uFuncoes;

type
  Tfmceest = class(Tfrmbase)
    registromcechave: TIntegerField;
    registrorcrchave: TIntegerField;
    registrotmccodigo: TIntegerField;
    registroclbcodigo: TIntegerField;
    registromcemotivo: TStringField;
    registromecregistro: TDateTimeField;
    Label1: TLabel;
    mcechave: TDBEdit;
    mcemotivo: TDBMemo;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmceest: Tfmceest;

  // Início ID do Módulo fmce
const
  vPlIdMd = '02.02.87.002-05';
  vPlTitMdl = 'Cancelamento do Estorno';

  // Fim ID do Módulo fmce

implementation

{$R *.dfm}

procedure Tfmceest.bconfirmaClick(Sender: TObject);
begin
  inherited;
  consulta.Close;
  consulta.sql.Text := 'update rcr set tsccodigo=' + inttostr(tscEmAberto) + ' where rcrchave=' + vChaveMestre;
  consulta.ExecSQL;

end;

procedure Tfmceest.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

end;

procedure Tfmceest.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrorcrchave.AsString := vChaveMestre;
  registrotmccodigo.AsInteger := tmcEstorno;
  registroclbcodigo.AsInteger := Acesso.Usuario;
  registromecregistro.AsFloat := now;

end;

end.
