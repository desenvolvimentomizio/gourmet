unit ufdtmsrv;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tfdtmsrv = class(Tfrmbase)
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
  fdtmsrv: Tfdtmsrv;

implementation

{$R *.dfm}

end.
