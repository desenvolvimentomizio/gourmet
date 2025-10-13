unit ufmce;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.SysUtils, uFuncoes, System.ImageList;

type
  Tfmce = class(Tfrmbase)
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
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmce: Tfmce;

  // Início ID do Módulo fmce
const
  vPlIdMd = '02.02.87.002-04';
  vPlTitMdl = 'Cancelamento de Créditos';

  // Fim ID do Módulo fmce

implementation

{$R *.dfm}

procedure Tfmce.bconfirmaClick(Sender: TObject);
begin
  inherited;
  consulta.Close;
  consulta.sql.Text := 'update rcr set tsccodigo=' + inttostr(tscCancelado) + ' where rcrchave=' + vChaveMestre;
  consulta.ExecSQL;

end;

procedure Tfmce.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

end;

procedure Tfmce.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrorcrchave.AsString := vChaveMestre;
  registrotmccodigo.AsInteger := tmcCancelamento;
  registroclbcodigo.AsInteger := Acesso.Usuario;
  registromecregistro.AsFloat := now;

end;

end.
