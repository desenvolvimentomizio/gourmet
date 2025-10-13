unit ufhht;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, 
    Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  Tfhht = class(Tfrmbase)
    registrohhmchave: TIntegerField;
    registrohmdchave: TIntegerField;
    registroclbcodigo: TIntegerField;
    registrotehcodigo: TIntegerField;
    registrohhmdescricao: TStringField;
    registrohhmdata: TDateField;
    registrohhmhora: TTimeField;
    Label1: TLabel;
    hhmdescricao: TDBMemo;
    teh: tuniquery;
    tehtehcodigo: TIntegerField;
    tehtehidentificacao: TStringField;
    registrotehidentificacao: TStringField;
    registrotshchave: TIntegerField;
    registropshchave: TIntegerField;
    Label2: TLabel;
    tehcodigo: TDBEdit;
    clb: tuniquery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    registroclbidentificacao: TStringField;
    clbcodigo: TDBEdit;
    Label3: TLabel;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure registroBeforePost(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fhht: Tfhht;

  // Início ID do Módulo framdp
const
  vPlIdMd = '03.07.80.005-03';

  // Fim ID do Módulo framdp

implementation

{$R *.dfm}

procedure Tfhht.bconfirmaClick(Sender: TObject);
begin
  consulta.Close;
  consulta.SQL.Text := 'update hmd set tehcodigo=' + self.registrotehcodigo.AsString + ' where hmdchave=' + self.vChaveMestre;
  consulta.ExecSQL;

  inherited;
end;

procedure Tfhht.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

procedure Tfhht.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrohhmdata.AsFloat := date;
  registrohhmhora.AsFloat := time;
  registrohmdchave.AsString := self.vChaveMestre;
end;

function formulario(AOwner: TComponent; Conexao: tuniconnection; vusuario: string; vchave: string; vchavemestra: string): string;
var
  vch: string;
begin
  try
    fhht := Tfhht.create(AOwner);
    fhht.vusrcodigo := vusuario;
    fhht.vchave := vchave;
    fhht.vChaveMestre := vchavemestra;
    fhht.zcone := Conexao;
    fhht.ShowModal;
    result := vch;
  finally
    freeandnil(fhht);
  end;
end;

exports formulario;

procedure Tfhht.registroBeforePost(DataSet: TDataSet);
begin
  inherited;
  registrotshchave.AsString := self.txtFiltro;
end;

end.
