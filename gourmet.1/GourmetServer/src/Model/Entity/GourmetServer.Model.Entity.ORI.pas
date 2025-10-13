unit GourmetServer.Model.Entity.ORI;

interface

{$TYPEINFO ON}

Uses
  SimpleAttributes;

type

  [Tabela('ori')]
  TORI = Class
  private
    foricodigo: Integer;
    foriidentificacao: string;
    fetdcodigo: Integer;
    fsipcodigo: Integer;
    procedure setoricodigo(const Value: Integer);
    procedure setoriidentificacao(const Value: String);
    procedure setetdcodigo(const Value: Integer);
    procedure setsipcodigo(const Value: Integer);
  public
    constructor create;
    destructor destroy; override;
  published

    [campo('oricodigo'), PK, AutoInc]
    property oricodigo: Integer read foricodigo write setoricodigo;

    [campo('oriidentificacao')]
    property oriidentificacao: String read foriidentificacao write setoriidentificacao;

    [campo('etdcodigo')]
    property etdcodigo: Integer read fetdcodigo write setetdcodigo;

    [campo('sipcodigo')]
    property sipcodigo: Integer read fsipcodigo write setsipcodigo;

  End;

implementation

{ TBRD }

constructor TORI.create;
begin

end;

destructor TORI.destroy;
begin

  inherited;
end;

procedure TORI.setetdcodigo(const Value: Integer);
begin
  fetdcodigo := Value;
end;

procedure TORI.setoricodigo(const Value: Integer);
begin
  foricodigo := Value;
end;

procedure TORI.setoriidentificacao(const Value: String);
begin
  foriidentificacao := Value;
end;

procedure TORI.setsipcodigo(const Value: Integer);
begin
  fsipcodigo := Value;
end;

end.
