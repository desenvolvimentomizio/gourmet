unit GourmetServer.Model.Entity.CFGMGOU;

interface

{$TYPEINFO ON}

Uses
  SimpleAttributes;

type

  [Tabela('cfgmgou')]
  TCFGMGOU = Class
  private
    fcfgcodigo: Integer;
    fcfgmgoupedidelivery: Integer;
    fcfgmgoustatusaiq: TdateTime;

    procedure setcfgcodigo(const Value: Integer);
    procedure setcfgmgoupedidelivery(const Value: Integer);
    procedure setcfgmgoustatusaiq(const Value: TdateTime);

  public
    constructor create;
    destructor destroy; override;
  published
    [campo('cfgcodigo'), PK, AutoInc]
    property cfgcodigo: Integer read fcfgcodigo write setcfgcodigo;

    [campo('cfgmgoupedidelivery')]
    property cfgmgoupedidelivery: Integer read fcfgmgoupedidelivery write setcfgmgoupedidelivery;

    [campo('cfgmgoustatusaiq')]
    property cfgmgoustatusaiq: TdateTime read fcfgmgoustatusaiq write setcfgmgoustatusaiq;

  End;

  [Tabela('cfgmgou')]
  TCFGMGOUSTATUS = Class
  private
    fcfgcodigo: Integer;
    fcfgmgoustatusaiq: TdateTime;

    procedure setcfgcodigo(const Value: Integer);
    procedure setcfgmgoustatusaiq(const Value: TdateTime);

  public
    constructor create;
    destructor destroy; override;
  published
    [campo('cfgcodigo'), PK, AutoInc]
    property cfgcodigo: Integer read fcfgcodigo write setcfgcodigo;

    [campo('cfgmgoustatusaiq')]
    property cfgmgoustatusaiq: TdateTime read fcfgmgoustatusaiq write setcfgmgoustatusaiq;

  End;

implementation

{ TCFGMGOU }

constructor TCFGMGOU.create;
begin

end;

destructor TCFGMGOU.destroy;
begin

  inherited;
end;

procedure TCFGMGOU.setcfgcodigo(const Value: Integer);
begin
  fcfgcodigo := Value;
end;

procedure TCFGMGOU.setcfgmgoupedidelivery(const Value: Integer);
begin
  fcfgmgoupedidelivery := Value;
end;

procedure TCFGMGOU.setcfgmgoustatusaiq(const Value: TdateTime);
begin
  fcfgmgoustatusaiq := Value;
end;

{ TCFGMGOUSTATUS }

constructor TCFGMGOUSTATUS.create;
begin

end;

destructor TCFGMGOUSTATUS.destroy;
begin

  inherited;
end;

procedure TCFGMGOUSTATUS.setcfgcodigo(const Value: Integer);
begin
  fcfgcodigo := Value;
end;

procedure TCFGMGOUSTATUS.setcfgmgoustatusaiq(const Value: TdateTime);
begin
  fcfgmgoustatusaiq := Value;
end;

end.
