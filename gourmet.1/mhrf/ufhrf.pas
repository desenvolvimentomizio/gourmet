unit ufhrf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, uFuncoes;

type
  Tfhrf = class(Tfrmbase)
    registrohrfchave: TIntegerField;
    registrophgcodigo: TIntegerField;
    phg: TUniQuery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    registrophgidentificacao: TStringField;
    Label1: TLabel;
    hrfchave: TDBEdit;
    Label2: TLabel;
    phgcodigo: TDBEdit;
    registropcgcodigo: TIntegerField;
    registroclbcodigo: TIntegerField;
    registrohrfregistro: TDateTimeField;
    procedure registroBeforePost(DataSet: TDataSet);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fhrf: Tfhrf;

implementation

{$R *.dfm}

procedure Tfhrf.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroclbcodigo.AsInteger := acesso.Usuario;
  registrohrfregistro.AsString := agora(application, ZCone);

end;

procedure Tfhrf.registroBeforePost(DataSet: TDataSet);
begin
  inherited;
  registropcgcodigo.AsString := vChaveMestre;
end;

end.
