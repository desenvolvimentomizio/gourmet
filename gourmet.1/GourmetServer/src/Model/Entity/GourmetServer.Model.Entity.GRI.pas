unit GourmetServer.Model.Entity.GRI;

interface

{$TYPEINFO ON}

Uses
  SimpleAttributes;

type

  [Tabela('gri')]
  TGRI = Class
  private
    fgricodigo: Integer;
    fgrpcodigo: Integer;
    ftcicodigo: Integer;

    procedure setgricodigo(const Value: Integer);
    procedure setgrpcodigo(const Value: Integer);
    procedure settcicodigo(const Value: Integer);

  public
    constructor create;
    destructor destroy; override;
  published

    [campo('gricodigo'), PK, AutoInc]
    property gricodigo: Integer read fgricodigo write setgricodigo;

    [campo('grpcodigo')]
    property grpcodigo: Integer read fgrpcodigo write setgrpcodigo;

    [campo('tcicodigo')]
    property tcicodigo: Integer read ftcicodigo write settcicodigo;

  End;

implementation

{ TGRI }

constructor TGRI.create;
begin

end;

destructor TGRI.destroy;
begin
  inherited;
end;

procedure TGRI.setgricodigo(const Value: Integer);
begin
  fgricodigo := Value;
end;

procedure TGRI.setgrpcodigo(const Value: Integer);
begin
  fgrpcodigo := Value;
end;

procedure TGRI.settcicodigo(const Value: Integer);
begin
  ftcicodigo := Value;
end;

end.
