unit ufatr;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons,
  Vcl.ComCtrls;

type
  Tfatr = class(Tfrmbase)
    registroatrcodigo: TIntegerField;
    registroatridentificacao: TStringField;
    registroatrabreviatura: TStringField;
    Label1: TLabel;
    atrcodigo: TDBEdit;
    Label2: TLabel;
    atridentificacao: TDBEdit;
    Label3: TLabel;
    atrabreviatura: TDBEdit;
    Bvregistro: TBevel;
    Pliat: TPanel;
    bvalidar: TButton;
    procedure FormShow(Sender: TObject);
    procedure bvalidarClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private

    hiat: THandle;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fatr: Tfatr;

  // Início ID do Módulo fraatr
const
  vPlIdMd = '01.04.05.001-02';

  // Fim ID do Módulo fraatr

implementation

{$R *.dfm}

uses
  ufraiat;

procedure Tfatr.bconfirmaClick(Sender: TObject);

var
  fra: Tfraiat;
begin
  inherited;

  if not(ModalResult = mrOk) then
    Exit;

  if hiat <> 0 then
  begin
    fra := nil;
    fra := Tfraiat(Application.FindComponent('fraiat'));

    if fra <> nil then
      if (fra is Tfraiat) then
        (fra as Tfraiat).salvacolunas;
  end;
end;

procedure Tfatr.bvalidarClick(Sender: TObject);
begin
  Pliat.Visible := True;

  If (psituacao.Caption = 'Incluindo') Then
    registro.Post;

  (* Frame - Itens do Atributo *)
  hiat := CarregaFrame('miat', Pliat, '');

  Self.bvalidar.Visible := False;
end;

procedure Tfatr.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

  if psituacao.Caption = 'Alterando' then
  begin
    Self.bvalidar.Click;
    Self.bvalidar.Visible := False;
  end
  else
    bvalidar.Visible := True;
end;

end.
