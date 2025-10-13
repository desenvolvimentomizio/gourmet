unit ufdtmcpr;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess,     
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfdtmcpr = class(Tfrmbase)
    etd: tuniquery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    ufs: tuniquery;
    ufsufscodigo: TStringField;
    ufsufssigla: TStringField;
    mes: tuniquery;
    mesetdcodigo: TIntegerField;
    registrodtmchave: TIntegerField;
    registromeschave: TIntegerField;
    registrodtmplaca: TStringField;
    registrodtmvolumes: TFloatField;
    registrodtmpesobruto: TFloatField;
    registrodtmpesoliq: TFloatField;
    registroetdcodigo: TIntegerField;
    registroetdidentificacao: TStringField;
    registroufscodigo: TStringField;
    registroufssigla: TStringField;
    registrodtmespecie: TStringField;
    registrodtmmarcas: TStringField;
    Label1: TLabel;
    etdcodigo: TDBEdit;
    ufscodigo: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    dtmplaca: TDBEdit;
    GBEmbalagens: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    dtmvolumes: TDBEdit;
    dtmespecie: TDBEdit;
    dtmmarcas: TDBEdit;
    dtmpesobruto: TDBEdit;
    dtmpesoliq: TDBEdit;
    mesrefcodigo: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdtmcpr: Tfdtmcpr;

implementation

{$R *.dfm}

end.
