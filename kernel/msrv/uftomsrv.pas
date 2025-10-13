unit uftomsrv;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tftomsrv = class(Tfrmbase)
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
  ftomsrv: Tftomsrv;

  // Início ID do Módulo frasrv
const
  vPlIdMd = '02.04.09.001-04';

  // Fim ID do Módulo frasrv

implementation

{$R *.dfm}

procedure Tftomsrv.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;
end;

procedure Tftomsrv.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  { }
end;

end.
