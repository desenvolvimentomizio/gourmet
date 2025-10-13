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
    Bconcluido: TButton;
    Label2: TLabel;
    tehcodigo: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure registroBeforePost(DataSet: TDataSet);
    procedure bfecharClick(Sender: TObject);
    procedure BconcluidoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vtipo: string;
  end;

var
  fhht: Tfhht;

  // Início ID do Módulo fraspt
const
  vPlIdMd = '03.07.80.009-03';

  // Fim ID do Módulo fraspt

implementation

{$R *.dfm}

procedure Tfhht.BconcluidoClick(Sender: TObject);
begin
  self.registrotehcodigo.AsInteger := 3;
  registro.Post;
  close;

  { inherited; }

end;

procedure Tfhht.bfecharClick(Sender: TObject);
begin
  { inherited; }

  registrotehcodigo.AsInteger := 2;
  registro.Post;
  close;

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
  registroclbcodigo.AsString := self.vusrcodigo;

end;

function formulario(AOwner: TComponent; Conexao: tuniconnection; vusuario: string; vchave: string; vchavemestra: string): string;
var
  vch: string;
begin
  try
    fhht := Tfhht.create(AOwner);
    fhht.vusrcodigo := vusuario;
    fhht.vchave := vchave;

    if pos(',', vchavemestra) > 0 then
    begin
      fhht.vChaveMestre := copy(vchavemestra, 1, pos(',', vchavemestra) - 1);
      fhht.vtipo := copy(vchavemestra, pos(',', vchavemestra) + 1, 200);
    end
    else
    begin
      fhht.vChaveMestre := vchavemestra;
    end;
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
