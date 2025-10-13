unit ufrcb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList, PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, ufuncoes;

type
  Tfrcb = class(Tfrmbase)
    registrorcbchave: TIntegerField;
    registrorcbemissao: TDateField;
    registrorcbvalor: TFloatField;
    registroetdpagador: TIntegerField;
    registroetdrecebedor: TIntegerField;
    registrorcbhistorico: TStringField;
    registrorcbsituacao: TIntegerField;
    Label1: TLabel;
    rcbchave: TDBEdit;
    Label2: TLabel;
    rcbemissao: TDBEdit;
    Label3: TLabel;
    rcbvalor: TDBEdit;
    Label4: TLabel;
    etdpagador: TDBEdit;
    Label5: TLabel;
    etdrecebedor: TDBEdit;
    rcbhistorico: TDBMemo;
    Label6: TLabel;
    registroclbcodigo: TIntegerField;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    registrorecebedor: TStringField;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frcb: Tfrcb;

implementation

{$R *.dfm}

procedure Tfrcb.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrorcbemissao.AsString := hoje(application, ZCone);
  registroclbcodigo.asinteger := acesso.Usuario;
end;

end.
