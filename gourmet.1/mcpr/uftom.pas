unit uftom;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess,     
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  Tftom = class(Tfrmbase)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftom: Tftom;

implementation

{$R *.dfm}

procedure Tftom.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
 {}
end;

end.
