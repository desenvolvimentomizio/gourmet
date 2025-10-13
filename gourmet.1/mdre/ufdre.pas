unit ufdre;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tfdre = class(Tfrmbase)
    registrodrechave: TIntegerField;
    registrogrecodigo: TIntegerField;
    registroccgcodigo: TIntegerField;
    ccg: TUniQuery;
    Label1: TLabel;
    drechave: TDBEdit;
    Label3: TLabel;
    ccgcodigo: TDBEdit;
    ccgccgcodigo: TIntegerField;
    ccgccgidentificacao: TStringField;
    registroccgidentificacao: TStringField;
    gre: TUniQuery;
    gregrecodigo: TIntegerField;
    gregreidentificacao: TStringField;
    registrogreidentificacao: TStringField;
    registrodreposicao: TIntegerField;
    Label2: TLabel;
    dreposicao: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdre: Tfdre;

  // Início ID do Módulo fdre
const
  vPlIdMd = '00.00.00.000-00';

  // Fim ID do Módulo fdre

implementation

{$R *.dfm}

procedure Tfdre.FormShow(Sender: TObject);
    begin
  IdModulo := vPlIdMd;
  inherited;

end;

procedure Tfdre.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrogrecodigo.AsString := vChaveMestre;
end;

end.
