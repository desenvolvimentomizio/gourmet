unit ufcfgmcfg;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.ExtCtrls, uFuncoes, uPegaBase, System.ImageList;

type
  Tfcfgmcfg = class(Tfrmbase)
    registrocfgcodigo: TIntegerField;
    registrocfglogo: TBlobField;
    Label1: TLabel;
    cfgcodigo: TDBEdit;
    registrocfgetdempresa: TIntegerField;
    Label2: TLabel;
    cfgetdempresa: TDBEdit;
    etd: tuniquery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    registrocfginscricaomun: TStringField;
    registrocfgsuframa: TStringField;
    Label3: TLabel;
    cfginscricaomun: TDBEdit;
    Label4: TLabel;
    cfgsuframa: TDBEdit;
    Label5: TLabel;
    cfglogo: TDBImage;
    registroetdidentificacao: TStringField;
    registrocrtcodigo: TIntegerField;
    crt: tuniquery;
    crtcrtcodigo: TIntegerField;
    crtcrtidentificacao: TStringField;
    registrocrtidentificacao: TStringField;
    Label6: TLabel;
    crtcodigo: TDBEdit;
    registrotalcodigo: TIntegerField;
    tal: tuniquery;
    taltalcodigo: TIntegerField;
    taltalidentificacao: TStringField;
    registrotalidentificacao: TStringField;
    ltalcodigo: TLabel;
    talcodigo: TDBEdit;
    btCarregaImagem: TButton;
    OpenPictureDialog: TOpenDialog;
    Label7: TLabel;
    Label8: TLabel;
    atvcodigo: TDBEdit;
    etdatvcodigo: TIntegerField;
    Detd: TDataSource;
    atv: TUniQuery;
    atvatvcodigo: TIntegerField;
    atvatvidentificacao: TStringField;
    etdatvidentificacao: TStringField;
    registrocfgapuracaoicm: TIntegerField;
    cfgapuracaoicm: TDBRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure crtcodigoExit(Sender: TObject);
    procedure btCarregaImagemClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcfgmcfg: Tfcfgmcfg;

  // Início ID do Módulo fracfgmcfg
const
  vPlIdMd = '03.06.81.001-01';
  vPlTitMdl = 'Configurações da Empresa';

  // Fim ID do Módulo fracfgmcfg

implementation

{$R *.dfm}

function formulario(pCargaFrame: TCargaFrame): string;
begin
  fcfgmcfg := Tfcfgmcfg.Create(pCargaFrame);
  fcfgmcfg.ShowModal;
  fcfgmcfg.Free;
end;

exports formulario;

procedure Tfcfgmcfg.bconfirmaClick(Sender: TObject);
begin
  inherited;



  if etd.State=dsedit then
  etd.Post;


consulta.Close;
  consulta.SQL.Text:='update etd set atvcodigo='+atvcodigo.Field.AsString+' where etdcodigo='+cfgetdempresa.Field.asstring;
  consulta.ExecSQL;


end;

procedure Tfcfgmcfg.btCarregaImagemClick(Sender: TObject);
var
  BlobField: TBlobField;
  FileName: string;
begin
  if OpenPictureDialog.Execute then
  begin

    BlobField := registro.FieldByName('cfglogo') as TBlobField;
    FileName := OpenPictureDialog.FileName;
    BlobField.LoadFromFile(FileName);
  end;
end;

procedure Tfcfgmcfg.crtcodigoExit(Sender: TObject);
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if Self.registrocrtcodigo.AsInteger = 3 then
  begin
    talcodigo.Visible := true;
    ltalcodigo.Visible := true;
    registrotalcodigo.Required := true;
    talcodigo.SetFocus;
  end
  else
  begin
    bconfirma.SetFocus;
    talcodigo.Visible := false;
    ltalcodigo.Visible := false;
    registrotalcodigo.Required := false;
  end;
end;

procedure Tfcfgmcfg.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  registro.Params[0].AsString := vChaveMestre;

  inherited;

  cfgetdempresa.Color := PEG_COR_VALORPADRAO;
end;

end.
