unit uftsh;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, 
    Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tftsh = class(Tfrmbase)
    registrotshchave: TIntegerField;
    registrosptcodigo: TIntegerField;
    registrohmdchave: TIntegerField;
    Label1: TLabel;
    tshchave: TDBEdit;
    Label2: TLabel;
    hmdchave: TDBEdit;
    hmd: tuniquery;
    hmdhmdchave: TIntegerField;
    hmdhmdtitulo: TStringField;
    registrohmdtitulo: TStringField;
    registrotshdata: TDateField;
    registrotshhora: TTimeField;
    procedure bconfirmaClick(Sender: TObject);
    procedure registroBeforePost(DataSet: TDataSet);
    procedure hmdchaveEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  ftsh: Tftsh;

  // Início ID do Módulo fratsh
const
  vPlIdMd = '03.07.80.010-02';

  // Fim ID do Módulo fratsh

implementation

{$R *.dfm}

procedure Tftsh.bconfirmaClick(Sender: TObject);
begin
  inherited;
  consulta.Close;
  consulta.SQL.Text := 'update hmd set tehcodigo=3 where hmdchave=' + self.hmdchave.Field.AsString;
  consulta.ExecSQL;

end;

procedure Tftsh.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

procedure Tftsh.hmdchaveEnter(Sender: TObject);
begin
  inherited;
  self.txtFiltro := 'tehcodigo=2';

end;

procedure Tftsh.registroBeforePost(DataSet: TDataSet);
begin
  inherited;
  registrotshdata.AsFloat := date;
  registrotshhora.AsFloat := time;

end;

end.
