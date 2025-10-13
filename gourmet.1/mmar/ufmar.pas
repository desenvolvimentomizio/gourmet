unit ufmar;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tfmar = class(Tfrmbase)
    registromarcodigo: TIntegerField;
    registromaridentificacao: TStringField;
    Label1: TLabel;
    marcodigo: TDBEdit;
    maridentificacao: TDBEdit;
    Label2: TLabel;
    registromarpercentual: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
  public
    { Public declarations }
  end;

var
  fmar: Tfmar;

  // In�cio ID do M�dulo framar
const
  vPlIdMd = '01.01.05.006-01';

  // Fim ID do M�dulo framar

implementation

{$R *.dfm}

procedure Tfmar.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

procedure Tfmar.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
registromarpercentual.AsFloat:=0;
end;

end.
