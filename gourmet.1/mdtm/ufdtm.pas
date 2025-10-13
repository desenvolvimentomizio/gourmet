unit ufdtm;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ImgList, Vcl.Controls, PngImageList,
  System.Classes, System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, uFuncoes, uPegaBase;

type
  Tfdtm = class(Tfrmbase)
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
    Bevel1: TBevel;
    Label4: TLabel;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    FMesChave: String;

  published
    property MesChave: String read FMesChave write FMesChave;

  public
    { Public declarations }
    vetdfrete: string;
  end;

var
  fdtm: Tfdtm;

  // Início ID do Módulo fradtm
const
  vPlIdMd = '02.04.09.002-01';
  vPlTitMdl = 'Dados de Transporte - NF-e';

  // Fim ID do Módulo fradtm

implementation

{$R *.dfm}

function formulario(pCargaFrame: TCargaFrame): string;
begin
  fdtm := Tfdtm.Create(pCargaFrame);
  fdtm.ShowModal;
  fdtm.Free;
end;

exports formulario;

procedure Tfdtm.bconfirmaClick(Sender: TObject);
begin
  registrodtmplaca.AsString := BuscaTroca(registrodtmplaca.AsString, '-', '');
  inherited;
end;

procedure Tfdtm.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  MesChave := vChaveMestre;

  inherited;
end;

procedure Tfdtm.registroAfterInsert(DataSet: TDataSet);
begin
  registromeschave.AsString := MesChave;
  registrodtmvolumes.AsFloat := 1;
  registrodtmpesobruto.AsFloat := 0;
  registrodtmpesoliq.AsFloat := 0;
end;

end.
