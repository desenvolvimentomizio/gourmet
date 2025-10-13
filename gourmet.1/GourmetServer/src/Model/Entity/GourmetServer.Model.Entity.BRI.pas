unit GourmetServer.Model.Entity.BRI;

interface

{$TYPEINFO ON}

Uses
  SimpleAttributes;

type

  [Tabela('bri')]
  TBRI = Class
  private

    fbrichave: Integer;
    fitochave: Integer;
    fbrdcodigo: Integer;
    fbriincluir: Integer;
    procedure setbrichave(const Value: Integer);
    procedure setitochave(const Value: Integer);
    procedure setbrdcodigo(const Value: Integer);
    procedure setbriincluir(const Value: Integer);

  public
    constructor create;
    destructor destroy; override;
  published

    [campo('brichave'), PK, AutoInc]
    property brichave: Integer read fbrichave write setbrichave;

    [campo('itochave')]
    property itochave: Integer read fitochave write setitochave;

    [campo('brdcodigo')]
    property brdcodigo: Integer read fbrdcodigo write setbrdcodigo;

    [campo('briincluir')]
    property briincluir: Integer read fbriincluir write setbriincluir;

  End;

implementation

{ TBRI }

constructor TBRI.create;
begin

end;

destructor TBRI.destroy;
begin

  inherited;
end;

procedure TBRI.setbrdcodigo(const Value: Integer);
begin
  fbrdcodigo := Value;
end;

procedure TBRI.setbrichave(const Value: Integer);
begin
  fbrichave := Value;
end;

procedure TBRI.setbriincluir(const Value: Integer);
begin
  fbriincluir := Value;
end;

procedure TBRI.setitochave(const Value: Integer);
begin
  fitochave := Value;
end;

end.
