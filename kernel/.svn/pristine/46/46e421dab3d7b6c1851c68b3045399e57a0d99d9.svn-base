unit ufpce;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, ufuncoes,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfpce = class(Tfrmbase)
    registropcechave: TIntegerField;
    registropcedatahorainicio: TDateTimeField;
    registropcedatahorafinal: TDateTimeField;
    registroclbcodigo: TIntegerField;
    Label1: TLabel;
    pcechave: TDBEdit;
    lbpcedatahorainicio: TLabel;
    pcedatahorainicio: TDBEdit;
    lbpcedatahorafinal: TLabel;
    pcedatahorafinal: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpce: Tfpce;

implementation

{$R *.dfm}

procedure Tfpce.bconfirmaClick(Sender: TObject);
begin
  if psituacao.Caption = 'Alterando' then
  begin
 //   pcedatahorafinal.Field.AsString := agora(application, ZCone);
  end;
  inherited;

end;

procedure Tfpce.FormShow(Sender: TObject);
begin
  inherited;
  if psituacao.Caption = 'Incluindo' then
  begin
    lbpcedatahorainicio.Visible := True;
    pcedatahorainicio.Visible := True;

    lbpcedatahorafinal.Visible := false;
    pcedatahorafinal.Visible := false;

    pcedatahorainicio.SetFocus;
    pcedatahorainicio.Field.AsString := agora(application, ZCone);

  end
  else
  begin
    lbpcedatahorainicio.Visible := false;
    pcedatahorainicio.Visible := false;

    lbpcedatahorafinal.Visible := True;
    pcedatahorafinal.Visible := True;
    pcedatahorafinal.Field.AsString := agora(application, ZCone);

    pcedatahorafinal.SetFocus;
  end;
end;

procedure Tfpce.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroclbcodigo.AsInteger := acesso.usuario;
end;

end.
