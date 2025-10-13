unit GourmetServer.Model.Entity.CCO;

interface

{$TYPEINFO ON}

Uses
  SimpleAttributes;

type

  [Tabela('cco')]
  TCCO = Class
  private
    fccochave: Integer;
    fctacodigo: Integer;
    ftoccodigo: Integer;
    fcedcodigo: Integer;
    fclbcodigo: Integer;
    ftficodigo: Integer;
    fmoecodigo: Integer;
    fccoemissao: Tdate;
    fccovencimento: Tdate;
    fcconumero: String;
    fccohistorico: String;
    fccovalor: Currency;
    fccochaveorig: Integer;
    fccochavedest: Integer;
    fccoconciliado: Integer;
    fccoextenso: String;
    fetdcodigo: Integer;
    fccofavorecido: String;
    fccodatamov: Tdate;
    fccodataregistro: Tdate;
    fccohoraregistro: ttime;
    fphgcodigo: Integer;
    fflacodigo: Integer;
    fccoregistro: Integer;

    procedure setccochave(const Value: Integer);
    procedure setctacodigo(const Value: Integer);
    procedure settoccodigo(const Value: Integer);
    procedure setcedcodigo(const Value: Integer);
    procedure setclbcodigo(const Value: Integer);
    procedure settficodigo(const Value: Integer);
    procedure setmoecodigo(const Value: Integer);
    procedure setccoemissao(const Value: Tdate);
    procedure setccovencimento(const Value: Tdate);
    procedure setcconumero(const Value: String);
    procedure setccohistorico(const Value: String);
    procedure setccovalor(const Value: Currency);
    procedure setccochaveorig(const Value: Integer);
    procedure setccochavedest(const Value: Integer);
    procedure setccoconciliado(const Value: Integer);
    procedure setccoextenso(const Value: String);
    procedure setetdcodigo(const Value: Integer);
    procedure setccofavorecido(const Value: String);
    procedure setccodatamov(const Value: Tdate);
    procedure setccodataregistro(const Value: Tdate);
    procedure setccohoraregistro(const Value: ttime);
    procedure setphgcodigo(const Value: Integer);
    procedure setflacodigo(const Value: Integer);
    procedure setccoregistro(const Value: Integer);

  public
    constructor create;
    destructor destroy; override;
  published

    [campo('ccochave'), PK, AutoInc]
    property ccochave: Integer read fccochave write setccochave;

    [campo('ctacodigo')]
    property ctacodigo: Integer read fctacodigo write setctacodigo;

    [campo('toccodigo')]
    property toccodigo: Integer read ftoccodigo write settoccodigo;

    [campo('cedcodigo')]
    property cedcodigo: Integer read fcedcodigo write setcedcodigo;

    [campo('clbcodigo')]
    property clbcodigo: Integer read fclbcodigo write setclbcodigo;

    [campo('tficodigo')]
    property tficodigo: Integer read ftficodigo write settficodigo;

    [campo('moecodigo')]
    property moecodigo: Integer read fmoecodigo write setmoecodigo;

    [campo('ccoemissao')]
    property ccoemissao: Tdate read fccoemissao write setccoemissao;

    [campo('ccovencimento')]
    property ccovencimento: Tdate read fccovencimento write setccovencimento;

    [campo('cconumero')]
    property cconumero: String read fcconumero write setcconumero;

    [campo('ccohistorico')]
    property ccohistorico: String read fccohistorico write setccohistorico;

    [campo('ccovalor')]
    property ccovalor: Currency read fccovalor write setccovalor;

    [campo('ccochaveorig')]
    property ccochaveorig: Integer read fccochaveorig write setccochaveorig;

    [campo('ccochavedest')]
    property ccochavedest: Integer read fccochavedest write setccochavedest;

    [campo('ccoconciliado')]
    property ccoconciliado: Integer read fccoconciliado write setccoconciliado;

    [campo('ccoextenso')]
    property ccoextenso: String read fccoextenso write setccoextenso;

    [campo('etdcodigo')]
    property etdcodigo: Integer read fetdcodigo write setetdcodigo;

    [campo('ccofavorecido')]
    property ccofavorecido: String read fccofavorecido write setccofavorecido;

    [campo('ccodatamov')]
    property ccodatamov: Tdate read fccodatamov write setccodatamov;

    [campo('ccodataregistro')]
    property ccodataregistro: Tdate read fccodataregistro write setccodataregistro;

    [campo('ccohoraregistro')]
    property ccohoraregistro: ttime read fccohoraregistro write setccohoraregistro;

    [campo('phgcodigo')]
    property phgcodigo: Integer read fphgcodigo write setphgcodigo;

    [campo('flacodigo')]
    property flacodigo: Integer read fflacodigo write setflacodigo;

    [campo('ccoregistro')]
    property ccoregistro: Integer read fccoregistro write setccoregistro;

  End;

implementation

{ TITO }

constructor TCCO.create;
begin

end;

destructor TCCO.destroy;
begin

  inherited;
end;

procedure TCCO.setccochave(const Value: Integer);
begin
  fccochave := Value;
end;

procedure TCCO.setccochavedest(const Value: Integer);
begin
  fccochavedest := Value;
end;

procedure TCCO.setccochaveorig(const Value: Integer);
begin
  fccochaveorig := Value;
end;

procedure TCCO.setccoconciliado(const Value: Integer);
begin
  fccoconciliado := Value;
end;

procedure TCCO.setccodatamov(const Value: Tdate);
begin
  fccodatamov := Value;
end;

procedure TCCO.setccodataregistro(const Value: Tdate);
begin
  fccodataregistro := Value;
end;

procedure TCCO.setccoemissao(const Value: Tdate);
begin
  fccoemissao := Value;
end;

procedure TCCO.setccoextenso(const Value: String);
begin
  fccoextenso := Value;
end;

procedure TCCO.setccofavorecido(const Value: String);
begin
  fccofavorecido := Value;
end;

procedure TCCO.setccohistorico(const Value: String);
begin
  fccohistorico := Value;
end;

procedure TCCO.setccohoraregistro(const Value: ttime);
begin
  fccohoraregistro := Value;
end;

procedure TCCO.setcconumero(const Value: String);
begin
  fcconumero := Value;
end;

procedure TCCO.setccoregistro(const Value: Integer);
begin
  fccoregistro := Value;
end;

procedure TCCO.setccovalor(const Value: Currency);
begin
  fccovalor := Value;
end;

procedure TCCO.setccovencimento(const Value: Tdate);
begin
  fccovencimento := Value;
end;

procedure TCCO.setcedcodigo(const Value: Integer);
begin
  fcedcodigo := Value;
end;

procedure TCCO.setclbcodigo(const Value: Integer);
begin
  fclbcodigo := Value;
end;

procedure TCCO.setctacodigo(const Value: Integer);
begin
  fctacodigo := Value;
end;

procedure TCCO.setetdcodigo(const Value: Integer);
begin
  fetdcodigo := Value;
end;

procedure TCCO.setflacodigo(const Value: Integer);
begin
  fflacodigo := Value;
end;

procedure TCCO.setmoecodigo(const Value: Integer);
begin
  fmoecodigo := Value;
end;

procedure TCCO.setphgcodigo(const Value: Integer);
begin
  fphgcodigo := Value;
end;

procedure TCCO.settficodigo(const Value: Integer);
begin
  ftficodigo := Value;
end;

procedure TCCO.settoccodigo(const Value: Integer);
begin
  ftoccodigo := Value;
end;

end.
