unit GourmetAIQ.Model.Entity.PedidoAIQ;

interface

{$TYPEINFO ON}

Uses
  SimpleAttributes;

type

  [Tabela('aiq')]
  TPEDIDOAIQ = Class
  private
    faiqchave: integer;
    faiqpedido: string;
    faiqstatus: string;
    faiqjson: string;

    procedure setaiqchave(const Value: integer);
    procedure setaiqpedido(const Value: string);
    procedure setaiqstatus(const Value: string);
    procedure setaiqjson(const Value: string);

  public
    constructor create;
    destructor destroy; override;
  published
    [campo('aiqchave'), PK]
    property aiqchave: integer read faiqchave write setaiqchave;

    [campo('aiqpedido')]
    property aiqpedido: string read faiqpedido write setaiqpedido;

    [campo('aiqstatus')]
    property aiqstatus: string read faiqstatus write setaiqstatus;

    [campo('aiqjson')]
    property aiqjson: string read faiqjson write setaiqjson;

  end;

implementation

{ TPEDIDOAIQ }

constructor TPEDIDOAIQ.create;
begin

end;

destructor TPEDIDOAIQ.destroy;
begin

  inherited;
end;

procedure TPEDIDOAIQ.setaiqchave(const Value: integer);
begin
  faiqchave := Value;
end;

procedure TPEDIDOAIQ.setaiqjson(const Value: string);
begin

  faiqjson := Value;
end;

procedure TPEDIDOAIQ.setaiqpedido(const Value: string);
begin
  faiqpedido := Value;

end;

procedure TPEDIDOAIQ.setaiqstatus(const Value: string);
begin
  faiqstatus := Value;
end;

end.
