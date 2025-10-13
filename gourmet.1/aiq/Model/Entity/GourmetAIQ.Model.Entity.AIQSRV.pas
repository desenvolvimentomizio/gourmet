unit GourmetAIQ.Model.Entity.AIQSRV;

interface

{$TYPEINFO ON}


Uses
  SimpleAttributes;

type

  [Tabela('cfgmgou')]
  TCFGGOU = Class
  private
    fcfgcodigo: integer;
    fcfgmgoutokenaiq: string;
    fcfgmgourefreshaiq: string;
    fcfgmgouvalidadeaiq: string;
    fcfgmgouidlojaaiq: string;
    fcfgmgouemaillojaaiq: string;
    fcfgmgousenhalojaaiq: string;
    procedure setcodigo(const Value: integer);
    procedure setemaillojaaiq(const Value: string);
    procedure setidlojaaiq(const Value: string);
    procedure setrefreshaiq(const Value: string);
    procedure setsenhalojaaiq(const Value: string);
    procedure settokenaiq(const Value: string);
    procedure setvalidadeaiq(const Value: string);

  public
    constructor create;
    destructor destroy; override;
  published
    [campo('cfgcodigo'), PK, AutoInc]
    property cfgcodigo: integer read fcfgcodigo write setcodigo;

    [campo('cfgmgoutokenaiq')]
    property cfgmgoutokenaiq: string read fcfgmgoutokenaiq write settokenaiq;

    [campo('cfgmgourefreshaiq')]
    property cfgmgourefreshaiq: string read fcfgmgourefreshaiq write setrefreshaiq;

    [campo('cfgmgouvalidadeaiq')]
    property cfgmgouvalidadeaiq: string read fcfgmgouvalidadeaiq write setvalidadeaiq;

    [campo('cfgmgouidlojaaiq')]
    property cfgmgouidlojaaiq: string read fcfgmgouidlojaaiq write setidlojaaiq;

    [campo('cfgmgouemaillojaaiq')]
    property cfgmgouemaillojaaiq: string read fcfgmgouemaillojaaiq write setemaillojaaiq;

    [campo('cfgmgousenhalojaaiq')]
    property cfgmgousenhalojaaiq: string read fcfgmgousenhalojaaiq write setsenhalojaaiq;

  end;

implementation

{ TCFGGOU }

constructor TCFGGOU.create;
begin

end;

destructor TCFGGOU.destroy;
begin

  inherited;
end;

procedure TCFGGOU.setcodigo(const Value: integer);
begin
  fcfgcodigo := Value;
end;

procedure TCFGGOU.setemaillojaaiq(const Value: string);
begin
  fcfgmgouemaillojaaiq := Value;
end;

procedure TCFGGOU.setidlojaaiq(const Value: string);
begin
  fcfgmgouidlojaaiq := Value;
end;

procedure TCFGGOU.setrefreshaiq(const Value: string);
begin
  fcfgmgourefreshaiq := Value;
end;

procedure TCFGGOU.setsenhalojaaiq(const Value: string);
begin
  fcfgmgousenhalojaaiq := Value;
end;

procedure TCFGGOU.settokenaiq(const Value: string);
begin
  fcfgmgoutokenaiq := Value;
end;

procedure TCFGGOU.setvalidadeaiq(const Value: String);
begin
  fcfgmgouvalidadeaiq := Value;
end;


end.
