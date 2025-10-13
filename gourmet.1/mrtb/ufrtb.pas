unit ufrtb;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons,
  Vcl.ComCtrls, ufradrb;

type
  Tfrtb = class(Tfrmbase)
    registrortbcodigo: TIntegerField;
    registrotrbcodigo: TIntegerField;
    registroufsorigem: TStringField;
    registroufsdestino: TStringField;
    registroflacodigo: TIntegerField;
    Label1: TLabel;
    rtbcodigo: TDBEdit;
    Label2: TLabel;
    flacodigo: TDBEdit;
    Label3: TLabel;
    trbcodigo: TDBEdit;
    Label4: TLabel;
    ufsorigem: TDBEdit;
    Label5: TLabel;
    ufsdestino: TDBEdit;
    fla: TUniQuery;
    flaflacodigo: TIntegerField;
    registroflaidentificacao: TStringField;
    trb: TUniQuery;
    trbtrbcodigo: TIntegerField;
    trbtrbidentificacao: TStringField;
    registrotrbidentificacao: TStringField;
    ufs: TUniQuery;
    ufsufscodigo: TStringField;
    ufsufsnome: TStringField;
    registroufsnomeori: TStringField;
    registroufsnomedes: TStringField;
    flaflaidentificacao: TStringField;
    bvalidar: TButton;
    Spt3: TSplitter;
    PlDrb: TPanel;
    BvTopo: TBevel;
    procedure FormShow(Sender: TObject);
    procedure bvalidarClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    procedure salvacolunasframes;
    { Private declarations }
  public
    { Public declarations }
    hdrb: THandle;
  end;

var
  frtb: Tfrtb;

  // Início ID do Módulo frartb
const
  vPlIdMd = '01.11.20.001-02';

  // Fim ID do Módulo frartb

implementation

{$R *.dfm}

procedure Tfrtb.salvacolunasframes;
var
  fra: Tframe;
begin

  if hdrb <> 0 then
  begin
    fra := nil;
    fra := Tfradrb(Application.FindComponent('fradrb'));

    if fra <> nil then
      if (fra is Tfradrb) then
        (fra as Tfradrb).salvacolunas;
  end;
end;

procedure Tfrtb.bconfirmaClick(Sender: TObject);
begin
  inherited;
  If Self.bconfirma.Caption = 'Confirma' Then
    salvacolunasframes;
end;

procedure Tfrtb.bvalidarClick(Sender: TObject);
var
  podedrb: Boolean;
  fra: Tfradrb;

  i: integer;
begin

  inherited;

  if not ValidaCamposRequeridos then
    Exit;

  Self.bvalidar.Visible := False;

  If (Self.registro.State = dsEdit) Then
    Self.registro.Post
  Else If (Self.registro.State = dsInsert) Then
    Self.registro.Post;

  bconfirma.Enabled := True;

  hdrb := CarregaFrame('mdrb', PlDrb, 'Regras Tributárias');
  podedrb := True;
  fra := nil;
  fra := Tfradrb(Application.FindComponent('fradrb'));

  if Self.psituacao.Caption = 'Incluindo' then
  begin
    if fra <> nil then
      if (fra is Tfradrb) then
        if (fra as Tfradrb).vretorno = '0' then
        begin
          podedrb := False;
          Self.psituacao.Caption := 'Cancelando';
        end;
  end
  else
    podedrb := True;

end;

procedure Tfrtb.FormShow(Sender: TObject);
begin
  Self.IdModulo := vPlIdMd;
  inherited;

end;

end.
