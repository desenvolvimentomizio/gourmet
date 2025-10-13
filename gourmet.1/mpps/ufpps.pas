unit ufpps;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList, PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, ufranpp;

type
  Tfpps = class(Tfrmbase)
    registroppscodigo: TStringField;
    registroppsidentificacao: TStringField;
    registrocpscodigo: TIntegerField;
    cps: TUniQuery;
    cpscpscodigo: TIntegerField;
    cpscpsidentificacao: TStringField;
    Label1: TLabel;
    ppscodigo: TDBEdit;
    Label2: TLabel;
    cpscodigo: TDBEdit;
    Label3: TLabel;
    ppsidentificacao: TDBMemo;
    registrocpsidientificacao: TStringField;
    plnpp: TPanel;
    bvalidar: TButton;
    procedure bvalidarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    hppn: THandle;

  end;

var
  fpps: Tfpps;

implementation

{$R *.dfm}

procedure Tfpps.bvalidarClick(Sender: TObject);
var
  podeppn: Boolean;
  fra: Tfranpp;
  i: integer;
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

  hppn := CarregaFrame('mnpp', plnpp, 'NCMs');
  podeppn := True;
  fra := nil;
  fra := Tfranpp(Application.FindComponent('franpp'));

  if Self.psituacao.Caption = 'Incluindo' then
  begin
    if fra <> nil then
      if (fra is Tfranpp) then
        if (fra as Tfranpp).vretorno = '0' then
        begin
          podeppn := False;
          Self.psituacao.Caption := 'Cancelando';
        end;
  end
  else
    podeppn := True;

  if Situacao = 'Incluindo' then
    SelectNext(fra, True, True);

  if (podeppn = False) then
    Self.bcancela.Click;

end;

end.
