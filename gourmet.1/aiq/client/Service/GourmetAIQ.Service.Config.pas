unit GourmetAIQ.Service.Config;

// Leitor tipado da configuracao em gourmeterp.ini.
//
// Antes: cada DataModule fazia CarregaIni() devolvendo "ip:porta" cru, e os
// segredos do AIQFome ficavam hardcoded em Service.Constants. Agora:
//
//   [Gourmet]
//   servidor=127.0.0.1
//   porta=8091
//   scheme=http   ; ou https
//
//   [AIQFome]
//   url_base=https://purple-box.aiqfome.com/alfredo
//   client_id=pegasus
//   client_secret=...
//   developer_id=integrador@empresa.com.br
//   developer_secret=...
//
//   [Janela]
//   top=...
//   left=...
//
// Cache em memoria para evitar reabrir TIniFile a cada chamada -- a config
// muda raramente e os Controllers eram chamados em loops quentes.

interface

uses
  System.SysUtils, System.Classes, System.IniFiles, GourmetAIQ.Service.Constants;

type
  TGourmetServerConfig = record
    Host: string;
    Port: string;
    Scheme: string;       // 'http' ou 'https'
    function BaseURL: string;
  end;

  TAIQFomeConfig = record
    UrlBase: string;
    ClientId: string;
    ClientSecret: string;
    DeveloperId: string;
    DeveloperSecret: string;
  end;

  TConfigService = class
  private
    FIniPath: string;
    FLoaded: Boolean;
    FGourmet: TGourmetServerConfig;
    FAIQFome: TAIQFomeConfig;
    procedure EnsureLoaded;
    procedure DoLoad;
  public
    constructor Create;

    /// Forca releitura do .ini na proxima chamada (uso pos-edicao manual).
    procedure Invalidate;

    function Gourmet: TGourmetServerConfig;
    function AIQFome: TAIQFomeConfig;

    /// Le valor cru de uma secao/chave.
    function ReadString(const ASection, AKey, ADefault: string): string;
    procedure WriteString(const ASection, AKey, AValue: string);

    property IniPath: string read FIniPath write FIniPath;
  end;

function Config: TConfigService;

implementation

var
  GConfig: TConfigService;

function Config: TConfigService;
begin
  if GConfig = nil then
    GConfig := TConfigService.Create;
  Result := GConfig;
end;

{ TGourmetServerConfig }

function TGourmetServerConfig.BaseURL: string;
var
  vScheme: string;
begin
  vScheme := Scheme;
  if vScheme = '' then
    vScheme := 'http';
  Result := vScheme + '://' + Host + ':' + Port;
end;

{ TConfigService }

constructor TConfigService.Create;
begin
  inherited Create;
  FIniPath := ExtractFilePath(ParamStr(0)) + 'gourmeterp.ini';
  FLoaded := False;
end;

procedure TConfigService.EnsureLoaded;
begin
  if not FLoaded then
    DoLoad;
end;

procedure TConfigService.DoLoad;
var
  vIni: TIniFile;
begin
  vIni := TIniFile.Create(FIniPath);
  try
    FGourmet.Host := vIni.ReadString('Gourmet', 'servidor', '127.0.0.1');
    FGourmet.Port := vIni.ReadString('Gourmet', 'porta', '8091');
    FGourmet.Scheme := vIni.ReadString('Gourmet', 'scheme', 'http');

    FAIQFome.UrlBase := urlbase;
    FAIQFome.ClientId := client_id;
    FAIQFome.ClientSecret := client_secret;
    FAIQFome.DeveloperId := developer_id;
    FAIQFome.DeveloperSecret := developer_secret;
  finally
    vIni.Free;
  end;
  FLoaded := True;
end;

procedure TConfigService.Invalidate;
begin
  FLoaded := False;
end;

function TConfigService.Gourmet: TGourmetServerConfig;
begin
  EnsureLoaded;
  Result := FGourmet;
end;

function TConfigService.AIQFome: TAIQFomeConfig;
begin
  EnsureLoaded;
  Result := FAIQFome;
end;

function TConfigService.ReadString(const ASection, AKey, ADefault: string): string;
var
  vIni: TIniFile;
begin
  vIni := TIniFile.Create(FIniPath);
  try
    Result := vIni.ReadString(ASection, AKey, ADefault);
  finally
    vIni.Free;
  end;
end;

procedure TConfigService.WriteString(const ASection, AKey, AValue: string);
var
  vIni: TIniFile;
begin
  vIni := TIniFile.Create(FIniPath);
  try
    vIni.WriteString(ASection, AKey, AValue);
  finally
    vIni.Free;
  end;
  FLoaded := False; // proxima leitura recarrega
end;

initialization

finalization
  FreeAndNil(GConfig);

end.
