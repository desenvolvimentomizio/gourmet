unit uClientModule;

interface

uses
  System.SysUtils, System.Classes, uClientClasses, Datasnap.DSClientRest,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Data.FireDACJSONReflect, FireDAC.Stan.StorageJSON;

type
  TClientModule = class(TDataModule)
    DSRestConexao: TDSRestConnection;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    procedure DSRestConexaoBeforeExecute(Sender: TObject);
  private
    FInstanceOwner: Boolean;
    FServerMethodsClient: TServerMethodsClient;
    function GetServerMethods1Client: TServerMethodsClient;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property ServerMethods1Client: TServerMethodsClient read GetServerMethods1Client write FServerMethodsClient;

end;

var
  ClientModule: TClientModule;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses uFprinciMonitorProducao;

{$R *.dfm}

constructor TClientModule.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

destructor TClientModule.Destroy;
begin
  FServerMethodsClient.Free;
  inherited;
end;

procedure TClientModule.DSRestConexaoBeforeExecute(Sender: TObject);
begin
  DSRestConexao.Host := FprinciMonitorProducao.vpIPServidorREST;
end;

function TClientModule.GetServerMethods1Client: TServerMethodsClient;
begin
  if FServerMethodsClient = nil then
    FServerMethodsClient:= TServerMethodsClient.Create(DSRestConexao, FInstanceOwner);
  Result := FServerMethodsClient;
end;


end.
