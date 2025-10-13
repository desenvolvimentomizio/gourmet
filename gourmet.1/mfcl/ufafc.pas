unit ufafc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  DateUtils, ufuncoes;

type
  Tfafc = class(Tfrmbase)
    registroafcchave: TIntegerField;
    registroafcdatainicial: TDateField;
    registroafcvalor: TFloatField;
    Label1: TLabel;
    afcchave: TDBEdit;
    Label2: TLabel;
    afcdatainicial: TDBEdit;
    Label3: TLabel;
    afcvalor: TDBEdit;
    registroafcregistro: TDateTimeField;
    registrofclcodigo: TIntegerField;
    registroclbcodigo: TIntegerField;
    registroafcdatafinal: TDateField;
    procedure bconfirmaClick(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fafc: Tfafc;

implementation

{$R *.dfm}

procedure Tfafc.bconfirmaClick(Sender: TObject);
begin

  registroafcdatafinal.AsString:='31/12/9999';

  consulta.Close;
  consulta.SQL.Text := 'select afcchave, afcdatafinal from afc where fclcodigo=' + vChaveMestre + ' order by afcchave desc limit 1 ';
  consulta.Open;

  while not consulta.Eof do
  begin
    consulta.Edit;
    consulta.FieldByName('afcdatafinal').AsDateTime := IncDay(afcdatainicial.Field.AsDateTime, -1);
    consulta.Post;

    consulta.Next;
  end;

  inherited;

end;

procedure Tfafc.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroafcregistro.AsString := agora(application, zcone);
  registrofclcodigo.AsString := vChaveMestre;
  registroclbcodigo.AsString := acesso.Usuario.ToString;

end;

end.
