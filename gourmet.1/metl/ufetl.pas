unit ufetl;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.ImgList, Vcl.Controls, PngImageList,
  System.Classes, System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, uPegaBase, System.ImageList;

type
  Tfetl = class(Tfrmbase)
    registroetlchave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registroetllimitetotal: TFloatField;
    registroetltipo: TIntegerField;
    registroetldias: TIntegerField;
    Label1: TLabel;
    etlchave: TDBEdit;
    Label3: TLabel;
    etllimitetotal: TDBEdit;
    registroetldescontopadrao: TFloatField;
    Label2: TLabel;
    etldescontopadrao: TDBEdit;
    procedure registroBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fetl: Tfetl;

  // Início ID do Módulo fetl
const
  vPlIdMd = '01.01.01.011-01';
  vPlTitMdl = 'Crédito e Faturamento';

  // Fim ID do Módulo fetl

implementation

{$R *.dfm}

function formulario(pCargaFrame: TCargaFrame): string;
begin
  fetl := Tfetl.Create(pCargaFrame);
  fetl.ShowModal;
  fetl.Free;
end;

exports formulario;

procedure Tfetl.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;

end;

procedure Tfetl.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroetltipo.AsInteger := 1;
  registroetldias.AsInteger := 30;
  registroetdcodigo.AsString := self.vChaveMestre;
  registroetldescontopadrao.AsFloat := 0;

end;

procedure Tfetl.registroBeforePost(DataSet: TDataSet);
begin
  inherited;
  self.registroetdcodigo.AsString := self.vChaveMestre;
end;

end.
