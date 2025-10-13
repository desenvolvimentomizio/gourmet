unit ufrce;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, System.ImageList, Vcl.ImgList, PngImageList, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, ufuncoes;

type
  Tfrce = class(Tfrmbase)
    Label1: TLabel;
    mcechave: TDBEdit;
    mcemotivo: TDBMemo;
    Label2: TLabel;
    registromcechave: TIntegerField;
    registrorcrchave: TIntegerField;
    registrotmccodigo: TIntegerField;
    registroclbcodigo: TIntegerField;
    registromcemotivo: TStringField;
    registromecregistro: TDateTimeField;
    procedure bconfirmaClick(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frce: Tfrce;
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Cancelamento de Créditos';

implementation

{$R *.dfm}

procedure Tfrce.bconfirmaClick(Sender: TObject);
begin
  inherited;
  consulta.Close;
  consulta.sql.Text := 'update rcf set tsccodigo=' + inttostr(tscCancelado) + ' where rcrchave=' + vChaveMestre;
  consulta.ExecSQL;

end;

procedure Tfrce.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

end;

procedure Tfrce.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrorcrchave.AsString := vChaveMestre;
  registrotmccodigo.AsInteger := tmcCancelamento;
  registroclbcodigo.AsInteger := Acesso.Usuario;
  registromecregistro.AsFloat := now;
end;

end.
