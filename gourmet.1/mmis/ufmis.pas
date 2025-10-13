unit ufmis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfmis = class(Tfrmbase)
    registromischave: TIntegerField;
    bpl: TUniQuery;
    bplbplcodigo: TIntegerField;
    bplbplidentificacao: TStringField;
    Label1: TLabel;
    mischave: TDBEdit;
    bplcodigo: TDBEdit;
    Label3: TLabel;
    registrobplcodigo: TIntegerField;
    registrobplidentificacao: TStringField;
    registroitscodigo: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmis: Tfmis;

    // Início ID do Módulo fmis
const
  vPlIdMd = '00.00.00.000-02';

  // Fim ID do Módulo fmis


implementation

{$R *.dfm}

procedure Tfmis.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  inherited;

end;

procedure Tfmis.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registroitscodigo.AsString := vChaveMestre;
end;

end.
