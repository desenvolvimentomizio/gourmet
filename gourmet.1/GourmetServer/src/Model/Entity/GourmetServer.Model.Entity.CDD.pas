unit GourmetServer.Model.Entity.CDD;

interface

{$TYPEINFO ON}

Uses
  SimpleAttributes;

type

  [Tabela('cdd')]
  TCDD = Class
  private
    fcddcodigo: string;
    fufscodigo:string;
    fcddnome: string;

    procedure setcddcodigo(const Value: string);
    procedure setufscodigo(const Value: string);
    procedure setcddnome(const Value: string);

  public
    constructor create;
    destructor destroy; override;
  published

    [campo('cddcodigo')]
    property cddcodigo: string read fcddcodigo write setcddcodigo;

    [campo('ufscodigo')]
    property ufscodigo: string read fufscodigo write setufscodigo;

    [campo('cddnome')]
    property cddnome: string read fcddnome write setcddnome;


  End;

implementation

{ CDD }

constructor TCDD.create;
begin

end;

destructor TCDD.destroy;
begin
  inherited;
end;

procedure TCDD.setcddcodigo(const Value: string);
begin
  fcddcodigo := Value;
end;

procedure TCDD.setufscodigo(const Value: string);
begin
  fufscodigo := Value;
end;

procedure TCDD.setcddnome(const Value: string);
begin
  fcddnome := Value;
end;

end.
