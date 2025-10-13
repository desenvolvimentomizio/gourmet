unit uffin;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tffin = class(Tfrmbase)
    Label1: TLabel;
    fincodigo: TDBEdit;
    finimpressora: TDBEdit;
    Label4: TLabel;
    registrofincodigo: TIntegerField;
    registrotrmcodigo: TIntegerField;
    registrofinimpressora: TIntegerField;
    mda: tuniquery;
    mdamdacodigo: TIntegerField;
    mdamdaidentificacao: TStringField;
    registromdacodigo: TIntegerField;
    registromdaidentificacao: TStringField;
    Label3: TLabel;
    mdacodigo: TDBEdit;
    registrocitcodigo: TIntegerField;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  ffin: Tffin;

  // Início ID do Módulo frafin
const
  vPlIdMd = '03.08.19.002-02';

  // Fim ID do Módulo frafin

implementation

{$R *.dfm}

procedure Tffin.bconfirmaClick(Sender: TObject);
begin
  consulta.Close;
  consulta.sql.Text := 'select trmcodigo from cit where citcodigo=' + self.vChaveMestre;
  consulta.Open;
  self.registrotrmcodigo.AsInteger := self.consulta.Fields[0].AsInteger;

  inherited;

end;

procedure Tffin.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

procedure Tffin.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrocitcodigo.AsString := self.vChaveMestre;
end;

end.
