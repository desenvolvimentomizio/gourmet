unit ufftp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, IdComponent,
  IdBaseComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdFTP, Vcl.ComCtrls, Vcl.StdCtrls, uPegaBase, uni;

type
  Tfftp = class(TForm)
    IdFTP: TIdFTP;
    StatusBar: TStatusBar;
    lbNome: TLabel;
    lbTamanho: TLabel;
    mostra: TProgressBar;
    Label1: TLabel;
    plArquivo: TPanel;
    plTamanho: TPanel;
    EfetuarDownload: TTimer;
    lbStatus: TLabel;
    procedure SetDadosConexaoFTP(const Value: TDadosConexaoFTP);
    procedure EfetuarDownloadTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IdFTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure IdFTPWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
    procedure IdFTPStatus(ASender: TObject; const AStatus: TIdStatus; const AStatusText: string);
  private
    { Private declarations }
    FZCone: TUniConnection;
    FDadosConexaoFTP: TDadosConexaoFTP;
  public
    { Public declarations }
    vpArquivo: string;
    vpPastaOrigem: string;
    vpPastaDestino: string;

  published
    property zcone: TUniConnection read FZCone write FZCone;
    property DadosConexaoFTP: TDadosConexaoFTP read FDadosConexaoFTP write SetDadosConexaoFTP;
  end;

var
  fftp: Tfftp;

implementation

{$R *.dfm}

function EfetuaDownloadArquivo(pApplication: TApplication; pDadosConexaoFTP: TDadosConexaoFTP): string;
var
  fftp: Tfftp;
begin
  fftp := Tfftp.Create(pApplication);
  fftp.vpArquivo := pDadosConexaoFTP.Arquivo;
  fftp.vpPastaOrigem := pDadosConexaoFTP.PastaOrigem;
  fftp.vpPastaDestino := pDadosConexaoFTP.PastaDestino;
  fftp.DadosConexaoFTP := pDadosConexaoFTP;

  fftp.ShowModal;

end;

exports EfetuaDownloadArquivo;

procedure Tfftp.EfetuarDownloadTimer(Sender: TObject);
var
  vlPastaOrigem: string;
  vlTentativas: Integer;
begin
  EfetuarDownload.Enabled := false;

  if not DirectoryExists(extractfilepath(application.ExeName) + vpPastaDestino) then
    CreateDir(extractfilepath(application.ExeName) + vpPastaDestino);

  vlTentativas := 0;
  while true do
  begin
    if vlTentativas = 10 then
    begin
      ShowMessage('Falha de conexão com servidor!');
      close;

      exit;
    end;


    try
      IdFTP.Connect;
    except
    on E : Exception do
    begin
  //  ShowMessage( e.Message);
    end;

    end;
   
    if IdFTP.Connected then
      break
    else
    begin
      sleep(500);
      vlTentativas := vlTentativas + 1;
    end;
  end;

  if IdFTP.Connected then
  begin

    IdFTP.ChangeDir(vpPastaOrigem);

    plTamanho.Caption := IntToStr(IdFTP.Size(vpArquivo));
       application.ProcessMessages;
    if plTamanho.Caption='-1' then
    begin
   // ShowMessage('Não a atualização disponivel.'+#13+#13+#13+'Efetue a atualiziação no próximo mês!');
    IdFTP.Disconnect;
    close;
    exit;
    end;

    mostra.Max := StrToInt(plTamanho.Caption);
    plArquivo.Caption := vpArquivo;
    application.ProcessMessages;

    if FileExists(extractfilepath(application.ExeName) + vpPastaDestino + '\' + vpArquivo) then
    DeleteFile(extractfilepath(application.ExeName) + vpPastaDestino + '\' + vpArquivo);

    if FileExists(extractfilepath(application.ExeName) + vpPastaDestino + '\' + vpArquivo)=false then
    begin
    IdFTP.Get(vpArquivo, extractfilepath(application.ExeName) + vpPastaDestino + '\' + vpArquivo);

    end;
    IdFTP.Disconnect;
    close;
  end;

end;

procedure Tfftp.FormShow(Sender: TObject);
begin
  EfetuarDownload.Enabled := true;
end;

procedure Tfftp.IdFTPStatus(ASender: TObject; const AStatus: TIdStatus; const AStatusText: string);
begin
  lbStatus.Caption := AStatusText;
  application.ProcessMessages;

end;

procedure Tfftp.IdFTPWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
begin
  mostra.position := AWorkCount;
  application.ProcessMessages;

end;

procedure Tfftp.IdFTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
  mostra.position := 0;
  application.ProcessMessages;
end;

procedure Tfftp.SetDadosConexaoFTP(const Value: TDadosConexaoFTP);
begin

  if IdFTP.Connected then
    IdFTP.Disconnect;

  IdFTP.Host := Value.Host;
  IdFTP.Password := Value.Senha;
  IdFTP.Username := Value.usuario;
  IdFTP.Port := Value.Porta;

end;

end.
