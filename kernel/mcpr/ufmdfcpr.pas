unit ufmdfcpr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, upegabase, Vcl.Mask,
  Vcl.DBCtrls, ufuncoes;

type
  Tfmdfcpr = class(Tfrmbase)
    registromaechave: TIntegerField;
    registromeschavenfe: TStringField;
    registromaenumero: TIntegerField;
    registromaeemissao: TDateField;
    registromaeregistro: TDateField;
    registromaenomemotorista: TStringField;
    registromaecpfmotorista: TStringField;
    registromaeplacaveiculo: TStringField;
    registromaeufveiculo: TStringField;
    registromaerenavanveiculo: TStringField;
    registromaequantidadeemquilos: TFloatField;
    registrosdecodigo: TStringField;
    Label1: TLabel;
    maenomemotorista: TDBEdit;
    Label2: TLabel;
    maecpfmotorista: TDBEdit;
    Label3: TLabel;
    maeplacaveiculo: TDBEdit;
    Label4: TLabel;
    maeufveiculo: TDBEdit;
    Label5: TLabel;
    maerenavanveiculo: TDBEdit;
    Label6: TLabel;
    maequantidadeemquilos: TDBEdit;
    Label7: TLabel;
    maechave: TDBEdit;
    Label8: TLabel;
    meschavenfe: TDBEdit;
    registromaeuf01: TStringField;
    registromaeuf02: TStringField;
    registromaeuf03: TStringField;
    registromaeuf04: TStringField;
    registromaeuf05: TStringField;
    registromaeuf06: TStringField;
    registromaeuf07: TStringField;
    registromaeuf08: TStringField;
    registromaeuf09: TStringField;
    registromaeuf10: TStringField;
    Label9: TLabel;
    maeuf01: TDBEdit;
    maeuf02: TDBEdit;
    maeuf03: TDBEdit;
    maeuf04: TDBEdit;
    maeuf05: TDBEdit;
    maeuf06: TDBEdit;
    maeuf07: TDBEdit;
    maeuf08: TDBEdit;
    maeuf09: TDBEdit;
    maeuf10: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmdfcpr: Tfmdfcpr;

implementation

{$R *.dfm}

procedure Tfmdfcpr.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registromaeemissao.AsString := hoje(application, zcone);
  registrosdecodigo.AsString := '00';
  registromeschavenfe.AsString := vChaveMestre;
end;

end.
