unit ufspt;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, 
    Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, ufratsh, Vcl.AppEvnts;

type
  Tfspt = class(Tfrmbase)
    registrosptcodigo: TIntegerField;
    registrosptdtinicial: TDateField;
    registrosptdtfinal: TDateField;
    registroclbcodigo: TIntegerField;
    clb: tuniquery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    registroclbidentificacao: TStringField;
    Label1: TLabel;
    sptcodigo: TDBEdit;
    Label2: TLabel;
    sptdtinicial: TDBEdit;
    Label3: TLabel;
    sptdtfinal: TDBEdit;
    Label4: TLabel;
    clbcodigo: TDBEdit;
    bvalidar: TButton;
    Plpsh: TPanel;
    Spt3: TSplitter;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bvalidarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    htsh: Thandle;
    procedure salvacolunasframes;

  public
    { Public declarations }
  end;

var
  fspt: Tfspt;

  // Início ID do Módulo fraspt
const
  vPlIdMd = '03.07.80.009-02';

  // Fim ID do Módulo fraspt

implementation

{$R *.dfm}

procedure Tfspt.bvalidarClick(Sender: TObject);
begin
  inherited;

  registro.Post;
  registro.Edit;
  htsh := CarregaFrame('mtsh', Plpsh, self.zcone, 'Tarefas a Testar');
end;

procedure Tfspt.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

procedure Tfspt.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrosptdtinicial.AsFloat := date;
  self.registrosptdtfinal.AsFloat := date;
end;

procedure Tfspt.salvacolunasframes;
var
  fra: Tframe;
begin
  if htsh <> 0 then
  begin
    fra := nil;
    fra := Tfratsh(application.FindComponent('fratsh'));

    if fra <> nil then
      if (fra is Tfratsh) then
        (fra as Tfratsh).salvacolunas;
  end;
end;

end.
