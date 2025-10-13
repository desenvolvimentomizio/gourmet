unit uffnv;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, 
    Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  Tffnv = class(Tfrmbase)
    registrofnvchave: TIntegerField;
    registrofnscodigo: TIntegerField;
    registrofnvdescricao: TStringField;
    registrofnvversao: TIntegerField;
    Label1: TLabel;
    fnvchave: TDBEdit;
    Label2: TLabel;
    fnvdescricao: TDBMemo;
    Label3: TLabel;
    fnvversao: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ffnv: Tffnv;

implementation

{$R *.dfm}

procedure Tffnv.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrofnscodigo.AsString:=self.vChaveMestre;

end;

end.
