unit GourmetServer.Model.Entity.aiq.PEDIDO;

interface

{$TYPEINFO ON}

Uses
  SimpleAttributes;

type

  [Tabela('aiq')]
  TPEDIDOAIQSTATUS = Class
  private
    faiqpedido: string;
    faiqstatus: string;
    faiqregistro: string;

    procedure setaiqpedido(const Value: string);
    procedure setaiqstatus(const Value: string);
    procedure setaiqregistro(const Value: string);

  public
    constructor create;
    destructor destroy; override;
  published

    [campo('aiqpedido')]
    property aiqpedido: string read faiqpedido write setaiqpedido;

    [campo('aiqstatus')]
    property aiqstatus: string read faiqstatus write setaiqstatus;

    [campo('aiqregistro')]
    property aiqregistro: string read faiqregistro write setaiqregistro;

  end;

  [Tabela('aiq')]
  TPEDIDOAIQ = Class
  private
    faiqchave: integer;
    faiqpedido: string;
    faiqstatus: string;

    faiqvalor: string;
    faiqentrega: string;
    faiqjson: string;

    forcchave: integer;
    fetdidentificacao: string;
    fimmnumepedido: string;
    fimmhoraimpresso: string;

    fcznchave: integer;

    procedure setaiqchave(const Value: integer);
    procedure setaiqpedido(const Value: string);
    procedure setaiqstatus(const Value: string);

    procedure setaiqvalor(const Value: string);
    procedure setaiqentrega(const Value: string);

    procedure setaiqjson(const Value: string);

    procedure setorcchave(const Value: integer);
    procedure setetdidentificacao(const Value: string);
    procedure setimmnumepedido(const Value: string);
    procedure setimmhoraimpresso(const Value: string);

    procedure setcznchave(const Value: integer);

  public
    constructor create;
    destructor destroy; override;
  published
    [campo('aiqchave'), PK, autoinc]
    property aiqchave: integer read faiqchave write setaiqchave;

    [campo('aiqpedido')]
    property aiqpedido: string read faiqpedido write setaiqpedido;

    [campo('aiqstatus')]
    property aiqstatus: string read faiqstatus write setaiqstatus;

    [campo('aiqvalor')]
    property aiqvalor: string read faiqvalor write setaiqvalor;

    [campo('aiqentrega')]
    property aiqentrega: string read faiqentrega write setaiqentrega;

    [campo('aiqjson')]
    property aiqjson: string read faiqjson write setaiqjson;

    [campo('cznchave')]
    property cznchave: integer read fcznchave write setcznchave;

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

procedure TPEDIDOAIQ.setaiqentrega(const Value: string);
begin
  faiqentrega := Value;
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

procedure TPEDIDOAIQ.setaiqvalor(const Value: string);
begin
  faiqvalor := Value;
end;

procedure TPEDIDOAIQ.setcznchave(const Value: integer);
begin
  fcznchave := Value;
end;

procedure TPEDIDOAIQ.setetdidentificacao(const Value: string);
begin
  fetdidentificacao := Value;
end;

procedure TPEDIDOAIQ.setimmhoraimpresso(const Value: string);
begin
  fimmhoraimpresso := Value;
end;

procedure TPEDIDOAIQ.setimmnumepedido(const Value: string);
begin
  fimmnumepedido := Value;
end;

procedure TPEDIDOAIQ.setorcchave(const Value: integer);
begin
  forcchave := Value;
end;

{ TPEDIDOAIQSTATUS }

constructor TPEDIDOAIQSTATUS.create;
begin

end;

destructor TPEDIDOAIQSTATUS.destroy;
begin

  inherited;
end;

procedure TPEDIDOAIQSTATUS.setaiqpedido(const Value: string);
begin
  faiqpedido := Value;
end;

procedure TPEDIDOAIQSTATUS.setaiqregistro(const Value: string);
begin
  faiqpedido := Value;
end;

procedure TPEDIDOAIQSTATUS.setaiqstatus(const Value: string);
begin
  faiqstatus := Value;
end;

end.
