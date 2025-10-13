unit uftomcpr;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tftomcpr = class(Tfrmbase)
    registrotomchave: TIntegerField;
    registromeschave: TIntegerField;
    registrotofcodigo: TIntegerField;
    registrotofidentificacao: TStringField;
    tof: tuniquery;
    toftofcodigo: TIntegerField;
    toftofidentificacao: TStringField;
    Dtof: tunidatasource;
    Label2: TLabel;
    tofcodigo: TDBEdit;
    tomobs: TDBMemo;
    Label1: TLabel;
    registrotomobs: TStringField;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftomcpr: Tftomcpr;

  // Início ID do Módulo fracpr
const
  vPlIdMd = '02.04.08.001-05';

  // Fim ID do Módulo fracpr

implementation

{$R *.dfm}

procedure Tftomcpr.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;
end;

procedure Tftomcpr.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  { }
end;

end.
