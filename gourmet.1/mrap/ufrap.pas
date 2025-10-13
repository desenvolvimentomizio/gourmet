unit ufrap;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, Data.DB, System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfrap = class(Tfrmbase)
    registrorapchave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registrocavchave: TIntegerField;
    registrorappercentual: TFloatField;
    Label1: TLabel;
    rapchave: TDBEdit;
    Label2: TLabel;
    etdcodigo: TDBEdit;
    Label4: TLabel;
    rappercentual: TDBEdit;
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
  frap: Tfrap;

implementation

{$R *.dfm}

procedure Tfrap.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
   registrocavchave.AsString:=vChaveMestre;
end;

end.
