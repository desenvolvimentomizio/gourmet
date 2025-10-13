unit GourmetServer.Model.Entity.CEP;

interface

{$TYPEINFO ON}

Uses
  SimpleAttributes;

type

  [Tabela('cep')]
  TCEP = Class
  private
    fcepcodigo: string;
    fcddcodigo: string;
    fcependereco: string;

    procedure setcepcodigo(const Value: string);
    procedure setcddcodigo(const Value: string);
    procedure setcependereco(const Value: string);

  public
    constructor create;
    destructor destroy; override;
  published

    [campo('cepcodigo'), PK]
    property cepcodigo: string read fcepcodigo write setcepcodigo;

    [campo('cddcodigo')]
    property cddcodigo: string read fcddcodigo write setcddcodigo;

    [campo('cependereco')]
    property cependereco: string read fcependereco write setcependereco;


  End;

implementation

{ TETE }

constructor TCEP.create;
begin

end;

destructor TCEP.destroy;
begin
  inherited;
end;

procedure TCEP.setcepcodigo(const Value: string);
begin
  fcepcodigo := Value;
end;

procedure TCEP.setcddcodigo(const Value: string);
begin
  fcddcodigo := Value;
end;

procedure TCEP.setcependereco(const Value: string);
begin
  fcependereco := Value;
end;


end.
