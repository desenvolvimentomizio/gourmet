unit ufevf;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tfevf = class(Tfrmbase)
    registroevfcodigo: TIntegerField;
    registroevfidentificacao: TStringField;
    registrotevcodigo: TIntegerField;
    registrocedcodigo: TIntegerField;
    Label1: TLabel;
    evfcodigo: TDBEdit;
    Label2: TLabel;
    evfidentificacao: TDBEdit;
    Label4: TLabel;
    tevcodigo: TDBEdit;
    Label5: TLabel;
    cedcodigo: TDBEdit;
    tev: TUniQuery;
    tevtevcodigo: TIntegerField;
    tevtevidentificacao: TStringField;
    ced: TUniQuery;
    cedcedcodigo: TIntegerField;
    cedcedidentificacao: TStringField;
    registrotevidentificacao: TStringField;
    registrocedidentificacao: TStringField;
    pcg: TUniQuery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgidentificacao: TStringField;
    registroevfpelocco: TIntegerField;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosenidentificacao: TStringField;
    evfpelocco: TDBEdit;
    Label6: TLabel;
    cfgcfgusactb: TIntegerField;
    rbc: TUniQuery;
    rbcrbccodigo: TIntegerField;
    rbcrbcidentificacao: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fevf: Tfevf;

  // Início ID do Módulo fevf
const
  vPlIdMd = '01.12.91.001-02';
  // Fim ID do Módulo fevf

implementation

{$R *.dfm}

procedure Tfevf.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  cfg.Connection := zcone;
  cfg.Open;
  inherited;

end;

end.
