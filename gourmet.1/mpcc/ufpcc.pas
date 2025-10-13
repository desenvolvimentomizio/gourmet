unit ufpcc;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tfpcc = class(Tfrmbase)
    registropcccodigo: TStringField;
    registropccidentificacao: TStringField;
    registropccdtinicio: TDateField;
    registronpccodigo: TStringField;
    registrotpccodigo: TStringField;
    registropccnivel: TIntegerField;
    registropccdtfinal: TDateField;
    registropccdescricao: TStringField;
    Label1: TLabel;
    pcccodigo: TDBEdit;
    Label2: TLabel;
    pccidentificacao: TDBEdit;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    pccdescricao: TDBMemo;
    pccdtinicio: TDBEdit;
    pccdtfinal: TDBEdit;
    npc: tuniquery;
    npcnpccodigo: TStringField;
    npcnpcidentificacao: TStringField;
    tpc: tuniquery;
    tpctpccodigo: TStringField;
    tpctpcidentificacao: TStringField;
    registronpcidentificacao: TStringField;
    registrotpcidentificacao: TStringField;
    Label4: TLabel;
    npccodigo: TDBEdit;
    Label5: TLabel;
    tpccodigo: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fpcc: Tfpcc;

  // Início ID do Módulo frapcc
const
  vPlIdMd = '02.02.16.015-02';

  // Fim ID do Módulo frapcc

implementation

{$R *.dfm}

procedure Tfpcc.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
