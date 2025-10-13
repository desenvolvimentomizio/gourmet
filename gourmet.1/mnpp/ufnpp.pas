unit ufnpp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList, PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfnpp = class(Tfrmbase)
    registronppchave: TIntegerField;
    registroppscodigo: TStringField;
    registronppncm: TStringField;
    Label1: TLabel;
    nppchave: TDBEdit;
    Label2: TLabel;
    nppncm: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fnpp: Tfnpp;

implementation

{$R *.dfm}

procedure Tfnpp.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroppscodigo.AsString:=vChaveMestre;
end;

end.
