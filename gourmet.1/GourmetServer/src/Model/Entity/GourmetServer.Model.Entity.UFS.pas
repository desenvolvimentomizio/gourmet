unit GourmetServer.Model.Entity.UFS;

interface

{$TYPEINFO ON}

Uses
  SimpleAttributes;

type

  [Tabela('ufs')]
  TUFS = Class
  private
    fufscodigo: string;
    fufssigla:string;
    fufsnome: string;

    procedure setufscodigo(const Value: string);
    procedure setufssigla(const Value: string);
    procedure setufsnome(const Value: string);

  public
    constructor create;
    destructor destroy; override;
  published

    [campo('ufscodigo'),pk]
    property ufscodigo: string read fufscodigo write setufscodigo;

    [campo('ufssigla')]
    property ufssigla: string read fufssigla write setufssigla;

    [campo('ufsnome')]
    property ufsnome: string read fufsnome write setufsnome;


  End;

implementation

{ TV_CLI }

constructor TUFS.create;
begin

end;

destructor TUFS.destroy;
begin
  inherited;
end;

procedure TUFS.setufscodigo(const Value: string);
begin
  fufscodigo := Value;
end;

procedure TUFS.setufssigla(const Value: string);
begin
  fufssigla := Value;
end;

procedure TUFS.setufsnome(const Value: string);
begin
  fufsnome := Value;
end;

end.
