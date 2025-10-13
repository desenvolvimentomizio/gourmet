unit ufsbp;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons,
  Vcl.ComCtrls, ufrabase, System.ImageList, dialogs;

type
  Tfsbp = class(Tfrmbase)
    registrosbrcodigo: TIntegerField;
    registrosbridentificacao: TStringField;
    registroprocodigo: TIntegerField;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    BvTopo: TBevel;
    Label1: TLabel;
    sbrcodigo: TDBEdit;
    sbridentificacao: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    procodigo: TDBEdit;
    bvalidar: TBitBtn;
    registropronome: TStringField;
    plIsa: TPanel;
    registrosbrcobraadicional: TIntegerField;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosencobraadicional: TStringField;
    Label4: TLabel;
    sbrcobraadicional: TDBEdit;
    registrosbrordem: TIntegerField;
    Label5: TLabel;
    sbrordem: TDBEdit;
    procedure bvalidarClick(Sender: TObject);
    procedure procodigoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    hmisa: thandle;

  end;

var
  fsbp: Tfsbp;

implementation

{$R *.dfm}

procedure Tfsbp.bvalidarClick(Sender: TObject);
var
  fra: Tfrabase;
  podeisa: boolean;
begin
  inherited;
  if registro.State <> dsbrowse then
    registro.Post;

  vChaveMestre := registrosbrcodigo.AsString;

  hmisa := CarregaFrame('misa', plIsa, 'Ingredientes');

  fra := nil;
  fra := Tfrabase(Application.FindComponent('fraisa'));

  if self.psituacao.Caption = 'Incluindo' then
  begin
    if fra <> nil then
      if fra.vretorno = '0' then
      begin
        podeisa := false;
        self.psituacao.Caption := 'Cancelando';
      end;
  end
  else
    podeisa := true;

end;

procedure Tfsbp.procodigoExit(Sender: TObject);
begin
  inherited;
 Self.ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;


 consulta.Close;
 consulta.SQL.Text:='select sbridentificacao from sbr where procodigo='+procodigo.Field.AsString;
 consulta.Open;

 if not consulta.IsEmpty then
 begin
 ShowMessage('Este produto ja esta ligado ao sabor: '+consulta.FieldByName('sbridentificacao').AsString);
 procodigo.Field.AsString:='';
 procodigo.SetFocus;




 end;



end;

end.
