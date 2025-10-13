unit ufajuda;

interface

uses
  Winapi.Windows, Vcl.Forms, Vcl.ImgList, Vcl.Controls, Vcl.Menus, Data.DB,
  MemDS, DBAccess, Uni, Vcl.ComCtrls, Vcl.ToolWin, Vcl.OleCtrls, SHDocVw,
  System.Classes, Vcl.ExtCtrls, Winapi.ActiveX, System.SysUtils, System.ImageList;

const
  HTMLID_FIND = 1;
  HTMLID_VIEWSOURCE = 2;
  HTMLID_OPTIONS = 3;

type
  Tfajuda = class(TForm)
    btm: TUniQuery;
    Dbtm: TDataSource;
    PlTitulo: TPanel;
    btmbtmajuda: TBlobField;
    WebBrowser: TWebBrowser;
    btmbtmidentificacao: TStringField;
    PopupMenu: TPopupMenu;
    mnCopiar: TMenuItem;
    mnColar: TMenuItem;
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    btnvoltar: TToolButton;
    btnavancar: TToolButton;
    btnatualizar: TToolButton;
    ToolButton10: TToolButton;
    btnprocurar: TToolButton;
    mnPesquisar: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure mnCopiarClick(Sender: TObject);
    procedure mnColarClick(Sender: TObject);
    procedure WebBrowserBeforeNavigate2(ASender: TObject; const pDisp: IDispatch; const URL, Flags, TargetFrameName, PostData, Headers: OleVariant; var Cancel: WordBool);
    procedure btnvoltarClick(Sender: TObject);
    procedure btnavancarClick(Sender: TObject);
    procedure btnatualizarClick(Sender: TObject);
    procedure WebBrowserCommandStateChange(ASender: TObject; Command: Integer; Enable: WordBool);
    procedure mnPesquisarClick(Sender: TObject);
    procedure DbtmDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    Fzcone: tuniconnection;
    function GeraArquivoAjuda(vNomeBpl: string): string;
  public
    { Public declarations }
    vpUrl: string;
    vpNovaUrl: string;
    vpBplNome: String;
  published
    property zcone: tuniconnection read Fzcone write Fzcone;

  end;

var
  fajuda: Tfajuda;

implementation

{$R *.dfm}

procedure Tfajuda.mnColarClick(Sender: TObject);
begin
  { }
end;

procedure Tfajuda.mnCopiarClick(Sender: TObject);
begin
  { }
end;

procedure Tfajuda.mnPesquisarClick(Sender: TObject);
const
  CGID_WebBrowser: TGUID = '{ED016940-BD5B-11cf-BA4E-00C04FD70816}';
var
  CmdTarget: IOleCommandTarget;
  vaIn, vaOut: OleVariant;
  PtrGUID: PGUID;
begin
  New(PtrGUID);
  PtrGUID^ := CGID_WebBrowser;
  if WebBrowser.Document <> nil then
    try
      WebBrowser.Document.QueryInterface(IOleCommandTarget, CmdTarget);
      if CmdTarget <> nil then
        try
          CmdTarget.Exec(PtrGUID, HTMLID_FIND, 0, vaIn, vaOut);
        finally
          CmdTarget._Release;
        end;
    except
      // Nothing
    end;
  Dispose(PtrGUID);
end;

procedure Tfajuda.WebBrowserBeforeNavigate2(ASender: TObject; const pDisp: IDispatch; const URL, Flags, TargetFrameName, PostData, Headers: OleVariant; var Cancel: WordBool);
var
  vlNomeBpl: string;
begin
  vlNomeBpl := ExtractFileName(URL);
  GeraArquivoAjuda(vlNomeBpl);
end;

procedure Tfajuda.WebBrowserCommandStateChange(ASender: TObject; Command: Integer; Enable: WordBool);
begin
  case Command of
    CSC_NAVIGATEBACK:
      begin
        // Ativa e Desativa Automaticamente o Botão Voltar,
        // Caso tenha alguma página para voltar
        btnvoltar.Enabled := Enable;
      end;
    CSC_NAVIGATEFORWARD:
      begin
        // Ativa e Desativa Automaticamente o Botão Avançar,
        // Caso tenha alguma página para voltar
        btnavancar.Enabled := Enable;
      end;
  end;
end;

procedure Tfajuda.btnatualizarClick(Sender: TObject);
begin
  WebBrowser.Refresh;
end;

procedure Tfajuda.btnavancarClick(Sender: TObject);
begin
  WebBrowser.GoForward;
end;

procedure Tfajuda.btnvoltarClick(Sender: TObject);
begin
  WebBrowser.goback;
end;

procedure Tfajuda.DbtmDataChange(Sender: TObject; Field: TField);
begin
  if btm.Active then
    if not btm.IsEmpty then
      Self.PlTitulo.Caption := btmbtmidentificacao.AsString;

end;

function Tfajuda.GeraArquivoAjuda(vNomeBpl: string): string;
var
  DireTemp: string;
  NomeTemp: string;
  vNome: string;
begin

  result := '';
  DireTemp := ExtractFilePath(Application.ExeName) + 'temp\';

  if not DirectoryExists(DireTemp) then
    CreateDir(DireTemp);
  if pos('.mht', vNomeBpl) > 0 then
    vNomeBpl := ChangeFileExt(vNomeBpl, '.bpl');

  btm.Connection := zcone;
  btm.Close;
  btm.Params[0].AsString := vNomeBpl;
  btm.Open;

  if not btm.IsEmpty then
  begin

    NomeTemp := vNomeBpl;
    vNome := copy(vNomeBpl, 1, pos('.', vNomeBpl) - 1);
    NomeTemp := vNome;

    if FileExists(DireTemp + NomeTemp) then
      DeleteFile(DireTemp + NomeTemp);

    Self.PlTitulo.Caption := btmbtmidentificacao.AsString;

    btmbtmajuda.SaveToFile(DireTemp + NomeTemp + '.mht');

    if FileExists(DireTemp + NomeTemp + '.mht') then
      result := DireTemp + NomeTemp + '.mht';

  end;

end;

procedure Tfajuda.FormShow(Sender: TObject);
begin

  vpUrl := GeraArquivoAjuda(vpBplNome);

  if vpUrl <> '' then
    WebBrowser.Navigate(vpUrl);

end;

end.
