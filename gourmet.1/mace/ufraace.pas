unit ufraace;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, uPegaBase,
  Vcl.ComCtrls, System.Actions, Vcl.ActnList, Vcl.ExtCtrls;

type
  Tfraace = class(TFrame)
    WebBrowser: TWebBrowser;
    Acoes: TActionList;
    ActSair: TAction;
    plAcelerato: TPanel;
    plDireita: TPanel;
    Splitter: TSplitter;
    plMensagens: TPanel;
    SplitterMensagens: TSplitter;
    WebBrowserMensagens: TWebBrowser;
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
  fraace: Tfraace;

  // Início ID do Módulo fratcg
const
  vPlIdMd = '00.00.00.000-00';
  vPlTitMdl = 'Acelerato';

  // Fim ID do Módulo fratcg

implementation

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraace := Tfraace.Create(pCargaFrame);
  fraace.Height := Screen.Height - 10;
  fraace.Width := Screen.Width - 20;

  fraace.WebBrowser.Navigate('http://mizio.acelerato.com');

  fraace.WebBrowserMensagens.Navigate('http://www.miziosistemas.com.br/mensagens/');

end;

exports formuFrame;

procedure Tfraace.ActSairExecute(Sender: TObject);
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

constructor Tfraace.Create(pCargaFrame: TCargaFrame);
begin
  inherited Create(pCargaFrame.AOwner);
  // Self.Visible := False;
  Parent := pCargaFrame.Parent;
end;

procedure Tfraace.SetHandleHerdado(const Value: NativeUInt);
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
