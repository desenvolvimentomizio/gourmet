unit ufpct;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tfpct = class(Tfrmbase)
    registropctchave: TIntegerField;
    registrocfgcodigo: TIntegerField;
    registroflacodigo: TIntegerField;
    registropctidentificacao: TStringField;
    registrotdgcodigo: TIntegerField;
    registrotogorigctacre: TIntegerField;
    registrotogorigctadeb: TIntegerField;
    registropcthistpadrao: TIntegerField;
    registropctcampoval: TStringField;
    registropctcampohis: TStringField;
    fla: TUniQuery;
    flaflacodigo: TIntegerField;
    flaflaidentificacao: TStringField;
    registroflaidentificacao: TStringField;
    tog: TUniQuery;
    togtogcodigo: TIntegerField;
    togtogidentificacao: TStringField;
    registrotogoricreidentificacao: TStringField;
    registrotogoridebidentificacao: TStringField;
    Label1: TLabel;
    pctchave: TDBEdit;
    Label2: TLabel;
    flacodigo: TDBEdit;
    Label3: TLabel;
    pctidentificacao: TDBEdit;
    Label4: TLabel;
    togorigctacre: TDBEdit;
    Label5: TLabel;
    togorigctadeb: TDBEdit;
    Label6: TLabel;
    pcthistpadrao: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    pctcampohis: TDBEdit;
    pctcampoval: TDBMemo;
    phg: TUniQuery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    registrophgidentificacao: TStringField;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpct: Tfpct;

  // Início ID do Módulo fpct
const
  vPlIdMd = '03.06.81.010-02';


  // Fim ID do Módulo fpct

implementation

{$R *.dfm}

procedure Tfpct.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  inherited;

end;

procedure Tfpct.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrotdgcodigo.AsString := vChaveMestre;
  if fla.RecordCount = 1 then
    registroflacodigo.AsInteger := flaflacodigo.AsInteger;

end;

end.
