unit ufagr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfagr = class(Tfrmbase)
    registrodrechave: TIntegerField;
    registrogrecodigo: TIntegerField;
    registrodreposicao: TIntegerField;
    registroagrchave: TIntegerField;
    Label1: TLabel;
    drechave: TDBEdit;
    Label2: TLabel;
    agrchave: TDBEdit;
    Label3: TLabel;
    dreposicao: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fagr: Tfagr;

  // Início ID do Módulo fagr
const
  vPlIdMd = '00.00.00.000-00';

  // Fim ID do Módulo fagr

implementation

{$R *.dfm}

procedure Tfagr.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

end;

procedure Tfagr.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrogrecodigo.AsString := vChaveMestre;
end;

end.
