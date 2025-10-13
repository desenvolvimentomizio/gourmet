// 
// Created by the DataSnap proxy generator.
// 09/05/2014 10:47:20
// 

unit uCS;

interface

uses Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TSMClient = class(TDSAdminClient)
  private
    FDSServerModuleCreateCommand: TDBXCommand;
    FConectabancoCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DSServerModuleCreate(Sender: TObject);
    procedure Conectabanco;
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

procedure TSMClient.Conectabanco;
begin
  if FConectabancoCommand = nil then
  begin
    FConectabancoCommand := FDBXConnection.CreateCommand;
    FConectabancoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FConectabancoCommand.Text := 'TSM.Conectabanco';
    FConectabancoCommand.Prepare;
  end;
  FConectabancoCommand.ExecuteUpdate;
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
  FConectabancoCommand.DisposeOf;
  inherited;
end;

end.
