unit ufavh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, uFuncoes, Vcl.Mask,
  Vcl.DBCtrls, DateUtils;

type
  Tfavh = class(Tfrmbase)
    registroavhchave: TIntegerField;
    registrovhfcodigo: TIntegerField;
    registrofclcodigo: TIntegerField;
    registroavhdatainicial: TDateField;
    registroavhvalor: TFloatField;
    registroclbcodigo: TIntegerField;
    registroavhregistro: TDateTimeField;
    registroavhdatafinal: TDateField;
    Label1: TLabel;
    avhchave: TDBEdit;
    avhdatainicial: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    avhvalor: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  favh: Tfavh;

implementation

{$R *.dfm}

procedure Tfavh.bconfirmaClick(Sender: TObject);
begin
  registroavhdatafinal.AsString := '31/12/9999';

  consulta.Close;
  consulta.SQL.Text := 'select avhchave , avhdatafinal from avh where vhfcodigo=' + vChaveMestre + '  order by avhchave desc limit 1 ';
  consulta.Open;

  while not consulta.Eof do
  begin
    consulta.Edit;
    consulta.FieldByName('avhdatafinal').AsDateTime := IncDay(avhdatainicial.Field.AsDateTime, -1);
    consulta.Post;

    consulta.Next;
  end;

  inherited;

end;

procedure Tfavh.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroavhregistro.AsString := agora(application, zcone);
  consulta.Close;
  consulta.SQL.Text := 'select fclcodigo from vhf where vhfcodigo=' + vChaveMestre;
  consulta.Open;

  registrofclcodigo.AsString := consulta.FieldByName('fclcodigo').AsString;
  registrovhfcodigo.AsString := vChaveMestre;
  registroclbcodigo.AsString := acesso.Usuario.ToString;
end;

end.
