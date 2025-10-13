unit GourmetServer.Model.Entity.ETV;

interface

{$TYPEINFO ON}

Uses
  SimpleAttributes;

type

  [Tabela('etv')]
  TETV = Class
  private
    fetvcodigo: Integer;
    fetdcodigo: Integer;
    ftvicodigo: Integer;
    fpcgcodigo: Integer;
    procedure setetvcodigo(const Value: Integer);
    procedure setetdcodigo(const Value: Integer);
    procedure settvicodigo(const Value: Integer);

  public
    constructor create;
    destructor destroy; override;
  published

    [campo('etvcodigo'), PK, AutoInc]
    property etvcodigo: Integer read fetvcodigo write setetvcodigo;

    [campo('etdcodigo')]
    property etdcodigo: Integer read fetdcodigo write setetdcodigo;

    [campo('tvicodigo')]
    property tvicodigo: Integer read ftvicodigo write settvicodigo;

  End;

implementation

{ TETV }

constructor TETV.create;
begin

end;

destructor TETV.destroy;
begin
  inherited;
end;

procedure TETV.setetdcodigo(const Value: Integer);
begin
  fetdcodigo := Value;
end;

procedure TETV.setetvcodigo(const Value: Integer);
begin
  fetvcodigo := Value;
end;

procedure TETV.settvicodigo(const Value: Integer);
begin
  ftvicodigo := Value;
end;

end.
