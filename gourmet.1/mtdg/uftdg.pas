unit uftdg;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrapct, ufrmbase, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ImgList, Vcl.Controls, PngImageList,
  System.Classes, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls;

type
  Tftdg = class(Tfrmbase)
    registrotdgcodigo: TIntegerField;
    registrotdgidentificacao: TStringField;
    Label1: TLabel;
    tdgcodigo: TDBEdit;
    Label2: TLabel;
    tdgidentificacao: TDBEdit;
    registrotfdcodigo: TIntegerField;
    Label3: TLabel;
    tfdcodigo: TDBEdit;
    tfd: TUniQuery;
    tfdtfdcodigo: TIntegerField;
    tfdtfdidentificacao: TStringField;
    registrotfdidentificacao: TStringField;
    BvTopo: TBevel;
    SplLista: TSplitter;
    PlPct: TPanel;
    bvalidar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure bvalidarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    hpct: cardinal;
  end;

var
  ftdg: Tftdg;

  // Início ID do Módulo ftdg
const
  vPlIdMd = '03.06.81.009-02';


  // Fim ID do Módulo ftdg

implementation

{$R *.dfm}

procedure Tftdg.bvalidarClick(Sender: TObject);
var
  fra: Tfrapct;
  I: integer;
begin

  self.bvalidar.Visible := false;

  If (self.registro.State = dsEdit) Then
    self.registro.Post
  Else If (self.registro.State = dsInsert) Then
    self.registro.Post;

  bconfirma.Enabled := true;

  hpct := CarregaFrame('mpct', PlPct, 'Processos');
  fra := nil;
  fra := Tfrapct(Application.FindComponent('frapct'));

  if self.psituacao.Caption = 'Incluindo' then
  begin
    if fra <> nil then
      if (fra is Tfrapct) then
        if (fra as Tfrapct).vretorno = '0' then
        begin
          self.psituacao.Caption := 'Cancelando';
        end;
  end;

end;

procedure Tftdg.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  inherited;

end;

end.
