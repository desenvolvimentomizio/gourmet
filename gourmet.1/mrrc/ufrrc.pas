unit ufrrc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList, PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,ufuncoes;

type
  Tfrrc = class(Tfrmbase)
    registrorrcchave: TIntegerField;
    registrorrcdata: TDateField;
    registrorrcvalor: TFloatField;
    registrocedcodigo: TIntegerField;
    registroctacodigo: TIntegerField;
    registroclbcodigo: TIntegerField;
    registroadccodigo: TIntegerField;
    registroflacodigo: TIntegerField;
    adc: TUniQuery;
    adcadccodigo: TIntegerField;
    adcadcidentificacao: TStringField;
    registroadcidentificacao: TStringField;
    ced: TUniQuery;
    cedcedcodigo: TIntegerField;
    cedcedidentificacao: TStringField;
    registrocedidentificacao: TStringField;
    cta: TUniQuery;
    ctactacodigo: TIntegerField;
    ctactaidentificacao: TStringField;
    registroctaidentificacao: TStringField;
    Label1: TLabel;
    rrcchave: TDBEdit;
    Label2: TLabel;
    rrcdata: TDBEdit;
    Label3: TLabel;
    adccodigo: TDBEdit;
    Label4: TLabel;
    rrcvalor: TDBEdit;
    Label5: TLabel;
    cedcodigo: TDBEdit;
    Label6: TLabel;
    ctacodigo: TDBEdit;
    registrorrcregistro: TDateTimeField;
    registrorrcnumero: TStringField;
    Label7: TLabel;
    rrcnumero: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure ctacodigoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frrc: Tfrrc;

implementation

{$R *.dfm}

procedure Tfrrc.ctacodigoEnter(Sender: TObject);
begin
  inherited;
  self.txtFiltro:= 'tctcodigo=2';
end;

procedure Tfrrc.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrorrcregistro.AsString:=agora( application,ZCone);
  self.registroclbcodigo.AsInteger:=acesso.Usuario;
  self.registroflacodigo.AsInteger:=acesso.Filial;
end;

end.
