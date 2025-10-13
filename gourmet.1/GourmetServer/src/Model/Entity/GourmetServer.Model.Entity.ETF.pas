unit GourmetServer.Model.Entity.ETF;

interface

{$TYPEINFO ON}

Uses
  SimpleAttributes;

type

  [Tabela('etf')]
  TETF = Class
  private
    fetfcodigo: integer;
    fetdcodigo: integer;
    fttfcodigo: integer;
    fetftelefone: string;
    fetfcontato: string;
    fetfdepartamento: string;
    fetfativo: integer;
    fjsncodigo: string;
    fetfsenha: string;
    fetfpontuacao: string;

    procedure setetfcodigo(const Value: integer);
    procedure setetdcodigo(const Value: integer);
    procedure setttfcodigo(const Value: integer);
    procedure setetftelefone(const Value: string);
    procedure setetfcontato(const Value: string);
    procedure setetfdepartamento(const Value: string);
    procedure setetfativo(const Value: integer);
    procedure setjsncodigo(const Value: string);
    procedure setetfsenha(const Value: string);
    procedure setetfpontuacao(const Value: string);

  public
    constructor create;
    destructor destroy; override;
  published

    [campo('etfcodigo'), PK,AutoInc]
    property etfcodigo: integer read fetfcodigo write setetfcodigo;

    [campo('etdcodigo')]
    property etdcodigo: integer read fetdcodigo write setetdcodigo;

    [campo('ttfcodigo')]
    property ttfcodigo: integer read fttfcodigo write setttfcodigo;

    [campo('etftelefone')]
    property etftelefone: string read fetftelefone write setetftelefone;

    [campo('etfcontato')]
    property etfcontato: string read fetfcontato write setetfcontato;

    [campo('etfdepartamento')]
    property etfdepartamento: string read fetfdepartamento write setetfdepartamento;

    [campo('etfativo')]
    property etfativo: integer read fetfativo write setetfativo;

    [campo('jsncodigo')]
    property jsncodigo: string read fjsncodigo write setjsncodigo;

    [campo('etfsenha')]
    property etfsenha: string read fetfsenha write setetfsenha;

    [campo('etfpontuacao')]
    property etfpontuacao: string read fetfpontuacao write setetfpontuacao;

  End;

implementation

{ TETF }

constructor TETF.create;
begin

end;

destructor TETF.destroy;
begin
  inherited;
end;

procedure TETF.setetfcodigo(const Value: integer);
begin
  fetfcodigo := Value;
end;

procedure TETF.setetdcodigo(const Value: integer);
begin
  fetdcodigo := Value;
end;

procedure TETF.setetfativo(const Value: integer);
begin
  fetfativo := Value;
end;

procedure TETF.setetfcontato(const Value: string);
begin
  fetfcontato := Value;
end;

procedure TETF.setetfdepartamento(const Value: string);
begin
  fetfdepartamento := Value;
end;

procedure TETF.setetfpontuacao(const Value: string);
begin
  fetfpontuacao := Value;
end;

procedure TETF.setetfsenha(const Value: string);
begin
  fetfsenha := Value;
end;

procedure TETF.setetftelefone(const Value: string);
begin
  fetftelefone := Value;
end;

procedure TETF.setjsncodigo(const Value: string);
begin
  fjsncodigo := Value;
end;

procedure TETF.setttfcodigo(const Value: integer);
begin
  fttfcodigo := Value;
end;

end.
