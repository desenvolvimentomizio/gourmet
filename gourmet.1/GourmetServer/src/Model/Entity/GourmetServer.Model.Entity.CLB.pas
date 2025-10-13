unit GourmetServer.Model.Entity.CLB;

interface

{$TYPEINFO ON}

Uses
  SimpleAttributes;

type

  [Tabela('clb')]
  TCLB = Class
  private
    fclbcodigo: Integer;
    ffnccodigo: Integer;
    fclbdescmaximo: Double;
    fclbsenha: string;
    fclbativo: Integer;
    fclbidentificacao: string;
    fclbsuper: Integer;
    fclbpercdispmulta: Double;
    fclbpercdispmora: Double;
    fclbpercdescrfi: Double;
    fclbliberacredito: Integer;
    fclbatualizador: Integer;
    fclbperccomissao: Double;
    fclbsalvaima: Integer;
    fclbsalvasaldo: Integer;
    fflacodigo: Integer;
    fetdcodigo: Integer;
    fclbcodigobio: string;
    fclbrelogio: Integer;

    procedure setclbcodigo(const Value: Integer);
    procedure setfnccodigo(const Value: Integer);
    procedure setclbdescmaximo(const Value: Double);
    procedure setclbsenha(const Value: string);
    procedure setclbativo(const Value: Integer);
    procedure setclbidentificacao(const Value: string);
    procedure setclbsuper(const Value: Integer);
    procedure setclbpercdispmulta(const Value: Double);
    procedure setclbpercdispmora(const Value: Double);
    procedure setclbpercdescrfi(const Value: Double);
    procedure setclbliberacredito(const Value: Integer);
    procedure setclbatualizador(const Value: Integer);
    procedure setclbperccomissao(const Value: Double);
    procedure setclbsalvaima(const Value: Integer);
    procedure setclbsalvasaldo(const Value: Integer);
    procedure setflacodigo(const Value: Integer);
    procedure setetdcodigo(const Value: Integer);
    procedure setclbcodigobio(const Value: string);
    procedure setclbrelogio(const Value: Integer);

  public
    constructor create;
    destructor destroy; override;
  published
    [campo('clbcodigo'), PK, AutoInc]
    property clbcodigo: Integer read fclbcodigo write setclbcodigo;

    [campo('fnccodigo')]
    property fnccodigo: Integer read ffnccodigo write setclbcodigo;

    [campo('clbdescmaximo')]
    property clbdescmaximo: Double read fclbdescmaximo write setclbdescmaximo;

    [campo('clbsenha')]
    property clbsenha: string read fclbsenha write setclbsenha;

    [campo('clbativo')]
    property clbativo: Integer read fclbativo write setclbativo;

    [campo('clbidentificacao')]
    property clbidentificacao: string read fclbidentificacao write setclbidentificacao;

    [campo('clbsuper')]
    property clbsuper: Integer read fclbsuper write setclbsuper;

    [campo('clbpercdispmulta')]
    property clbpercdispmulta: Double read fclbpercdispmulta write setclbpercdispmulta;

    [campo('clbpercdispmora')]
    property clbpercdispmora: Double read fclbpercdispmora write setclbpercdispmora;

    [campo('clbpercdescrfi')]
    property clbpercdescrfi: Double read fclbpercdescrfi write setclbpercdescrfi;

    [campo('clbliberacredito')]
    property clbliberacredito: Integer read fclbliberacredito write setclbliberacredito;

    [campo('clbatualizador')]
    property clbatualizador: Integer read fclbatualizador write setclbatualizador;

    [campo('clbperccomissao')]
    property clbperccomissao: Double read fclbperccomissao write setclbperccomissao;

    [campo('clbsalvaima')]
    property clbsalvaima: Integer read fclbsalvaima write setclbsalvaima;

    [campo('clbsalvasaldo')]
    property clbsalvasaldo: Integer read fclbsalvasaldo write setclbsalvasaldo;

    [campo('flacodigo')]
    property flacodigo: Integer read fflacodigo write setflacodigo;

    [campo('etdcodigo')]
    property etdcodigo: Integer read fetdcodigo write setetdcodigo;

    [campo('clbcodigobio')]
    property clbcodigobio: string read fclbcodigobio write setclbcodigobio;

    [campo('clbrelogio')]
    property clbrelogio: Integer read fclbrelogio write setclbrelogio;

  End;

implementation

{ CDD }

constructor TCLB.create;
begin

end;

destructor TCLB.destroy;
begin
  inherited;
end;

procedure TCLB.setclbativo(const Value: Integer);
begin
  fclbativo := Value;
end;

procedure TCLB.setclbatualizador(const Value: Integer);
begin
  fclbatualizador := Value;
end;

procedure TCLB.setclbcodigo(const Value: Integer);
begin
  fclbcodigo := Value;
end;

procedure TCLB.setclbcodigobio(const Value: string);
begin
  fclbcodigobio := Value;
end;

procedure TCLB.setclbdescmaximo(const Value: Double);
begin
  fclbdescmaximo := Value;
end;

procedure TCLB.setclbidentificacao(const Value: string);
begin
  fclbidentificacao := Value;
end;

procedure TCLB.setclbliberacredito(const Value: Integer);
begin
  fclbliberacredito := Value;
end;

procedure TCLB.setclbperccomissao(const Value: Double);
begin
  fclbperccomissao := Value;
end;

procedure TCLB.setclbpercdescrfi(const Value: Double);
begin
  fclbpercdescrfi := Value;
end;

procedure TCLB.setclbpercdispmora(const Value: Double);
begin
  fclbpercdispmora := Value;
end;

procedure TCLB.setclbpercdispmulta(const Value: Double);
begin
  fclbpercdispmulta := Value;
end;

procedure TCLB.setclbrelogio(const Value: Integer);
begin
  fclbrelogio := Value;
end;

procedure TCLB.setclbsalvaima(const Value: Integer);
begin
  fclbsalvaima := Value;
end;

procedure TCLB.setclbsalvasaldo(const Value: Integer);
begin
  fclbsalvasaldo := Value;
end;

procedure TCLB.setclbsenha(const Value: string);
begin
  fclbsenha := Value;
end;

procedure TCLB.setclbsuper(const Value: Integer);
begin
  fclbsuper := Value;
end;

procedure TCLB.setetdcodigo(const Value: Integer);
begin
  fetdcodigo := Value;
end;

procedure TCLB.setflacodigo(const Value: Integer);
begin
  fflacodigo := Value;
end;

procedure TCLB.setfnccodigo(const Value: Integer);
begin
  ffnccodigo := Value;
end;

end.
