unit GourmetServer.Model.Entity.aiq.AIQCFG;

interface

{$TYPEINFO ON}


Uses
  SimpleAttributes;

type

  [Tabela('cfgmgou')]
  TAIQCFG = Class
  private
    fcfgcodigo: integer;
    fcfgmgoutokenaiq: string;
    fcfgmgourefreshaiq: string;
    fcfgmgouvalidadeaiq: Tdatetime;
    fcfgmgouidlojaaiq: string;
    fcfgmgouemaillojaaiq: string;
    fcfgmgousenhalojaaiq: string;
    fcfgmgousituacaolojaaiq: string;
    procedure setcodigo(const Value: integer);
    procedure setemaillojaaiq(const Value: string);
    procedure setidlojaaiq(const Value: string);
    procedure setrefreshaiq(const Value: string);
    procedure setsenhalojaaiq(const Value: string);
    procedure settokenaiq(const Value: string);
    procedure setvalidadeaiq(const Value: TDateTime);
    procedure setsituacaolojaaiq(const Value: string);

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
    property cfgmgouvalidadeaiq: TdateTime read fcfgmgouvalidadeaiq write setvalidadeaiq;

    [campo('cfgmgouidlojaaiq')]
    property cfgmgouidlojaaiq: string read fcfgmgouidlojaaiq write setidlojaaiq;

    [campo('cfgmgouemaillojaaiq')]
    property cfgmgouemaillojaaiq: string read fcfgmgouemaillojaaiq write setemaillojaaiq;

    [campo('cfgmgousenhalojaaiq')]
    property cfgmgousenhalojaaiq: string read fcfgmgousenhalojaaiq write setsenhalojaaiq;

    [campo('cfgmgousituacaolojaaiq')]
    property cfgmgousituacaolojaaiq: string read fcfgmgousituacaolojaaiq write setsituacaolojaaiq;

  end;

implementation

{ TCFGGOU }

constructor TAIQCFG.create;
begin

end;

destructor TAIQCFG.destroy;
begin

  inherited;
end;

procedure TAIQCFG.setcodigo(const Value: integer);
begin
  fcfgcodigo := Value;
end;

procedure TAIQCFG.setemaillojaaiq(const Value: string);
begin
  fcfgmgouemaillojaaiq := Value;
end;

procedure TAIQCFG.setidlojaaiq(const Value: string);
begin
  fcfgmgouidlojaaiq := Value;
end;

procedure TAIQCFG.setrefreshaiq(const Value: string);
begin
  fcfgmgourefreshaiq := Value;
end;

procedure TAIQCFG.setsenhalojaaiq(const Value: string);
begin
  fcfgmgousenhalojaaiq := Value;
end;

procedure TAIQCFG.settokenaiq(const Value: string);
begin
  fcfgmgoutokenaiq := Value;
end;

procedure TAIQCFG.setvalidadeaiq(const Value: TDateTime);
begin
  fcfgmgouvalidadeaiq := Value;
end;

procedure TAIQCFG.setSituacaolojaAIQ(const Value: String);
begin
  fcfgmgousituacaolojaaiq := Value;
end;


end.
