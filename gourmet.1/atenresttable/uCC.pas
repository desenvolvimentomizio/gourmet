//
// Created by the DataSnap proxy generator.
// 22/05/2014 15:25:23
//

unit uCC;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB,
  Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TSMClient = class(TDSAdminClient)
  private
    FDSServerModuleCreateCommand: TDBXCommand;
    FEstadoMesasCommand: TDBXCommand;
    FremoveritemCommand: TDBXCommand;
    FenviarparacozinhaCommand: TDBXCommand;
    FCarregaUsuarioCommand: TDBXCommand;
    FCarregaAtendimentosCommand: TDBXCommand;
    FBuscaAtendimentosCommand: TDBXCommand;
    FNovoorcamentoCommand: TDBXCommand;
    FBuscaProCommand: TDBXCommand;
    FBuscaqProCommand: TDBXCommand;
    FBuscaoProCommand: TDBXCommand;
    FIncluirNovoItemCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DSServerModuleCreate(Sender: TObject);
    function EstadoMesas: string;
    function removeritem(vitochave: string): Boolean;
    function enviarparacozinha(VOrcChave: string): string;
    function CarregaUsuario(vsenha: string): string;
    function CarregaAtendimentos(VOrcChave: string; VTrmCodigo: string): Boolean;
    function BuscaAtendimentos(VTrmCodigo: string; vIDMesa: string; vClbCodigo: string): string;
    function Novoorcamento(VTrmCodigo: string; vIDMesa: string; vClbCodigo: string): string;
    function BuscaPro(vProCodigo: string): string;
    function BuscaqPro(vProCodigo: string): string;
    function BuscaoPro(vProCodigo: string): string;
    function IncluirNovoItem(Produto: Integer; Quantidade: Double; complemento: string; unidade: string; pun: Integer; VOrcChave: string;
      vUsrCodigo: string; VTrmCodigo: string; vIDMesa: string): string;
  end;

implementation

procedure TSMClient.DSServerModuleCreate(Sender: TObject);
begin
  if FDSServerModuleCreateCommand = nil then
  begin
    FDSServerModuleCreateCommand := FDBXConnection.CreateCommand;
    FDSServerModuleCreateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDSServerModuleCreateCommand.Text := 'TSM.DSServerModuleCreate';
    FDSServerModuleCreateCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FDSServerModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FDSServerModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDSServerModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  FDSServerModuleCreateCommand.ExecuteUpdate;
end;

function TSMClient.EstadoMesas: string;
begin

    if FEstadoMesasCommand = nil then
    begin
      FEstadoMesasCommand := FDBXConnection.CreateCommand;
      FEstadoMesasCommand.CommandType := TDBXCommandTypes.DSServerMethod;
      FEstadoMesasCommand.Text := 'TSM.EstadoMesas';
      FEstadoMesasCommand.Prepare;
    end;

    FEstadoMesasCommand.ExecuteUpdate;
    Result := FEstadoMesasCommand.Parameters[0].Value.GetWideString;

end;

function TSMClient.removeritem(vitochave: string): Boolean;
begin
  if FremoveritemCommand = nil then
  begin
    FremoveritemCommand := FDBXConnection.CreateCommand;
    FremoveritemCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FremoveritemCommand.Text := 'TSM.removeritem';
    FremoveritemCommand.Prepare;
  end;
  FremoveritemCommand.Parameters[0].Value.SetWideString(vitochave);
  FremoveritemCommand.ExecuteUpdate;
  Result := FremoveritemCommand.Parameters[1].Value.GetBoolean;
end;

