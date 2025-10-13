unit ufmad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Vcl.ImgList, PngImageList,
  System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, System.ImageList;

type
  Tfmad = class(Tfrmbase)
    registromadchave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registrospdchave: TIntegerField;
    registromadvalorccredito: TFloatField;
    registromadvalorcdebito: TFloatField;
    registromadapurccredito: TFloatField;
    registromadapurcdebito: TFloatField;
    Label1: TLabel;
    madchave: TDBEdit;
    Label2: TLabel;
    etdcodigo: TDBEdit;
    Label3: TLabel;
    madvalorccredito: TDBEdit;
    Label4: TLabel;
    madvalorcdebito: TDBEdit;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmad: Tfmad;

  // Início ID do Módulo fmad
const
  vPlIdMd = '00.00.00.000-02';

  // Fim ID do Módulo fmad

implementation

{$R *.dfm}

procedure Tfmad.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
 // self.txtFiltro:=' etdcodigo in (select etdcodigo from adc)';

end;

procedure Tfmad.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
self.registrospdchave.AsString:=vChaveMestre;
end;

end.
