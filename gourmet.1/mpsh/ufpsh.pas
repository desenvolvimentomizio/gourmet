unit ufpsh;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, 
    Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfpsh = class(Tfrmbase)
    registropshchave: TIntegerField;
    registrosprcodigo: TIntegerField;
    registrohmdchave: TIntegerField;
    Label1: TLabel;
    pshchave: TDBEdit;
    Label3: TLabel;
    hmdchave: TDBEdit;
    hmd: tuniquery;
    hmdhmdchave: TIntegerField;
    hmdhmdtitulo: TStringField;
    registrohmdtitulo: TStringField;
    registropshdata: TDateField;
    registropshhora: TTimeField;
    procedure bconfirmaClick(Sender: TObject);
    procedure registroBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fpsh: Tfpsh;

  // Início ID do Módulo frapsh
const
  vPlIdMd = '03.07.80.007-02';

  // Fim ID do Módulo frapsh

implementation

{$R *.dfm}

procedure Tfpsh.bconfirmaClick(Sender: TObject);
begin
  inherited;

  consulta.Close;
  consulta.SQL.Text := 'update hmd set tehcodigo=2 where hmdchave=' + self.hmdchave.Field.AsString;
  consulta.ExecSQL;

end;

procedure Tfpsh.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

procedure Tfpsh.registroBeforePost(DataSet: TDataSet);
begin
  inherited;
  registropshdata.AsFloat := date;
  registropshhora.AsFloat := time;

end;

end.
