unit uCm;

interface

uses
  System.SysUtils, System.Classes, uCC, Data.DBXDataSnap,
  IPPeerClient, Data.DBXCommon, Data.DB, Data.SqlExpr;

type
  TCM = class(TDataModule)
    ConexaoServer: TSQLConnection;
    procedure ConexaoServerAfterConnect(Sender: TObject);
    function VerificaConexao: boolean;
    procedure ConexaoServerAfterDisconnect(Sender: TObject);
  private
    FInstanceOwner: boolean;
    FSMClient: TSMClient;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function GetSMClient: TSMClient;
    property InstanceOwner: boolean read FInstanceOwner write FInstanceOwner;
    property SMClient: TSMClient read GetSMClient write FSMClient;

  end;

var
  CM: TCM;

implementation

{ %CLASSGROUP 'FMX.Controls.TControl' }

uses ufprinciatentable;

{$R *.dfm}

procedure TCM.ConexaoServerAfterConnect(Sender: TObject);
begin
  fprinciatentable.lbStatus.text := 'C';
end;

procedure TCM.ConexaoServerAfterDisconnect(Sender: TObject);
begin
  fprinciatentable.lbStatus.text := 'D';

end;

constructor TCM.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

function TCM.VerificaConexao: boolean;
begin
  try
    ConexaoServer.Open;
    result := True;
  except
    result := false;
  end;
end;

destructor TCM.Destroy;
begin
  FSMClient.Free;
  inherited;
end;

function TCM.GetSMClient: TSMClient;
begin
  if FSMClient = nil then
  begin
    try
      try
      ConexaoServer.Open;
      except
       sleep(2000);
        ConexaoServer.Open;
      end;
      FSMClient := TSMClient.Create(ConexaoServer.DBXConnection, FInstanceOwner);
    except

    end;
  end;
  result := FSMClient;
end;

end.

