unit ufpmp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, uPegabase, ufuncoes,
  Vcl.Mask, Vcl.DBCtrls;

type
  Tfpmp = class(Tfrmbase)
    registropmpchave: TIntegerField;
    registropmpregistro: TDateTimeField;
    registropmpexclusao: TDateTimeField;
    registropmocodigo: TIntegerField;
    registroprocodigo: TIntegerField;
    registroclbregistro: TIntegerField;
    registroclbexclusao: TIntegerField;
    Label1: TLabel;
    procodigo: TDBEdit;
    Label2: TLabel;
    pmpchave: TDBEdit;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    registropronome: TStringField;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpmp: Tfpmp;

implementation

{$R *.dfm}

procedure Tfpmp.bconfirmaClick(Sender: TObject);
begin
  if psituacao.Caption = 'Alterando' then
  begin
    registropmpexclusao.AsString := agora(Application, ZCone);
    registroclbexclusao.AsInteger := acesso.usuario;
  end
  else
  begin
  consulta.close;
  consulta.SQL.Text:='select pmpchave from pmp where pmocodigo='+vChaveMestre +' and procodigo='+procodigo.Field.AsString+' and pmpexclusao is null';
  consulta.Open;

  if not consulta.IsEmpty then
  begin
    ShowMessage('Este produto ja faz parte desta promoção!');
    close;
    exit;

  end;





  end;

  inherited;
end;

procedure Tfpmp.FormShow(Sender: TObject);
begin
  inherited;
 if psituacao.Caption = 'Alterando' then
  begin
    procodigo.enabled:=false;
    bconfirma.SetFocus;
  end;
end;

procedure Tfpmp.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;

  registropmocodigo.AsString := vChaveMestre;
  registropmpregistro.AsString := agora(Application, ZCone);
  registroclbregistro.AsInteger := acesso.usuario;

end;

end.
