unit ufpdc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList, PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, ufuncoes;

type
  Tfpdc = class(Tfrmbase)
    registropdcchave: TIntegerField;
    registropdcemissao: TDateField;
    registroetdcodigo: TIntegerField;
    registropdcregistro: TDateTimeField;
    registropdcrecebimento: TDateField;
    registroclbcodigo: TIntegerField;
    registropdcobs: TStringField;
    registrotspcodigo: TIntegerField;
    registrottrcodigo: TIntegerField;
    registropdcnumerofornecedor: TStringField;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    ttr: TUniQuery;
    ttrttrcodigo: TIntegerField;
    ttrttridentificacao: TStringField;
    registrottridentificacao: TStringField;
    Label1: TLabel;
    pdcchave: TDBEdit;
    Label2: TLabel;
    pdcemissao: TDBEdit;
    Label3: TLabel;
    etdcodigo: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    pdcnumerofornecedor: TDBEdit;
    pdcobs: TDBEdit;
    Label6: TLabel;
    ttrcodigo: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpdc: Tfpdc;

implementation

{$R *.dfm}

procedure Tfpdc.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registropdcemissao.AsString := hoje(application, zcone);
  self.registropdcregistro.AsString := agora(application, zcone);
  self.registroclbcodigo.AsInteger := acesso.Usuario;
  self.registrotspcodigo.AsInteger := 1;

end;

end.
