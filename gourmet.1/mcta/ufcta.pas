unit ufcta;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics, ufuncoes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess,

  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  System.Actions, Vcl.ActnList, Vcl.ImgList, PngImageList, System.ImageList;

type
  Tfcta = class(Tfrmbase)
    tct: tuniquery;
    tcttctcodigo: TIntegerField;
    tcttctidentificacao: TStringField;
    bco: tuniquery;
    bcobcocodigo: TStringField;
    bcobconome: TStringField;
    Label1: TLabel;
    ctacodigo: TDBEdit;
    ctaidentificacao: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    tctcodigo: TDBEdit;
    bcocodigo: TDBEdit;
    Label3: TLabel;
    lctanumero: TLabel;
    ctanumero: TDBEdit;
    lctanumerodig: TLabel;
    ctanumerodig: TDBEdit;
    ctaagenciadig: TDBEdit;
    lctaagenciadig: TLabel;
    ctaagencia: TDBEdit;
    lctaagencia: TLabel;
    registroctacodigo: TIntegerField;
    registroctaidentificacao: TStringField;
    registrobcocodigo: TStringField;
    registrobconome: TStringField;
    registrotctcodigo: TIntegerField;
    registrotctidentificacao: TStringField;
    registroctanumero: TStringField;
    registroctaagencia: TStringField;
    registroctanumerodig: TStringField;
    registroctaagenciadig: TStringField;
    registroctasenha: TStringField;
    registroctafluxo: TIntegerField;
    registroctadtmovi: TDateField;
    registroctadtatu: TDateField;
    registroctavctlimite: TDateField;
    sen: tuniquery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosenativa: TStringField;
    registrosenfluxo: TStringField;
    Label9: TLabel;
    ctaativa: TDBEdit;
    Label10: TLabel;
    ctafluxo: TDBEdit;
    registroctaativa: TStringField;
    registroctasldmovi: TFloatField;
    registroctalimite: TFloatField;
    registropcgcodigo: TIntegerField;
    pcg: tuniquery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgidentificacao: TStringField;
    lbpcgcodigo: TLabel;
    pcgcodigo: TDBEdit;
    cfgcfgusactb: TIntegerField;
    registropcgidentificacao: TStringField;
    registroctaterminal: TIntegerField;
    registrosenterminal: TStringField;
    Label5: TLabel;
    ctaterminal: TDBEdit;
    lctalimite: TLabel;
    ctalimite: TDBEdit;
    registroctacnpjbanco: TStringField;
    Label6: TLabel;
    ctacnpjbanco: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure DSRegistroDataChange(Sender: TObject; Field: TField);
  private
  public
    { Public declarations }
  end;

var
  fcta: Tfcta;

  // Início ID do Módulo fracta
const
  vPlIdMd = '01.02.07.002-02';

  // Fim ID do Módulo fracta

implementation

{$R *.dfm}

procedure Tfcta.DSRegistroDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  { tarefa: 1750 }

  if not registro.Active then
    exit;

  if self.tctcodigo.Field.AsString = '' then
    exit;

  if self.tctcodigo.Field.AsInteger = tctContaBancaria then
  begin
    lctanumero.Visible := true;
    ctanumero.Visible := true;
    lctanumerodig.Visible := true;
    ctanumerodig.Visible := true;
    lctaagencia.Visible := true;
    ctaagencia.Visible := true;
    lctaagenciadig.Visible := true;
    ctaagenciadig.Visible := true;
    ctalimite.Visible := true;
    lctalimite.Visible := true;

    self.Height := 408;
  end
  else
  begin
    lctanumero.Visible := false;
    ctanumero.Visible := false;
    lctanumerodig.Visible := false;
    ctanumerodig.Visible := false;
    lctaagencia.Visible := false;
    ctaagencia.Visible := false;
    lctaagenciadig.Visible := false;
    ctaagenciadig.Visible := false;
    ctalimite.Visible := False;
    lctalimite.Visible := false;

    self.Height := 290;

  end;
  { tarefa: 1750 }
end;

procedure Tfcta.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  cfg.Connection := zcone;
  cfg.Open;
  if cfgcfgusactb.AsInteger = 1 then
  begin
    lbpcgcodigo.Visible := true;
    pcgcodigo.Visible := true;
    registropcgcodigo.Required := true;
  end
  else
  begin
    lbpcgcodigo.Visible := false;
    pcgcodigo.Visible := false;
    registropcgcodigo.Required := false;
  end;

  inherited;

  if psituacao.Caption = 'Incluindo' then
    self.Height := 260;

end;

end.
