unit ufhhm;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, 
    Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  Tfhhm = class(Tfrmbase)
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
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure registroBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vtipo: string;
  end;

var
  fhhm: Tfhhm;

  // In�cio ID do M�dulo fraspr
const
  vPlIdMd = '03.07.80.008-03';

  // Fim ID do M�dulo fraspr

implementation

{$R *.dfm}

procedure Tfhhm.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

procedure Tfhhm.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrohhmdata.AsFloat := date;
  registrohhmhora.AsFloat := time;
  registrohmdchave.AsString := self.vChaveMestre;
  registroclbcodigo.AsString := self.vusrcodigo;
  self.registrotehcodigo.AsInteger := 2;
end;

function formulario(AOwner: TComponent; Conexao: tuniconnection; vusuario: string; vchave: string; vchavemestra: string): string;
var
  vch: string;
begin
  try
    fhhm := Tfhhm.create(AOwner);
    fhhm.vusrcodigo := vusuario;
    fhhm.vchave := vchave;

    if pos(',', vchavemestra) > 0 then
    begin
      fhhm.vChaveMestre := copy(vchavemestra, 1, pos(',', vchavemestra) - 1);
      fhhm.vtipo := copy(vchavemestra, pos(',', vchavemestra) + 1, 200);
    end
    else
    begin
      fhhm.vChaveMestre := vchavemestra;
    end;

    fhhm.zcone := Conexao;
    fhhm.ShowModal;
    result := vch;
  finally
    freeandnil(fhhm);
  end;
end;

exports formulario;

procedure Tfhhm.registroBeforePost(DataSet: TDataSet);
begin
  inherited;
  registropshchave.AsString := self.txtFiltro;
end;

end.
