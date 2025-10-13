unit ufech;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, ufuncoes, Vcl.DBCtrls;

type
  Tfech = class(Tfrmbase)
    registroechchave: TIntegerField;
    registrochdchave: TIntegerField;
    registroechregistro: TDateTimeField;
    registroclbcodigo: TIntegerField;
    registroteccodigo: TIntegerField;
    dbEstagio: TDBRadioGroup;
    tec: TUniQuery;
    tecteccodigo: TIntegerField;
    tecttccodigo: TIntegerField;
    tectecposicao: TIntegerField;
    tectecidentificacao: TStringField;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fech: Tfech;

implementation

{$R *.dfm}

procedure Tfech.FormShow(Sender: TObject);
begin
  inherited;
  consulta.Close;
  consulta.SQL.Text := 'select ttccodigo from chd where chdchave=' + vChaveMestre;
  consulta.Open;

  tec.Close;
  tec.ParamByName('ttccodigo').AsInteger := consulta.FieldByName('ttccodigo').AsInteger;
  tec.Open;
  dbEstagio.Items.Clear;
  tec.First;
  while not tec.eof do
  begin
    dbEstagio.Items.Add(tectecidentificacao.AsString);
    dbEstagio.Values.Add(tecteccodigo.AsString);
    tec.Next;
  end;

end;

procedure Tfech.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrochdchave.AsString := vChaveMestre;
  registroechregistro.AsString := agora(application, ZCone);
  registroclbcodigo.AsInteger := acesso.Usuario;
end;

end.
