unit ufpcl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfpcl = class(Tfrmbase)
    registropclchave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registrocctchave: TIntegerField;
    registropcldatainicial: TDateField;
    registropcldatafinal: TDateField;
    registropclpercentual: TFloatField;
    Label1: TLabel;
    pclchave: TDBEdit;
    Label2: TLabel;
    etdcodigo: TDBEdit;
    Label3: TLabel;
    cctchave: TDBEdit;
    Label4: TLabel;
    pcldatainicial: TDBEdit;
    Label5: TLabel;
    pcldatafinal: TDBEdit;
    Label6: TLabel;
    pclpercentual: TDBEdit;
    cct: TUniQuery;
    cctcctchave: TIntegerField;
    cctcctidentificacao: TStringField;
    registrocctidentificacao: TStringField;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpcl: Tfpcl;

implementation

{$R *.dfm}

procedure Tfpcl.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrocctchave.AsString:=vChaveMestre;
end;

end.
