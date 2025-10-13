unit ufcce;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, ufuncoes;

type
  Tfcce = class(Tfrmbase)
    registroccechave: TIntegerField;
    registrocznchave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registrocceabertura: TDateTimeField;
    Label1: TLabel;
    ccechave: TDBEdit;
    Label2: TLabel;
    etdcodigo: TDBEdit;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcce: Tfcce;

implementation

{$R *.dfm}

procedure Tfcce.bconfirmaClick(Sender: TObject);
begin
  consulta.Close;
  consulta.SQL.Text := 'SELECT ccechave from cce where ccefechamento IS NULL and cznchave=' + vChaveMestre + ' and  etdcodigo=' + etdcodigo.Field.AsString;
  consulta.Open;

  if not consulta.IsEmpty then
  begin
    Showmessage('Este colarador já esta com seu caixa aberto!');
    etdcodigo.SetFocus;
  end
  else

    inherited;

end;

procedure Tfcce.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrocceabertura.AsString := agora(application, ZCone);
  registrocznchave.AsString := vChaveMestre;
end;

end.
