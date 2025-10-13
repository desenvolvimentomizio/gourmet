unit GourmetServer.Model.Entity.ETE;

interface

{$TYPEINFO ON}

Uses
  SimpleAttributes;

type

  [Tabela('ete')]
  TETE = Class
  private
    fetecodigo: Integer;
    fetdcodigo: Integer;
    feteemail: string;
    fetecontato: string;
    fetedepartamento: string;
    feteenvianfe: Integer;

    procedure setetecodigo(const Value: Integer);
    procedure setetdcodigo(const Value: Integer);
    procedure seteteemail(const Value: string);
    procedure setetecontato(const Value: string);
    procedure setetedepartamento(const Value: string);
    procedure seteteenvianfe(const Value: Integer);

  public
    constructor create;
    destructor destroy; override;
  published

    [campo('etecodigo'), PK,AutoInc]
    property etecodigo: Integer read fetecodigo write setetecodigo;

    [campo('etdcodigo')]
    property etdcodigo: Integer read fetdcodigo write setetdcodigo;

    [campo('eteemail')]
    property eteemail: string read feteemail write seteteemail;

    [campo('etecontato')]
    property etecontato: string read fetecontato write setetecontato;

    [campo('etedepartamento')]
    property etedepartamento: string read fetedepartamento write setetedepartamento;

    [campo('eteenvianfe')]
    property eteenvianfe: Integer read feteenvianfe write seteteenvianfe;

  End;

implementation

{ TETE }

constructor TETE.create;
begin

end;

destructor TETE.destroy;
begin
  inherited;
end;

procedure TETE.setetecodigo(const Value: Integer);
begin
  fetecodigo := Value;
end;

procedure TETE.setetdcodigo(const Value: Integer);
begin
  fetdcodigo := Value;
end;

procedure TETE.setetecontato(const Value: string);
begin
  fetecontato := Value;
end;

procedure TETE.setetedepartamento(const Value: string);
begin
  fetedepartamento := Value;
end;

procedure TETE.seteteemail(const Value: string);
begin
  feteemail := Value;
end;

procedure TETE.seteteenvianfe(const Value: Integer);
begin
  feteenvianfe := Value;
end;

end.
