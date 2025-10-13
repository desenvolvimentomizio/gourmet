unit ufsbr;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons,
  Vcl.ComCtrls, ufrabase, System.ImageList, Vcl.Dialogs;

type
  Tfsbr = class(Tfrmbase)
    registrosbrcodigo: TIntegerField;
    registrosbridentificacao: TStringField;
    Label1: TLabel;
    sbrcodigo: TDBEdit;
    Label2: TLabel;
    sbridentificacao: TDBEdit;
    Label3: TLabel;
    grpcodigo: TDBEdit;
    plIsa: TPanel;
    bvalidar: TBitBtn;
    BvTopo: TBevel;
    registrogrpcodigo: TIntegerField;
    grp: TUniQuery;
    grpgrpcodigo: TIntegerField;
    grpgrpidentificacao: TStringField;
    registrogrpidentificacao: TStringField;
    registrosbrcobraadicional: TIntegerField;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosencobraadicional: TStringField;
    Label4: TLabel;
    sbrcobraadicional: TDBEdit;
    registrogsbcodigo: TIntegerField;
    registrosbrordem: TIntegerField;
    Label6: TLabel;
    sbrordem: TDBEdit;
    registroprocodigo: TIntegerField;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    registropronome: TStringField;
    registrosbrquantidade: TFloatField;
    registrosbrimagem: TBlobField;
    OpenPictureDialog: TOpenDialog;
    btCarregaImagem: TButton;
    sbrimagem: TDBImage;
    procedure bvalidarClick(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure btCarregaImagemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    hmisa: thandle;

  end;

var
  fsbr: Tfsbr;

implementation

{$R *.dfm}

procedure Tfsbr.btCarregaImagemClick(Sender: TObject);
var
  BlobField: TBlobField;
  FileName: string;
begin
  if OpenPictureDialog.Execute then
  begin

    BlobField := registro.FieldByName('sbrimagem') as TBlobField;
    FileName := OpenPictureDialog.FileName;
    BlobField.LoadFromFile(FileName);
  end;

end;

procedure Tfsbr.bvalidarClick(Sender: TObject);
var
  fra: Tfrabase;
  podeisa: boolean;
begin
  bvalidar.Enabled:=false;
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

procedure Tfsbr.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrosbrquantidade.AsFloat := 0;
end;

end.
