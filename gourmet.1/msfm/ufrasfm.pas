unit ufrasfm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw,
  Vcl.ExtCtrls, Vcl.StdCtrls, uPegaBase, Vcl.ComCtrls, System.Actions, Vcl.ActnList, clipbrd;

type
  Tfrasfm = class(TFrame)
    btCapturar: TButton;
    plRodaPe: TPanel;
    WebBrowser: TWebBrowser;
    Acoes: TActionList;
    ActSair: TAction;

    procedure ActSairExecute(Sender: TObject);
  private
    { Private declarations }
    FHandleHerdado: NativeUInt;
    procedure SetHandleHerdado(const Value: NativeUInt);

  public
    { Public declarations }
    constructor Create(pCargaFrame: TCargaFrame);
  published
    property HandleHerdado: NativeUInt read FHandleHerdado write SetHandleHerdado;
  end;

var
  frasfm: Tfrasfm;

implementation

// Início ID do Módulo frasfm

const
  vPlIdMd = '00.00.00.000-00';
  vPlTitMdl = 'SEFAZ MT';

  // Fim ID do Módulo frasfm

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frasfm := Tfrasfm.Create(pCargaFrame);
  frasfm.Height := Screen.Height - 10;
  frasfm.Width := Screen.Width - 20;

  frasfm.WebBrowser.Navigate('https://www.sefaz.mt.gov.br/acessoweb/login/LoginUsuarioContribuinte.jsp?tipoUsuario=6');

end;

exports formuFrame;

procedure Tfrasfm.ActSairExecute(Sender: TObject);
var
  vlTabSheet: TTabSheet;
begin

  if (Self.Parent is TForm) then
  begin
    (Self.Parent as TForm).Close;
    (Self.Parent as TForm).ModalResult := mrOk;
  end
  else if Self.Parent is TTabSheet then
  begin
    vlTabSheet := Parent as TTabSheet;
    Free; // Libera o Frame
    vlTabSheet.Free; // Libera tab Pai do Frame
  end;
end;

constructor Tfrasfm.Create(pCargaFrame: TCargaFrame);
begin
  inherited Create(pCargaFrame.AOwner);
  // Self.Visible := False;
  Parent := pCargaFrame.Parent;
  WebBrowser.left := 0;
  WebBrowser.top := 100;

  WebBrowser.Width := Screen.Width - 20;
  WebBrowser.Height := Screen.Height - 300;

end;

procedure Tfrasfm.SetHandleHerdado(const Value: NativeUInt);
var
  vlDirBPL: string;
  vlNomeBPL: string;
begin
  FHandleHerdado := Value;

  if Self.ClassName <> 'Tframnf' then
  begin
    vlDirBPL := GetModuleName(FHandleHerdado);
    vlNomeBPL := ExtractFileName(vlDirBPL);
  end;
end;

end.
