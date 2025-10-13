unit ufpco;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tfpco = class(Tfrmbase)
    uni: tuniquery;
    uniunicodigo: TIntegerField;
    uniuninome: TStringField;
    pro: tuniquery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    registropcocodigo: TIntegerField;
    registroprocodigo: TIntegerField;
    registropcosubproduto: TIntegerField;
    registropronome: TStringField;
    registrounicodigo: TIntegerField;
    registrouninome: TStringField;
    registropcoquantidade: TFloatField;
    pcosubproduto: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    unicodigo: TDBEdit;
    pcoquantidade: TDBEdit;
    Label4: TLabel;
    registropcosaborfixo: TIntegerField;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosenpcosaborfixo: TStringField;
    Label1: TLabel;
    pcosaborfixo: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fpco: Tfpco;

  // Início ID do Módulo frapco
const
  vPlIdMd = '01.01.05.009-02';

  // Fim ID do Módulo frapco

implementation

{$R *.dfm}

procedure Tfpco.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

procedure Tfpco.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Self.registroprocodigo.AsString := Self.vChaveMestre;
end;

end.