function TSMClient.enviarparacozinha(VOrcChave: string): string;
begin
  if FenviarparacozinhaCommand = nil then
  begin
    FenviarparacozinhaCommand := FDBXConnection.CreateCommand;
    FenviarparacozinhaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FenviarparacozinhaCommand.Text := 'TSM.enviarparacozinha';
    FenviarparacozinhaCommand.Prepare;
  end;
  FenviarparacozinhaCommand.Parameters[0].Value.SetWideString(VOrcChave);
  FenviarparacozinhaCommand.ExecuteUpdate;
  Result := FenviarparacozinhaCommand.Parameters[1].Value.GetWideString;
end;

function TSMClient.CarregaUsuario(vsenha: string): string;
begin
  if FCarregaUsuarioCommand = nil then
  begin
    FCarregaUsuarioCommand := FDBXConnection.CreateCommand;
    FCarregaUsuarioCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCarregaUsuarioCommand.Text := 'TSM.CarregaUsuario';
    FCarregaUsuarioCommand.Prepare;
  end;
  FCarregaUsuarioCommand.Parameters[0].Value.SetWideString(vsenha);
  FCarregaUsuarioCommand.ExecuteUpdate;
  Result := FCarregaUsuarioCommand.Parameters[1].Value.GetWideString;
end;

function TSMClient.CarregaAtendimentos(VOrcChave: string; VTrmCodigo: string): Boolean;
begin
  if FCarregaAtendimentosCommand = nil then
  begin
    FCarregaAtendimentosCommand := FDBXConnection.CreateCommand;
    FCarregaAtendimentosCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCarregaAtendimentosCommand.Text := 'TSM.CarregaAtendimentos';
    FCarregaAtendimentosCommand.Prepare;
  end;
  FCarregaAtendimentosCommand.Parameters[0].Value.SetWideString(VOrcChave);
  FCarregaAtendimentosCommand.Parameters[1].Value.SetWideString(VTrmCodigo);
  FCarregaAtendimentosCommand.ExecuteUpdate;
  Result := FCarregaAtendimentosCommand.Parameters[2].Value.GetBoolean;
end;

function TSMClient.BuscaAtendimentos(VTrmCodigo: string; vIDMesa: string; vClbCodigo: string): string;
begin
  if FBuscaAtendimentosCommand = nil then
  begin
    FBuscaAtendimentosCommand := FDBXConnection.CreateCommand;
    FBuscaAtendimentosCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBuscaAtendimentosCommand.Text := 'TSM.BuscaAtendimentos';
    FBuscaAtendimentosCommand.Prepare;
  end;
  FBuscaAtendimentosCommand.Parameters[0].Value.SetWideString(VTrmCodigo);
  FBuscaAtendimentosCommand.Parameters[1].Value.SetWideString(vIDMesa);
  FBuscaAtendimentosCommand.Parameters[2].Value.SetWideString(vClbCodigo);
  FBuscaAtendimentosCommand.ExecuteUpdate;
  Result := FBuscaAtendimentosCommand.Parameters[3].Value.GetWideString;
end;

function TSMClient.Novoorcamento(VTrmCodigo: string; vIDMesa: string; vClbCodigo: string): string;
begin
  if FNovoorcamentoCommand = nil then
  begin
    FNovoorcamentoCommand := FDBXConnection.CreateCommand;
    FNovoorcamentoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FNovoorcamentoCommand.Text := 'TSM.Novoorcamento';
    FNovoorcamentoCommand.Prepare;
  end;
  FNovoorcamentoCommand.Parameters[0].Value.SetWideString(VTrmCodigo);
  FNovoorcamentoCommand.Parameters[1].Value.SetWideString(vIDMesa);
  FNovoorcamentoCommand.Parameters[2].Value.SetWideString(vClbCodigo);
  FNovoorcamentoCommand.ExecuteUpdate;
  Result := FNovoorcamentoCommand.Parameters[3].Value.GetWideString;
end;

