unit MizioUP.Models.Configuracoes;

interface
uses
  System.Classes,
  System.IniFiles,
  System.SysUtils,
  FMX.Forms;

type
  TLojaModelInfraConfiguracoes = class
  private
    FIniFile: TIniFile;
    class var FConfig: TLojaModelInfraConfiguracoes;
    function GetTema: string;
    procedure SetTema(const Value: string);
    function GetAPIUrl: string;
    procedure SetAPIUrl(const Value: string);
    function GetAPITimeout: Integer;
    procedure SetAPITimeout(const Value: Integer);
  public
    constructor Create;
    destructor Destroy; override;
    class destructor UnInitialize;
    class function GetInstance: TLojaModelInfraConfiguracoes;
    property Tema: string read GetTema write SetTema;
    property APIUrl: string read GetAPIUrl write SetAPIUrl;
    property APITimeout: Integer read GetAPITimeout write SetAPITimeout;
  end;
implementation



const
  C_SECAO_GERAL: string = 'GERAL';
  C_SECAO_API: string = 'API';
{ TLojaModelInfraConfiguracoes }
constructor TLojaModelInfraConfiguracoes.Create;
begin
  FIniFile := TIniFile.Create( System.SysUtils.GetCurrentDir+'MizipUP.ini');
end;
destructor TLojaModelInfraConfiguracoes.Destroy;
begin
  FreeAndNil(FIniFile);
  FreeAndNil(FConfig);
  inherited;
end;
function TLojaModelInfraConfiguracoes.GetAPITimeout: Integer;
begin
  Result := FIniFile.ReadInteger(C_SECAO_API, 'Timeout', 3000);
end;
function TLojaModelInfraConfiguracoes.GetAPIUrl: string;
begin
  Result := FIniFile.ReadString(C_SECAO_API, 'URL', 'http://localhost:9000/loja/api');
end;
class function TLojaModelInfraConfiguracoes.GetInstance: TLojaModelInfraConfiguracoes;
begin
  if FConfig = nil
  then FConfig := TLojaModelInfraConfiguracoes.Create;
  Result := FConfig;
end;
function TLojaModelInfraConfiguracoes.GetTema: string;
begin
end;
procedure TLojaModelInfraConfiguracoes.SetAPITimeout(const Value: Integer);
begin
  FIniFile.WriteInteger(C_SECAO_API, 'Timeout', Value);
end;
procedure TLojaModelInfraConfiguracoes.SetAPIUrl(const Value: string);
begin
  FIniFile.WriteString(C_SECAO_API, 'URL', Value);
end;
procedure TLojaModelInfraConfiguracoes.SetTema(const Value: string);
begin
end;
class destructor TLojaModelInfraConfiguracoes.UnInitialize;
begin
  if FConfig <> nil
  then FreeAndNil(FConfig);
end;
end.
