unit ufpad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfpad = class(Tfrmbase)
    registropadcodigo: TIntegerField;
    registropadidentificacao: TStringField;
    registropadncm: TStringField;
    registropadpis: TFloatField;
    registropadcofins: TFloatField;
    Label1: TLabel;
    padcodigo: TDBEdit;
    Label2: TLabel;
    padidentificacao: TDBEdit;
    Label3: TLabel;
    padextipi: TDBEdit;
    Label4: TLabel;
    padpis: TDBEdit;
    Label5: TLabel;
    padcofins: TDBEdit;
    registropadextipi: TStringField;
    registropadcodigopiscofins: TStringField;
    Label6: TLabel;
    padcodigopiscofins: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpad: Tfpad;

implementation

{$R *.dfm}

procedure Tfpad.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registropadncm.AsString:='00000000';
end;

end.