function TSMClient.BuscaPro(vProCodigo: string): string;
begin
  if FBuscaProCommand = nil then
  begin
    FBuscaProCommand := FDBXConnection.CreateCommand;
    FBuscaProCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBuscaProCommand.Text := 'TSM.BuscaPro';
    FBuscaProCommand.Prepare;
  end;
  FBuscaProCommand.Parameters[0].Value.SetWideString(vProCodigo);
  FBuscaProCommand.ExecuteUpdate;
  Result := FBuscaProCommand.Parameters[1].Value.GetWideString;
end;

function TSMClient.BuscaqPro(vProCodigo: string): string;
begin
  if FBuscaqProCommand = nil then
  begin
    FBuscaqProCommand := FDBXConnection.CreateCommand;
    FBuscaqProCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBuscaqProCommand.Text := 'TSM.BuscaqPro';
    FBuscaqProCommand.Prepare;
  end;
  FBuscaqProCommand.Parameters[0].Value.SetWideString(vProCodigo);
  FBuscaqProCommand.ExecuteUpdate;
  Result := FBuscaqProCommand.Parameters[1].Value.GetWideString;
end;

function TSMClient.BuscaoPro(vProCodigo: string): string;
begin
  if FBuscaoProCommand = nil then
  begin
    FBuscaoProCommand := FDBXConnection.CreateCommand;
    FBuscaoProCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBuscaoProCommand.Text := 'TSM.BuscaoPro';
    FBuscaoProCommand.Prepare;
  end;
  FBuscaoProCommand.Parameters[0].Value.SetWideString(vProCodigo);
  FBuscaoProCommand.ExecuteUpdate;
  Result := FBuscaoProCommand.Parameters[1].Value.GetWideString;
end;

function TSMClient.IncluirNovoItem(Produto: Integer; Quantidade: Double; complemento: string; unidade: string; pun: Integer; VOrcChave: string;
  vUsrCodigo: string; VTrmCodigo: string; vIDMesa: string): string;
begin
  if FIncluirNovoItemCommand = nil then
  begin
    FIncluirNovoItemCommand := FDBXConnection.CreateCommand;
    FIncluirNovoItemCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FIncluirNovoItemCommand.Text := 'TSM.IncluirNovoItem';
    FIncluirNovoItemCommand.Prepare;
  end;
  FIncluirNovoItemCommand.Parameters[0].Value.SetInt32(Produto);
  FIncluirNovoItemCommand.Parameters[1].Value.SetDouble(Quantidade);
  FIncluirNovoItemCommand.Parameters[2].Value.SetWideString(complemento);
  FIncluirNovoItemCommand.Parameters[3].Value.SetWideString(unidade);
  FIncluirNovoItemCommand.Parameters[4].Value.SetInt32(pun);
  FIncluirNovoItemCommand.Parameters[5].Value.SetWideString(VOrcChave);
  FIncluirNovoItemCommand.Parameters[6].Value.SetWideString(vUsrCodigo);
  FIncluirNovoItemCommand.Parameters[7].Value.SetWideString(VTrmCodigo);
  FIncluirNovoItemCommand.Parameters[8].Value.SetWideString(vIDMesa);
  FIncluirNovoItemCommand.ExecuteUpdate;
  Result := FIncluirNovoItemCommand.Parameters[9].Value.GetWideString;
end;

constructor TSMClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;

constructor TSMClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;

destructor TSMClient.Destroy;
begin
  FDSServerModuleCreateCommand.DisposeOf;
  FEstadoMesasCommand.DisposeOf;
  FremoveritemCommand.DisposeOf;
  FenviarparacozinhaCommand.DisposeOf;
  FCarregaUsuarioCommand.DisposeOf;
  FCarregaAtendimentosCommand.DisposeOf;
  FBuscaAtendimentosCommand.DisposeOf;
  FNovoorcamentoCommand.DisposeOf;
  FBuscaProCommand.DisposeOf;
  FBuscaqProCommand.DisposeOf;
  FBuscaoProCommand.DisposeOf;
  FIncluirNovoItemCommand.DisposeOf;
  inherited;
end;

end.
