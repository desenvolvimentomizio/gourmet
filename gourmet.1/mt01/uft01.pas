unit uft01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  upegabase, ufuncoes, DateUtils;

type
  Tft01 = class(Tfrmbase)
    registrot01chave: TIntegerField;
    registrot01nomecliente: TStringField;
    registrot01nomeanimal: TStringField;
    registrot01telefone: TStringField;
    registrot01pesoanimal: TFloatField;
    registroorcchave: TIntegerField;
    registromeschave: TIntegerField;
    Label1: TLabel;
    t01chave: TDBEdit;
    Label2: TLabel;
    t01nomecliente: TDBEdit;
    Label3: TLabel;
    t01telefone: TDBEdit;
    Label4: TLabel;
    t01nomeanimal: TDBEdit;
    Label5: TLabel;
    t01pesoanimal: TDBEdit;
    registrot01proxidatamacompra: TDateField;
    Label6: TLabel;
    t01proxidatamacompra: TDBEdit;
    registrot01proximacompra: TIntegerField;
    Label7: TLabel;
    t01proximacompra: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure t01proxidatamacompraEnter(Sender: TObject);
    procedure t01proxidatamacompraExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ft01: Tft01;

const
  vPlTitMdl = 'Dados Adicionais de Venda';

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  ft01 := Tft01.Create(pCargaFrame);
  ft01.ShowModal;
  ft01.Free;
end;

exports formu;

procedure Tft01.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroorcchave.AsString := vChaveMestre;
end;

procedure Tft01.t01proxidatamacompraEnter(Sender: TObject);
begin
  inherited;
  if t01proximacompra.Field.AsString<>'' then
  begin
  try
  t01proxidatamacompra.Field.AsDateTime:= Strtodate(hoje(application,ZCone))+t01proximacompra.Field.AsInteger;
  except
    Showmessage('Data Inválida');
  end;


  end;

end;

procedure Tft01.t01proxidatamacompraExit(Sender: TObject);
begin
  inherited;
  if (t01proximacompra.Field.AsString='') and (t01proxidatamacompra.Field.AsString<>'') then
  begin
    t01proximacompra.Field.AsInteger:= DaysBetween( t01proxidatamacompra.Field.AsDateTime, Strtodate(hoje(application,ZCone)));

  end;

end;

end.
