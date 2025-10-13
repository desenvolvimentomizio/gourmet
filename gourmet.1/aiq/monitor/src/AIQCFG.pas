unit AIQCFG;

interface

{$TYPEINFO ON}

type


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
    property cfgcodigo: integer read fcfgcodigo write setcodigo;
    property cfgmgoutokenaiq: string read fcfgmgoutokenaiq write settokenaiq;
    property cfgmgourefreshaiq: string read fcfgmgourefreshaiq write setrefreshaiq;
    property cfgmgouvalidadeaiq: TdateTime read fcfgmgouvalidadeaiq write setvalidadeaiq;
    property cfgmgouidlojaaiq: string read fcfgmgouidlojaaiq write setidlojaaiq;
    property cfgmgouemaillojaaiq: string read fcfgmgouemaillojaaiq write setemaillojaaiq;
    property cfgmgousenhalojaaiq: string read fcfgmgousenhalojaaiq write setsenhalojaaiq;
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
