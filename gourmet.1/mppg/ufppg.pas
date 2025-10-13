unit ufppg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,ufraipg;

type
  Tfppg = class(Tfrmbase)
    registroppgchave: TIntegerField;
    registroppgemissao: TDateField;
    registroppgvencimento: TDateField;
    registroppgidentificacao: TStringField;
    registroppgobservacao: TStringField;
    registroclbcodigo: TIntegerField;
    registroflacodigo: TIntegerField;
    Label1: TLabel;
    ppgchave: TDBEdit;
    Label2: TLabel;
    ppgemissao: TDBEdit;
    Label3: TLabel;
    ppgvencimento: TDBEdit;
    Label4: TLabel;
    ppgidentificacao: TDBEdit;
    ppgobservacao: TDBMemo;
    Label5: TLabel;
    plipg: TPanel;
    bvalidar: TButton;
    procedure bvalidarClick(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
        hpun: THandle;
  end;

var
  fppg: Tfppg;

implementation

{$R *.dfm}

procedure Tfppg.bvalidarClick(Sender: TObject);
var
  podeipg: Boolean;

  fra: Tfraipg;
begin
  inherited;
 Self.bvalidar.Visible := False;

  If (Self.registro.State in [dsEdit, dsInsert]) Then
    Self.registro.Post;


     hpun := CarregaFrame('mipg', plipg, 'Itens para Pagamento');
  podeipg := True;
  fra := nil;
  fra := Tfraipg(Application.FindComponent('fraipg'));

  if Self.psituacao.Caption = 'Incluindo' then
  begin
    if fra <> nil then
      if (fra is Tfraipg) then
        if (fra as Tfraipg).vretorno = '0' then
        begin
          podeipg := False;
          Self.psituacao.Caption := 'Cancelando';
        end;
  end
  else
    podeipg := True;
end;

procedure Tfppg.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroclbcodigo.AsInteger:=acesso.Usuario;
  registroflacodigo.AsInteger:=acesso.Filial;
end;

end.
