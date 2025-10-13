unit ufctd;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess,     
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  System.ImageList, Vcl.ImgList, PngImageList, System.Actions, Vcl.ActnList;

type
  Tfctd = class(Tfrmbase)
    registroctdcodigo: TIntegerField;
    registrocfgcodigo: TIntegerField;
    registroctdidentificacao: TStringField;
    registroctdcpf: TStringField;
    registroctdcrc: TStringField;
    registroctdcnpj: TStringField;
    registroctdendereco: TStringField;
    registroctdnumero: TStringField;
    registroctdcomple: TStringField;
    registroctdbairro: TStringField;
    registroctdfone: TStringField;
    registroctdfax: TStringField;
    registroctdemail: TStringField;
    registrocddcodigo: TStringField;
    registrocddnome: TStringField;
    registroctdboxedominio: TStringField;
    Label2: TLabel;
    ctdidentificacao: TDBEdit;
    Label3: TLabel;
    ctdcpf: TDBEdit;
    Label4: TLabel;
    ctdcnpj: TDBEdit;
    Label5: TLabel;
    ctdcrc: TDBEdit;
    Label6: TLabel;
    ctdendereco: TDBEdit;
    Label7: TLabel;
    ctdnumero: TDBEdit;
    Label8: TLabel;
    ctdbairro: TDBEdit;
    Label9: TLabel;
    ctdcomple: TDBEdit;
    Label10: TLabel;
    ctdfone: TDBEdit;
    Label11: TLabel;
    ctdfax: TDBEdit;
    Label1: TLabel;
    ctdcep: TDBEdit;
    Label12: TLabel;
    cddcodigo: TDBEdit;
    Label13: TLabel;
    ctdemail: TDBEdit;
    ctdboxedominio: TDBEdit;
    Label14: TLabel;
    cdd: tuniquery;
    cddcddcodigo: TStringField;
    cddcddnome: TStringField;
    registroctdcep: TStringField;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    modo:string;
  end;

var
  fctd: Tfctd;

implementation

{$R *.dfm}


procedure Tfctd.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrocfgcodigo.AsInteger:=1;
end;

end.
