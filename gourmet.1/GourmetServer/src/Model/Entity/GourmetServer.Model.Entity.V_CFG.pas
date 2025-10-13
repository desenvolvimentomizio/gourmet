unit GourmetServer.Model.Entity.V_CFG;

interface

{$TYPEINFO ON}

Uses
  SimpleAttributes;

type

  [Tabela('v_cfg')]
  TV_CFG = Class
  private
    fcfgcodigo: Integer;
    fcfgmgouctadelivery: Integer;
    fcfgtoemesinte: Integer;
    fcfgmgoupedidelivery: Integer;

    procedure setcfgcodigo(const Value: Integer);
    procedure setcfgmgouctadelivery(const Value: Integer);
    procedure setcfgtoemesinte(const Value: Integer);
    procedure setcfgmgoupedidelivery(const Value: Integer);

  public
    constructor create;
    destructor destroy; override;
  published
    [campo('cfgcodigo'), PK, AutoInc]
    property cfgcodigo: Integer read fcfgcodigo write setcfgcodigo;

    [campo('cfgmgouctadelivery')]
    property cfgmgouctadelivery: Integer read fcfgmgouctadelivery write setcfgmgouctadelivery;

    [campo('cfgtoemesinte')]
    property cfgtoemesinte: Integer read fcfgtoemesinte write setcfgtoemesinte;

    [campo('cfgmgoupedidelivery')]
    property cfgmgoupedidelivery: Integer read fcfgmgoupedidelivery write setcfgmgoupedidelivery;

  End;

implementation

{ TV_CFG }

constructor TV_CFG.create;
begin

end;

destructor TV_CFG.destroy;
begin

  inherited;
end;

procedure TV_CFG.setcfgcodigo(const Value: Integer);
begin
  fcfgcodigo := Value;
end;

procedure TV_CFG.setcfgmgouctadelivery(const Value: Integer);
begin
  fcfgmgouctadelivery := Value;
end;

procedure TV_CFG.setcfgmgoupedidelivery(const Value: Integer);
begin
  fcfgmgoupedidelivery := Value;
end;

procedure TV_CFG.setcfgtoemesinte(const Value: Integer);
begin
  fcfgtoemesinte := Value;
end;

end.
