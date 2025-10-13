unit ufexh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.CheckLst;

type
  Tfexh = class(Tfrmbase)
    registroexhcodigo: TIntegerField;
    registroclbcodigo: TIntegerField;
    registroexbcodigo: TIntegerField;
    registroexhsegunda: TIntegerField;
    registroexhterca: TIntegerField;
    registroexhquinta: TIntegerField;
    registroexhquarta: TIntegerField;
    registroexhsexta: TIntegerField;
    registroexhsabado: TIntegerField;
    registroexhdomingo: TIntegerField;
    lbcodigo: TLabel;
    exhcodigo: TDBEdit;
    lbsegunda: TLabel;
    exhsegunda: TDBEdit;
    lbterca: TLabel;
    exhterca: TDBEdit;
    lbquarta: TLabel;
    exhquarta: TDBEdit;
    lbquinta: TLabel;
    exhquinta: TDBEdit;
    lbsexta: TLabel;
    exhsexta: TDBEdit;
    lbsabado: TLabel;
    exhsabado: TDBEdit;
    lbdomingo: TLabel;
    exhdomingo: TDBEdit;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosenexhsegunda: TStringField;
    registrosenexhterca: TStringField;
    registrosenexhquarta: TStringField;
    registrosenexhquinta: TStringField;
    registrosenexhsexta: TStringField;
    registrosenexhsabado: TStringField;
    registrosenexhdomingo: TStringField;
    registroexhidentificacao: TStringField;
    Label1: TLabel;
    exhidentificacao: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  fexh: Tfexh;

implementation

{$R *.dfm}
{ Tfexh }

procedure Tfexh.bconfirmaClick(Sender: TObject);
begin
  registro.Post;
  inherited;
end;

procedure Tfexh.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroclbcodigo.AsInteger := acesso.Usuario;
  registroexbcodigo.AsString := vChaveMestre;
end;

end.
