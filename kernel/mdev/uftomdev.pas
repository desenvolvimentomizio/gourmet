unit uftomdev;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tftomdev = class(Tfrmbase)
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
  ftomdev: Tftomdev;

  // Início ID do Módulo fradev
const
  vPlIdMd = '02.04.09.001-04';

  // Fim ID do Módulo fradev

implementation

{$R *.dfm}

procedure Tftomdev.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;
end;

procedure Tftomdev.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  { }
end;

end.
