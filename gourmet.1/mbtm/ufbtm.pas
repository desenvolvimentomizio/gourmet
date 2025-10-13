unit ufbtm;

interface

uses
  Winapi.Windows, System.SysUtils, Vcl.Forms, ufrmbase, Vcl.ExtDlgs, Vcl.Dialogs,
  Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  PngImage, uFuncoes, System.ImageList;

const
  IDM_MARCADOR = 2184;
  IDM_MARCADOR_LISTA = 2185;
  IDM_OUTDENT = 2187;
  IDM_INDENT = 2186;
  IDM_ALINHARESQ = 59;
  IDM_CENTRALIZAR = 57;
  IDM_ALINHADIR = 60;
  IDM_IMAGEM = 2168;
  IDM_LINHAHORIZ = 2150;
  IDM_RECORTAR = 16;
  IDM_COPIAR = 15;
  IDM_COLAR = 26;
  IDM_HYPERLINK = 2124;
  IDM_DESFAZER = 43;

type
  Tfbtm = class(Tfrmbase)
    registrobtmcodigo: TIntegerField;
    registrobplcodigo: TIntegerField;
    registrobtmidentificacao: TStringField;
    registrobtmdica: TStringField;
    registrobtmimagem: TBlobField;
    registrobtmformaabe: TIntegerField;
    registrobtmtipobotao: TIntegerField;
    registrogrmcodigo: TIntegerField;
    Label1: TLabel;
    btmcodigo: TDBEdit;
    Label2: TLabel;
    bplcodigo: TDBEdit;
    Label3: TLabel;
    btmidentificacao: TDBEdit;
    Label4: TLabel;
    btmdica: TDBEdit;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    grmcodigo: TDBEdit;
    btmformaabe: TDBRadioGroup;
    btmtipobotao: TDBRadioGroup;
    btCarregaImagem: TButton;
    OpenPictureDialog: TOpenDialog;
    bpl: TUniQuery;
    bplbplcodigo: TIntegerField;
    bplbplidentificacao: TStringField;
    grm: TUniQuery;
    grmgrmcodigo: TIntegerField;
    grmgrmidentificacao: TStringField;
    registrobplidentificacao: TStringField;
    registrogrmidentificacao: TStringField;
    imgAplicacion: TImage;
    registrobtmordem: TIntegerField;
    Label6: TLabel;
    btmordem: TDBEdit;
    registrobtmajuda: TBlobField;
    WebBrowser: TWebBrowser;
    PlTitulo: TPanel;
    btCarregaArquivo: TButton;
    AbreArquivo: TFileOpenDialog;
    Bevel1: TBevel;
    btSalvaArquivo: TButton;
    SalvaArquivo: TSaveTextFileDialog;
    registrobtmatividade: TIntegerField;
    DBRadioGroup1: TDBRadioGroup;
    procedure btCarregaImagemClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btCarregaArquivoClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure btSalvaArquivoClick(Sender: TObject);
  private
    procedure MostrarImagen;
    procedure MostraAjuda;
    { Private declarations }
  public
    { Public declarations }
    vpNomeArquivo: string;
  end;

var
  fbtm: Tfbtm;

const
  vPlIdMd = '03.07.80.015-02';

implementation

{$R *.dfm}
// edicao de html

function GetIEHandle(WebBrowser: TWebBrowser; ClassName: string): HWND;
var
  hwndChild, hwndTmp: HWND;
  oleCtrl: TOleControl;
  szClass: array [0 .. 255] of char;
begin
  oleCtrl := WebBrowser;
  hwndTmp := oleCtrl.Handle;
  while (true) do
  begin
    hwndChild := GetWindow(hwndTmp, GW_CHILD);
    GetClassName(hwndChild, szClass, SizeOf(szClass));
    if (string(szClass) = ClassName) then
    begin
      Result := hwndChild;
      Exit;
    end;
    hwndTmp := hwndChild;
  end;
  Result := 0;
end;

procedure DocumentoEmBranco(WebBrowser: TWebBrowser);
begin
  WebBrowser.Navigate('about:blank');
end;



// edicao de html

procedure Tfbtm.btCarregaImagemClick(Sender: TObject);
var
  BlobField: TBlobField;
  FileName: string;
begin
  if OpenPictureDialog.Execute then
  begin
    BlobField := registro.FieldByName('btmimagem') as TBlobField;
    FileName := OpenPictureDialog.FileName;
    BlobField.LoadFromFile(FileName);
    MostrarImagen;
  end;
end;

procedure Tfbtm.btSalvaArquivoClick(Sender: TObject);
var
  vlNomearquivo: string;
begin
  inherited;

  vpNomeArquivo := '';
  SalvaArquivo.InitialDir := ExtractFilePath(Application.ExeName) + 'temp';

  SalvaArquivo.Execute;

  vlNomearquivo := SalvaArquivo.FileName;
  if vlNomearquivo <> '' then
  begin
    vpNomeArquivo := vlNomearquivo;
    registrobtmajuda.SaveToFile(vpNomeArquivo);
  end;

end;

procedure Tfbtm.bconfirmaClick(Sender: TObject);
begin

  if btCarregaArquivo.Enabled = False then
    registrobtmajuda.LoadFromFile(vpNomeArquivo);

  inherited;

end;

procedure Tfbtm.btCarregaArquivoClick(Sender: TObject);
var
  vlNomearquivo: string;
begin
  inherited;
  vpNomeArquivo := '';
  AbreArquivo.Execute;
  vlNomearquivo := AbreArquivo.FileName;
  if vlNomearquivo <> '' then
  begin
    vpNomeArquivo := vlNomearquivo;
    WebBrowser.Navigate(vlNomearquivo);
    btCarregaArquivo.Enabled := False;
  end;

end;

procedure Tfbtm.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  inherited;
  MostrarImagen;

  if registrobtmajuda.AsString <> '' then
    MostraAjuda;

end;

procedure Tfbtm.MostraAjuda;
var
  DireTemp: string;
  NomeTemp: string;
begin
  DireTemp := ExtractTempDir;

  NomeTemp := FormatDateTime('yyyymmddhhnnsszzz', StrToDateTime(agora(Application, zcone))) + '.mht';

  registrobtmajuda.SaveToFile(DireTemp + NomeTemp);
  PlTitulo.Caption := registrobtmidentificacao.AsString;

  try

    WebBrowser.Navigate(DireTemp + NomeTemp);

  finally

  end;

end;

procedure Tfbtm.MostrarImagen;
var
  Pgn: TPngImage;
  Corriente: TMemoryStream;
begin

  if not registrobtmimagem.IsNull then
  begin
    Pgn := TPngImage.create;
    Corriente := TMemoryStream.create;
    registrobtmimagem.SaveToStream(Corriente);
    Corriente.Seek(0, soFromBeginning);
    Pgn.LoadFromStream(Corriente);
    imgAplicacion.Picture.Assign(Pgn);
    Corriente.Free;
    Pgn.Free;
  end
  else
    imgAplicacion.Picture := nil;

end;

end.
