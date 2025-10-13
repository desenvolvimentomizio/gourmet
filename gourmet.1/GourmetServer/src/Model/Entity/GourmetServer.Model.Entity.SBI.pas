unit GourmetServer.Model.Entity.SBI;

interface

{$TYPEINFO ON}

Uses
  SimpleAttributes;

type

  [Tabela('sbi')]
  TSBI = Class
  private
    fsbichave: Integer;
    fitochave: Integer;
    fsbrcodigo: Integer;
    fsbiobs: String;
    fsbiitem: Integer;
    procedure setsbichave(const Value: Integer);
    procedure setitochave(const Value: Integer);
    procedure setsbrcodigo(const Value: Integer);
    procedure setsbiobs(const Value: String);
    procedure setsbiitem(const Value: Integer);

  public
    constructor create;
    destructor destroy; override;
  published

    [campo('sbichave'), PK, AutoInc]
    property sbichave: Integer read fsbichave write setsbichave;

    [campo('itochave')]
    property itochave: Integer read fitochave write setitochave;

    [campo('sbrcodigo')]
    property sbrcodigo: Integer read fsbrcodigo write setsbrcodigo;

    [campo('sbiobs')]
    property sbiobs: string read fsbiobs write setsbiobs;

    [campo('sbiitem')]
    property sbiitem: Integer read fsbiitem write setsbiitem;
  End;

implementation

{ TSBI }

constructor TSBI.create;
begin

end;

destructor TSBI.destroy;
begin

  inherited;
end;

procedure TSBI.setitochave(const Value: Integer);
begin
  fitochave := Value;
end;

procedure TSBI.setsbichave(const Value: Integer);
begin
  fsbichave := Value;
end;

procedure TSBI.setsbiitem(const Value: Integer);
begin
  fsbiitem := Value;
end;

procedure TSBI.setsbiobs(const Value: String);
begin
  fsbiobs := Value;
end;

procedure TSBI.setsbrcodigo(const Value: Integer);
begin
  fsbrcodigo := Value;
end;

end.
