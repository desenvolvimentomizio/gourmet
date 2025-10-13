unit ufatz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  Vcl.ComCtrls, Vcl.StdCtrls, WinInet;

type
  Tfatz = class(TForm)
    IdHTTP: TIdHTTP;
    pbprogresso: TProgressBar;
    lblStatus: TLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure IdHTTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
    procedure IdHTTPWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
    procedure IdHTTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
  private
    function RetornaPorcentagem(ValorMaximo, ValorAtual: real): string;
    function RetornaKiloBytes(ValorAtual: real): string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fatz: Tfatz;

implementation

{$R *.dfm}

function DownloadArquivo(const Origem, Destino: String): Boolean;
const
  BufferSize = 1024;
var
  hSession, hURL: HInternet;
  Buffer: array [1 .. BufferSize] of Byte;
  BufferLen: DWORD;
  f: File;
  sAppName: string;
begin
  Result := False;
  sAppName := ExtractFileName(Application.ExeName);
  hSession := InternetOpen(PChar(sAppName), INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
  try
    hURL := InternetOpenURL(hSession, PChar(Origem), nil, 0, 0, 0);
    try
      AssignFile(f, Destino);
      Rewrite(f, 1);
      repeat
        InternetReadFile(hURL, @Buffer, SizeOf(Buffer), BufferLen);
        BlockWrite(f, Buffer, BufferLen)
      until BufferLen = 0;
      CloseFile(f);
      Result := True;
    finally
      InternetCloseHandle(hURL)
    end
  finally
    InternetCloseHandle(hSession)
  end
end;


procedure Tfatz.IdHTTPWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
begin
  pbprogresso.Position := AWorkCount;
  lblStatus.Caption := 'Baixando ... ' + RetornaKiloBytes(AWorkCount);
  fatz.Caption := 'Download em ... ' + RetornaPorcentagem(pbprogresso.Max, AWorkCount);
end;

procedure Tfatz.IdHTTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
  pbprogresso.Max := AWorkCountMax;
end;

procedure Tfatz.IdHTTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
  pbprogresso.Position := 0;
  fatz.Caption := 'Finalizado ...';
  lblStatus.Caption := 'Download Finalizado ...';
  pbprogresso.Visible := False;
  close;
end;

function Tfatz.RetornaKiloBytes(ValorAtual: real): string;
var
  resultado: real;
begin
  resultado := ((ValorAtual / 1024) / 1024);
  Result := FormatFloat('0.000 KBs', resultado);
end;

function Tfatz.RetornaPorcentagem(ValorMaximo, ValorAtual: real): string;
var
  resultado: real;
begin
  resultado := ((ValorAtual * 100) / ValorMaximo);
  Result := FormatFloat('0%', resultado);
end;

procedure Tfatz.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  IdHTTP.Disconnect;
end;

end.
