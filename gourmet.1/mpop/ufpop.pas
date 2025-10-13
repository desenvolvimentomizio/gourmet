unit ufpop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfpop = class(Tfrmbase)
    registropopchave: TIntegerField;
    registroogechave: TIntegerField;
    registropcgcodigo: TIntegerField;
    registropoppercentual: TFloatField;
    Label1: TLabel;
    popchave: TDBEdit;
    Label3: TLabel;
    pcgcodigo: TDBEdit;
    Label4: TLabel;
    poppercentual: TDBEdit;
    pcg: TUniQuery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgidentificacao: TStringField;
    registropcgidentificacao: TStringField;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpop: Tfpop;

implementation

{$R *.dfm}

procedure Tfpop.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registroogechave.AsString:=vChaveMestre;
end;

end.
