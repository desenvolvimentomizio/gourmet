unit ufhmd;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, 
    Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  Tfhmd = class(Tfrmbase)
    registrohmdchave: TIntegerField;
    registrohmdtitulo: TStringField;
    registrohmddescricao: TStringField;
    registromdpcodigo: TIntegerField;
    registrotehcodigo: TIntegerField;
    registrohmdhoras: TIntegerField;
    registropegoschave: TStringField;
    Label1: TLabel;
    hmdchave: TDBEdit;
    Label2: TLabel;
    hmdtitulo: TDBEdit;
    Label3: TLabel;
    mdpcodigo: TDBEdit;
    Label4: TLabel;
    tehcodigo: TDBEdit;
    Label5: TLabel;
    hmdhoras: TDBEdit;
    Label6: TLabel;
    pegoschave: TDBEdit;
    Label7: TLabel;
    hmddescricao: TDBMemo;
    mdp: tuniquery;
    mdpmdpcodigo: TIntegerField;
    mdpmdpidentificacao: TStringField;
    registromdpidentificacao: TStringField;
    teh: tuniquery;
    tehtehcodigo: TIntegerField;
    tehtehidentificacao: TStringField;
    registrotehidentificacao: TStringField;
    registrohmdhorasreal: TIntegerField;
    Label8: TLabel;
    hmdhorasreal: TDBEdit;
    registrohmddata: TDateField;
    registrohmdhora: TTimeField;
    registrohmdprioridade: TIntegerField;
    Label9: TLabel;
    hmdprioridade: TDBEdit;
    prj: tuniquery;
    prjprjcodigo: TIntegerField;
    prjprjidentificacao: TStringField;
    registroprjcodigo: TIntegerField;
    registroprjidentificacao: TStringField;
    Label10: TLabel;
    prjcodigo: TDBEdit;
    procedure registroBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fhmd: Tfhmd;

  // Início ID do Módulo framdp
const
  vPlIdMd = '03.07.80.005-02';

  // Fim ID do Módulo framdp

implementation

{$R *.dfm}

procedure Tfhmd.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

procedure Tfhmd.registroBeforePost(DataSet: TDataSet);
begin
  inherited;
  registrohmddata.AsFloat := date;
  registrohmdhora.AsFloat := time;

end;

end.
