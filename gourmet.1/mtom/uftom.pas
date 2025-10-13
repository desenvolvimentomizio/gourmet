unit uftom;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tftom = class(Tfrmbase)
    registrotomchave: TIntegerField;
    registrotofcodigo: TIntegerField;
    registromeschave: TIntegerField;
    registrotomobs: TStringField;
    Label1: TLabel;
    tomchave: TDBEdit;
    Label2: TLabel;
    tofcodigo: TDBEdit;
    tof: TUniQuery;
    toftofcodigo: TIntegerField;
    toftofidentificacao: TStringField;
    Label3: TLabel;
    registrotofidentificacao: TStringField;
    tomobs: TDBMemo;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftom: Tftom;

  // Início ID do Módulo ftom
const
  vPlIdMd = '02.04.80.009-02';

  // Fim ID do Módulo ftom

implementation

{$R *.dfm}

procedure Tftom.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  inherited;

end;

procedure Tftom.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registromeschave.AsString := vChaveMestre;
end;

end.
