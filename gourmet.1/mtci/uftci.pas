unit uftci;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tftci = class(Tfrmbase)
    registrotcicodigo: TIntegerField;
    registrotrmcodigo: TIntegerField;
    registromitcodigo: TIntegerField;
    registrotciporta: TStringField;
    Label1: TLabel;
    tcicodigo: TDBEdit;
    Label2: TLabel;
    trmcodigo: TDBEdit;
    Label3: TLabel;
    mitcodigo: TDBEdit;
    Label4: TLabel;
    tciporta: TDBEdit;
    trm: tuniquery;
    trmtrmcodigo: TIntegerField;
    trmtrmidentificacao: TStringField;
    mit: tuniquery;
    registrotrmidentificacao: TStringField;
    mitmitcodigo: TIntegerField;
    registrotitidentificacao: TStringField;
    mitmitidentificacao: TStringField;
    registrotciprioridade: TIntegerField;
    Label5: TLabel;
    tciprioridade: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftci: Tftci;

  // Início ID do Módulo fratci
const
  vPlIdMd = '01.06.86.001-02';

  // Fim ID do Módulo fratci

implementation

{$R *.dfm}

procedure Tftci.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

end;

procedure Tftci.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrotrmcodigo.AsString := self.vChaveMestre;
end;

end.
