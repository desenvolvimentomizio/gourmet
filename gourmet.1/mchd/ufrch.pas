unit ufrch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,ufuncoes;

type
  Tfrch = class(Tfrmbase)
    registrorchchave: TIntegerField;
    registrochdchave: TIntegerField;
    registrorchregistro: TDateTimeField;
    registroclbcodigo: TIntegerField;
    registrorchatribuinte: TIntegerField;
    Label1: TLabel;
    rchchave: TDBEdit;
    Label2: TLabel;
    clbcodigo: TDBEdit;
    clb: TUniQuery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    registroclbidentificacao: TStringField;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frch: Tfrch;

implementation

{$R *.dfm}

procedure Tfrch.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrorchregistro.AsString:=agora(application, ZCone);
  self.registrorchatribuinte.AsInteger:=acesso.Usuario;
  self.registrochdchave.AsString:=vChaveMestre;
end;

end.
