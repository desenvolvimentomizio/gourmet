unit GourmetServer.Model.Entity.CCX;

interface

{$TYPEINFO ON}

Uses
  SimpleAttributes;

type

  [Tabela('ccx')]
  TCCX = Class
  private
    fccxchave: Integer;
    fclbcodigo: Integer;
    fctacodigo: Integer;
    procedure setccxchave(const Value: Integer);
    procedure setclbcodigo(const Value: Integer);
    procedure setctacodigo(const Value: Integer);

  public
    constructor create;
    destructor destroy; override;
  published
    [campo('ccxchave'), PK, AutoInc]
    property ccxchave: Integer read fccxchave write setccxchave;

    [campo('clbcodigo')]
    property clbcodigo: Integer read fclbcodigo write setclbcodigo;

    [campo('ctacodigo')]
    property ctacodigo: Integer read fctacodigo write setctacodigo;

  End;

implementation

{ LTE }

constructor TCCX.create;
begin

end;

destructor TCCX.destroy;
begin
  inherited;
end;

procedure TCCX.setccxchave(const Value: Integer);
begin
  fccxchave := Value;
end;

procedure TCCX.setclbcodigo(const Value: Integer);
begin
  fclbcodigo := Value;
end;

procedure TCCX.setctacodigo(const Value: Integer);
begin
  fctacodigo := Value;
end;

end.
