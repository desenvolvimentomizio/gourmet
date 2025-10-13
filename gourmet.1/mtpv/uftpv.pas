unit uftpv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  ufraitp, ufrabase;

type
  Tftpv = class(Tfrmbase)
    registrotpvcodigo: TIntegerField;
    registrotpvidentificacao: TStringField;
    registrotpvdescontomaximo: TFloatField;
    registrotpvprazomaximo: TIntegerField;
    registrotpvpercentualavista: TFloatField;
    Label1: TLabel;
    tpvcodigo: TDBEdit;
    Label2: TLabel;
    tpvidentificacao: TDBEdit;
    Label3: TLabel;
    tpvdescontomaximo: TDBEdit;
    Label4: TLabel;
    tpvprazomaximo: TDBEdit;
    Label5: TLabel;
    tpvpercentualavista: TDBEdit;
    bvalidar: TButton;
    plitp: TPanel;
    registrotpvpercentual: TFloatField;
    registrotpvintervalodias: TIntegerField;
    registrotpvdiasentrada: TIntegerField;
    Label9: TLabel;
    tpvdiasentrada: TDBEdit;
    tpvintervalodias: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    tpvpercentual: TDBEdit;
    registrodescodigo: TIntegerField;
    descodigo: TDBEdit;
    des: TUniQuery;
    desdescodigo: TIntegerField;
    desdesidentificacao: TStringField;
    registrodesidentificacao: TStringField;
    procedure bvalidarClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    procedure salvacolunasframes;
    { Private declarations }

  public
    { Public declarations }
    hitp: THandle;
  end;

var
  ftpv: Tftpv;

implementation

{$R *.dfm}

procedure Tftpv.bconfirmaClick(Sender: TObject);
begin
  inherited;

  salvacolunasframes;

end;

procedure Tftpv.salvacolunasframes;
var
  fra: Tframe;
  I: Integer;
begin

  fra := nil;
  fra := Tfrabase(Application.FindComponent('fraitp'));
  if fra <> nil then
    (fra as Tfrabase).salvacolunas;

end;

procedure Tftpv.bvalidarClick(Sender: TObject);
var
  podeitp: Boolean;

  fra: Tfraitp;

  I: Integer;
begin

  (*
    ** Atribui valores para Unidade e Quantidade Tributária se estiver desabilitada **
  *)

  inherited;

  if not ValidaCamposRequeridos then
    Exit;

  Self.bvalidar.Visible := False;

  If (Self.registro.State in [dsEdit, dsInsert]) Then
    Self.registro.Post;

  bconfirma.Enabled := True;

  hitp := CarregaFrame('mitp', plitp, 'Itens de Tabela de Preços');
  podeitp := True;
  fra := nil;
  fra := Tfraitp(Application.FindComponent('fraitp'));

  if Self.psituacao.Caption = 'Incluindo' then
  begin
    if fra <> nil then
      if (fra is Tfraitp) then
        if (fra as Tfraitp).vretorno = '0' then
        begin
          podeitp := False;
          Self.psituacao.Caption := 'Cancelando';
        end;
  end
  else
    podeitp := True;

  if Situacao = 'Incluindo' then
    SelectNext(fra, True, True);

  if (podeitp = False) then
    Self.bcancela.Click;

end;

end.
