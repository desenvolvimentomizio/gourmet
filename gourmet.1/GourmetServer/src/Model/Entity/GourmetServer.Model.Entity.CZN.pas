unit GourmetServer.Model.Entity.CZN;

interface

{$TYPEINFO ON}

Uses
  SimpleAttributes;

type

  [Tabela('czn')]
  TCZN = Class
  private

    fcznchave: Integer;
    fcznabertura: TDateTime;
    fcznfechamento: TDateTime;
    fclbcodigo: Integer;
    fcznnumepedidodlv: Integer;
    procedure setcznchave(const Value: Integer);
    procedure setcznabertura(const Value: TDateTime);
    procedure setcznfechamento(const Value: TDateTime);
    procedure setclbcodigo(const Value: Integer);
    procedure setcznnumepedidodlv(const Value: Integer);

  public
    constructor create;
    destructor destroy; override;
  published

    [campo('cznchave'), PK, AutoInc]
    property cznchave: Integer read fcznchave write setcznchave;

    [campo('cznabertura')]
    property cznabertura: TDateTime read fcznabertura write setcznabertura;

    [campo('cznfechamento')]
    property cznfechamento: TDateTime read fcznfechamento write setcznfechamento;

    [campo('clbcodigo')]
    property clbcodigo: Integer read fclbcodigo write setclbcodigo;

    [campo('cznnumepedidodlv')]
    property cznnumepedidodlv: Integer read fcznnumepedidodlv write setcznnumepedidodlv;

  End;

implementation

{ TCZN }

constructor TCZN.create;
begin

end;

destructor TCZN.destroy;
begin

  inherited;
end;

procedure TCZN.setclbcodigo(const Value: Integer);
begin
  fclbcodigo := Value;
end;

procedure TCZN.setcznabertura(const Value: TDateTime);
begin
  fcznabertura := Value;
end;

procedure TCZN.setcznchave(const Value: Integer);
begin
  fcznchave := Value;
end;

procedure TCZN.setcznfechamento(const Value: TDateTime);
begin
  fcznfechamento := Value;
end;

procedure TCZN.setcznnumepedidodlv(const Value: Integer);
begin
  fcznnumepedidodlv := Value;
end;

end.
