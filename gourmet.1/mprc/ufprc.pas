unit ufprc;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tfprc = class(Tfrmbase)
    registroprcchave: TIntegerField;
    registropcgcodigo: TIntegerField;
    registroccgcodigo: TIntegerField;
    registroprcpercentual: TFloatField;
    Label1: TLabel;
    prcchave: TDBEdit;
    Label2: TLabel;
    ccgcodigo: TDBEdit;
    Label3: TLabel;
    prcpercentual: TDBEdit;
    ccg: TUniQuery;
    ccgccgcodigo: TIntegerField;
    ccgccgidentificacao: TStringField;
    registroccgidentificacao: TStringField;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fprc: Tfprc;

implementation

{$R *.dfm}

procedure Tfprc.registroAfterInsert(DataSet: TDataSet);
begin
  self.registropcgcodigo.AsString := vChaveMestre;
  inherited;

end;

end.
