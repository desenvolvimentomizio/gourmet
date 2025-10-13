unit GourmetServer.Model.Entity.aiq.AIQMDA;
interface

{$TYPEINFO ON}

Uses
  SimpleAttributes;

type

  [Tabela('aiqmda')]
  TAIQMDA = Class
  private



    faiqmdaidentificacao: String;
    fmdacodgo: Integer;

    procedure setmdacodgo(const Value: Integer);
    procedure setaiqmdaidentificacao(const Value: String);

  public
    constructor create;
    destructor destroy; override;
  published

    [campo('aiqmdaidentificacao'), PK]
    property aiqmdaidentificacao: String read faiqmdaidentificacao write setaiqmdaidentificacao;


    [campo('mdacodigo')]
    property mdacodigo: Integer read fmdacodgo write setmdacodgo;

  End;

implementation

{ TCFG }

constructor TAIQMDA.create;
begin

end;

destructor TAIQMDA.destroy;
begin

  inherited;
end;


procedure TAIQMDA.setaiqmdaidentificacao(const Value: String);
begin
  faiqmdaidentificacao := Value;
end;

procedure TAIQMDA.setmdacodgo(const Value: Integer);
begin
  fmdacodgo := Value;
end;


end.
