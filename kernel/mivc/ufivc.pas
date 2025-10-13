unit ufivc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfivc = class(Tfrmbase)
    registroivcchave: TIntegerField;
    registroivcdatahorainicio: TDateTimeField;
    registroivcdatahorafinal: TDateTimeField;
    registroclbcodigo: TIntegerField;
    Label1: TLabel;
    ivcchave: TDBEdit;
    Label2: TLabel;
    ivcdatahorainicio: TDBEdit;
    Label3: TLabel;
    ivcdatahorafinal: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fivc: Tfivc;

implementation

{$R *.dfm}

procedure Tfivc.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroclbcodigo.AsInteger := acesso.usuario;
end;

end.
