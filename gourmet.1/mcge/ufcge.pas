unit ufcge;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, uFuncoes, Vcl.Mask,
  Vcl.DBCtrls ;

type
  Tfcge = class(Tfrmbase)
    registrocgechave: TIntegerField;
    registrocgeidentificacao: TStringField;
    registrocgedatainicial: TDateField;
    registrocgedatafinal: TDateField;
    registrocgeobservacao: TStringField;
    registrocgeano: TIntegerField;
    registroclbcodigo: TIntegerField;
    registrocgeregistro: TDateTimeField;
    Label1: TLabel;
    cgechave: TDBEdit;
    Label2: TLabel;
    cgeidentificacao: TDBEdit;
    Label3: TLabel;
    cgedatainicial: TDBEdit;
    Label4: TLabel;
    cgedatafinal: TDBEdit;
    Label5: TLabel;
    cgeano: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcge: Tfcge;

implementation

{$R *.dfm}

procedure Tfcge.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
registroclbcodigo.AsInteger:=acesso.Usuario;
registrocgeregistro.AsString:=agora(application,ZCone);

end;

end.
