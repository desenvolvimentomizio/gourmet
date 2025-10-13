unit ufmre;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tfmre = class(Tfrmbase)
    registromrechave: TIntegerField;
    registrorelcodigo: TStringField;
    registrobplcodigo: TIntegerField;
    registrobplidentificacao: TStringField;
    Label1: TLabel;
    mrechave: TDBEdit;
    Label3: TLabel;
    bplcodigo: TDBEdit;
    bpl: TUniQuery;
    bplbplcodigo: TIntegerField;
    bplbplidentificacao: TStringField;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmre: Tfmre;

  // Início ID do Módulo fmre
const
  vPlIdMd = '03.06.80.009-02';

  // Fim ID do Módulo fmre

implementation

{$R *.dfm}

procedure Tfmre.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  inherited;

end;

procedure Tfmre.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrorelcodigo.AsString := vChaveMestre;

end;

end.
