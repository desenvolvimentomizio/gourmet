unit GourmetServer.Model.Entity.EDR;

interface

{$TYPEINFO ON}

Uses
  SimpleAttributes;

type

  [Tabela('edr')]
  TEDR = Class
  private
    fedrcodigo: integer;
    fetdcodigo: integer;
    ftedcodigo: integer;
    fedrrua: string;
    fedrnumero: string;
    fedrcxpostal: string;
    fedrcomple: string;
    fedrbairro: string;
    fcddcodigo: string;
    fedrinscest: string;
    fedrcep: string;
    fedrinsestst: string;
    fufscodigo: string;
    fedrobs: string;
    fedrinscmun: string;
    fedritem: integer;
    fedrnomefazenda: string;
    fedrrazaofazenda: string;
    fedrativo: integer;
    fjsncodigo: string;
    fsipcodigo: integer;
    procedure setedrcodigo(const Value: integer);
    procedure setetdcodigo(const Value: integer);
    procedure settedcodigo(const Value: integer);
    procedure setedrrua(const Value: string);
    procedure setedrnumero(const Value: string);
    procedure setedrcxpostal(const Value: string);
    procedure setedrcomple(const Value: string);
    procedure setedrbairro(const Value: string);
    procedure setcddcodigo(const Value: string);
    procedure setedrinscest(const Value: string);
    procedure setedrcep(const Value: string);
    procedure setedrinsestst(const Value: string);
    procedure setufscodigo(const Value: string);
    procedure setedrobs(const Value: string);
    procedure setedrinscmun(const Value: string);
    procedure setedritem(const Value: integer);
    procedure setedrnomefazenda(const Value: string);
    procedure setedrrazaofazenda(const Value: string);
    procedure setedrativo(const Value: integer);
    procedure setjsncodigo(const Value: string);
    procedure setsipcodigo(const Value: integer);

  public
    constructor create;
    destructor destroy; override;
  published
    [campo('edrcodigo'), PK,AutoInc]
    property edrcodigo: integer read fedrcodigo write setedrcodigo;

    [campo('etdcodigo')]
    property etdcodigo: integer read fetdcodigo write setetdcodigo;

    [campo('tedcodigo')]
    property tedcodigo: integer read ftedcodigo write settedcodigo;

    [campo('edrrua')]
    property edrrua: string read fedrrua write setedrrua;

    [campo('edrnumero')]
    property edrnumero: string read fedrnumero write setedrnumero;

    [campo('edrcxpostal')]
    property edrcxpostal: string read fedrcxpostal write setedrcxpostal;

    [campo('edrcomple')]
    property edrcomple: string read fedrcomple write setedrcomple;

    [campo('edrbairro')]
    property edrbairro: string read fedrbairro write setedrbairro;

    [campo('cddcodigo')]
    property cddcodigo: string read fcddcodigo write setcddcodigo;

    [campo('edrinscest')]
    property edrinscest: string read fedrinscest write setedrinscest;

    [campo('edrcep')]
    property edrcep: string read fedrcep write setedrcep;

    [campo('edrinsestst')]
    property edrinsestst: string read fedrinsestst write setedrinsestst;

    [campo('ufscodigo')]
    property ufscodigo: string read fufscodigo write setufscodigo;

    [campo('edrobs')]
    property edrobs: string read fedrobs write setedrobs;

    [campo('edrinscmun')]
    property edrinscmun: string read fedrinscmun write setedrinscmun;

    [campo('edritem')]
    property edritem: integer read fedritem write setedritem;

    [campo('edrnomefazenda')]
    property edrnomefazenda: string read fedrnomefazenda write setedrnomefazenda;

    [campo('edrrazaofazenda')]
    property edrrazaofazenda: string read fedrrazaofazenda write setedrrazaofazenda;

    [campo('edrativo')]
    property edrativo: integer read fedrativo write setedrativo;

    [campo('jsncodigo')]
    property jsncodigo: string read fjsncodigo write setjsncodigo;

    [campo('sipcodigo')]
    property sipcodigo: integer read fsipcodigo write setsipcodigo;

  End;

implementation

{ TEDR }

constructor TEDR.create;
begin

end;

destructor TEDR.destroy;
begin
  inherited;
end;

procedure TEDR.setcddcodigo(const Value: string);
begin
  fcddcodigo := Value;
end;

procedure TEDR.setedrativo(const Value: integer);
begin
  fedrativo := Value;
end;

procedure TEDR.setedrbairro(const Value: string);
begin
  fedrbairro := Value;
end;

procedure TEDR.setedrcep(const Value: string);
begin
  fedrcep := Value;
end;

procedure TEDR.setedrcodigo(const Value: integer);
begin
  fedrcodigo := Value;
end;

procedure TEDR.setedrcomple(const Value: string);
begin
  fedrcomple := Value;
end;

procedure TEDR.setedrcxpostal(const Value: string);
begin
  fedrcxpostal := Value;
end;

procedure TEDR.setedrinscest(const Value: string);
begin
  fedrinscest := Value;
end;

procedure TEDR.setedrinscmun(const Value: string);
begin
  fedrinscmun := Value;
end;

procedure TEDR.setedrinsestst(const Value: string);
begin
  fedrinsestst := Value;
end;

procedure TEDR.setedritem(const Value: integer);
begin
  fedritem := Value;
end;

procedure TEDR.setedrnomefazenda(const Value: string);
begin
  fedrnomefazenda := Value;
end;

procedure TEDR.setedrnumero(const Value: string);
begin
  fedrnumero := Value;
end;

procedure TEDR.setedrobs(const Value: string);
begin
  fedrobs := Value;
end;

procedure TEDR.setedrrazaofazenda(const Value: string);
begin
  fedrrazaofazenda := Value;
end;

procedure TEDR.setedrrua(const Value: string);
begin
  fedrrua := Value;
end;

procedure TEDR.setetdcodigo(const Value: integer);
begin
  fetdcodigo := Value;
end;

procedure TEDR.setjsncodigo(const Value: string);
begin
  fjsncodigo := Value;
end;

procedure TEDR.setsipcodigo(const Value: integer);
begin
  fsipcodigo := Value;
end;

procedure TEDR.settedcodigo(const Value: integer);
begin
  ftedcodigo := Value;
end;

procedure TEDR.setufscodigo(const Value: string);
begin
  fufscodigo := Value;
end;

end.
