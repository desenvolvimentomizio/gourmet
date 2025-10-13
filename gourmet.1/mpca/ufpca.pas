unit ufpca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfpca = class(Tfrmbase)
    registropcachave: TIntegerField;
    registropcaidentificacao: TStringField;
    registroprocodigo: TIntegerField;
    registropcatabela: TStringField;
    Label1: TLabel;
    pcachave: TDBEdit;
    Label2: TLabel;
    pcaidentificacao: TDBEdit;
    Label4: TLabel;
    pcatabela: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpca: Tfpca;

implementation

{$R *.dfm}

procedure Tfpca.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroprocodigo.AsString:=vChaveMestre;
end;

end.
