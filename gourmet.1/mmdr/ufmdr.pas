unit ufmdr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, uFuncoes, Vcl.Mask,
  Vcl.DBCtrls, Vcl.OleCtrls, SHDocVw, MSHTML, ComObj, ActiveX, ShlObj;

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
  Tfmdr = class(Tfrmbase)
    registromdrchave: TIntegerField;
    registromdrassunto: TStringField;
    registromdrtexto: TBlobField;
    registroclbcodigo: TIntegerField;
    registromdrregistro: TDateTimeField;
    Label1: TLabel;
    mdrchave: TDBEdit;
    Label2: TLabel;
    mdrassunto: TDBEdit;
    cdColor: TColorDialog;
    plEditor: TPanel;
    Panel7: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Panel2: TPanel;
    btnNumList: TSpeedButton;
    btnBullet: TSpeedButton;
    btnDecreaseIndent: TSpeedButton;
    btnIncreaseIndent: TSpeedButton;
    Panel3: TPanel;
    btnAlignLeft: TSpeedButton;
    btnCenter: TSpeedButton;
    btnAlignRight: TSpeedButton;
    Panel5: TPanel;
    SpeedButton5: TSpeedButton;
    btnHR: TSpeedButton;
    Panel6: TPanel;
    Panel8: TPanel;
    btnCut: TSpeedButton;
    btnCopy: TSpeedButton;
    btnPaste: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Label3: TLabel;
    combofont: TComboBox;
    WebBrowser1: TWebBrowser;
    Label4: TLabel;
    Panel1: TPanel;
    Label5: TLabel;
    ComboSize: TComboBox;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure btnCutClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnPasteClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure combofontChange(Sender: TObject);
    procedure ComboSizeChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btnNumListClick(Sender: TObject);
    procedure btnBulletClick(Sender: TObject);
    procedure btnDecreaseIndentClick(Sender: TObject);
    procedure btnIncreaseIndentClick(Sender: TObject);
    procedure btnAlignLeftClick(Sender: TObject);
    procedure btnCenterClick(Sender: TObject);
    procedure btnAlignRightClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure btnHRClick(Sender: TObject);
  private
    function NomeArquivoMala: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmdr: Tfmdr;
  HTMLDocumento: IHTMLDocument2;

implementation

{$R *.dfm}

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

procedure Tfmdr.bconfirmaClick(Sender: TObject);
var
  vNomeArqTemp: string;
  HTMLDocument: IHTMLDocument2;
  PersistFile: IPersistFile;

begin
  vNomeArqTemp := NomeArquivoMala;

  HTMLDocument := WebBrowser1.Document as IHTMLDocument2;

  PersistFile := HTMLDocument as IPersistFile;
  PersistFile.Save(StringToOleStr(vNomeArqTemp), System.True);

  if registro.State = dsbrowse then
    registro.Edit;

  registromdrtexto.LoadFromFile(vNomeArqTemp);

  inherited;

end;

procedure Tfmdr.btnAlignLeftClick(Sender: TObject);
begin
  inherited;
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_ALINHARESQ, 0);
end;

procedure Tfmdr.btnAlignRightClick(Sender: TObject);
begin
  inherited;
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_ALINHADIR, 0);
end;

procedure Tfmdr.btnBulletClick(Sender: TObject);
begin
  inherited;
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_MARCADOR_LISTA, 0);
end;

procedure Tfmdr.btnCenterClick(Sender: TObject);
begin
  inherited;
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_CENTRALIZAR, 0);
end;

procedure Tfmdr.btnCopyClick(Sender: TObject);
begin
  inherited;
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_COPIAR, 0);
end;

procedure Tfmdr.btnCutClick(Sender: TObject);
begin
  inherited;
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_RECORTAR, 0);
end;

procedure Tfmdr.btnDecreaseIndentClick(Sender: TObject);
begin
  inherited;
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_OUTDENT, 0);
end;

procedure Tfmdr.btnHRClick(Sender: TObject);
begin
  inherited;
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_LINHAHORIZ, 0);
end;

procedure Tfmdr.btnIncreaseIndentClick(Sender: TObject);
begin
  inherited;
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_INDENT, 0);
end;

procedure Tfmdr.btnNumListClick(Sender: TObject);
begin
  inherited;
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_MARCADOR, 0);
end;

procedure Tfmdr.btnPasteClick(Sender: TObject);
begin
  inherited;
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_COLAR, 0);
end;

procedure Tfmdr.combofontChange(Sender: TObject);
begin
  inherited;
  HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
  HTMLDocumento.execCommand('FontName', False, combofont.Text);
end;

procedure Tfmdr.ComboSizeChange(Sender: TObject);
begin
  inherited;
  // altera o tamanho da fonte
  HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
  case ComboSize.ItemIndex of
    0:
      HTMLDocumento.execCommand('FontSize', False, 1);
    1:
      HTMLDocumento.execCommand('FontSize', False, 2);
    2:
      HTMLDocumento.execCommand('FontSize', False, 3);
    3:
      HTMLDocumento.execCommand('FontSize', False, 5);
    4:
      HTMLDocumento.execCommand('FontSize', False, 6);
    5:
      HTMLDocumento.execCommand('FontSize', False, 7);
  end;
end;

procedure Tfmdr.FormShow(Sender: TObject);
var
  vNomeArqTemp: String;
begin
  inherited;
  vNomeArqTemp := NomeArquivoMala;
  combofont.Items := screen.Fonts;

  if psituacao.Caption = 'Alterando' then
  begin

    if registromdrtexto.AsString <> '' then
    begin
      registromdrtexto.SaveToFile(vNomeArqTemp);
      WebBrowser1.Navigate(vNomeArqTemp);
      (WebBrowser1.Document as IHTMLDocument2).designMode := 'On';
    end;

  end
  else
  begin

    DocumentoEmBranco(WebBrowser1);
    (WebBrowser1.Document as IHTMLDocument2).designMode := 'On';

  end;
end;

Function Tfmdr.NomeArquivoMala: string;
var
  vNomeArqTemp: String;
begin
  if not DirectoryExists(extractfilepath(application.ExeName) + 'temp') then
    ForceDirectories(extractfilepath(application.ExeName) + 'temp');
  vNomeArqTemp := extractfilepath(application.ExeName) + 'temp\mala' +
    formatfloat('0000000', registromdrchave.AsInteger) + '.html';
  Result := vNomeArqTemp;
end;

procedure Tfmdr.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroclbcodigo.AsInteger := acesso.Usuario;
  registromdrregistro.AsString := agora(application, zcone);

end;

procedure Tfmdr.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
  HTMLDocumento.execCommand('Bold', False, 0);
end;

procedure Tfmdr.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
  HTMLDocumento.execCommand('Italic', False, 0);
end;

procedure Tfmdr.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
  HTMLDocumento.execCommand('Underline', False, 0);
end;

procedure Tfmdr.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
  if cdColor.Execute then
    HTMLDocumento.execCommand('ForeColor', False, cdColor.Color)
  else
    abort;
end;

procedure Tfmdr.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_IMAGEM, 0);
end;

procedure Tfmdr.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_HYPERLINK, 0);
end;

procedure Tfmdr.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_DESFAZER, 0);
end;

end.
