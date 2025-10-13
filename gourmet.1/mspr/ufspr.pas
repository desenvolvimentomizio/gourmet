unit ufspr;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, 
    Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, ufrapsh, Vcl.AppEvnts;

type
  Tfspr = class(Tfrmbase)
    registrosprcodigo: TIntegerField;
    registrosprdtinicial: TDateField;
    registrosprdtfinal: TDateField;
    registroclbcodigo: TIntegerField;
    Label1: TLabel;
    sprcodigo: TDBEdit;
    Label2: TLabel;
    sprdtinicial: TDBEdit;
    Label3: TLabel;
    sprdtfinal: TDBEdit;
    Label4: TLabel;
    clbcodigo: TDBEdit;
    clb: tuniquery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    registroclbidentificacao: TStringField;
    Spt3: TSplitter;
    Plpsh: TPanel;
    bvalidar: TButton;
    procedure bvalidarClick(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    hpsh: Thandle;
    procedure salvacolunasframes;
  public
    { Public declarations }
  end;

var
  fspr: Tfspr;

  // Início ID do Módulo fraspr
const
  vPlIdMd = '03.07.80.008-02';

  // Fim ID do Módulo fraspr

implementation

{$R *.dfm}

procedure Tfspr.bvalidarClick(Sender: TObject);
begin
  inherited;

  registro.Post;
  registro.Edit;
  hpsh := CarregaFrame('mpsh', Plpsh, self.zcone, 'Tarefas');

end;

procedure Tfspr.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

procedure Tfspr.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrosprdtinicial.AsFloat := date;
  self.registrosprdtfinal.AsFloat := date;

end;

procedure Tfspr.salvacolunasframes;
var
  fra: Tframe;
begin
  if hpsh <> 0 then
  begin
    fra := nil;
    fra := Tfrapsh(application.FindComponent('frapsh'));
    if fra <> nil then
    begin
      if (fra is Tfrapsh) then
      begin
        (fra as Tfrapsh).salvacolunas;
      end;
    End;
  end;
end;

end.
