unit GourmetServer.Model.Entity.ITO;

interface

{$TYPEINFO ON}

Uses
  SimpleAttributes;

type

  [Tabela('ito')]
  TITO = Class
  private

    fitochave: Integer;
    forcchave: Integer;
    fprocodigo: Integer;
    fitoquantidade: Double;
    fitovalorav: Currency;
    fitototalav: Currency;
    fitodescontoav: Currency;
    fitosaldoav: Currency;
    fitovalorap: Currency;
    fitototalap: Currency;
    fitodescontoap: Currency;
    fitosaldoap: Currency;
    funicodigo: Integer;
    fpuncodigo: Integer;
    fitocontendo: Double;
    ftdecodigo: Integer;
    fstocodigo: Integer;
    fitoitem: Integer;
    fitopercdescav: Currency;
    fitopercdescap: Currency;
    fitooutras: Currency;
    fitoproservico: String;
    fitoinfadprod: String;
    fitoprocomple: String;
//    fvrpcodigo: Integer;
    ftdfcodigo: String;
    fflacodigo: Integer;
    fpmpchave: Integer;
    fitoobs: String;
    fitounidades: Integer;
    fitoacrescimoav: Currency;
    fclbatendente: Integer;
    foricodigo: Integer;
    procedure setitochave(const Value: Integer);
    procedure setorcchave(const Value: Integer);
    procedure setprocodigo(const Value: Integer);
    procedure setitoquantidade(const Value: Double);
    procedure setitovalorav(const Value: Currency);
    procedure setitototalav(const Value: Currency);
    procedure setitodescontoav(const Value: Currency);
    procedure setitosaldoav(const Value: Currency);
    procedure setitovalorap(const Value: Currency);
    procedure setitototalap(const Value: Currency);
    procedure setitodescontoap(const Value: Currency);
    procedure setitooutras(const Value: Currency);

    procedure setitosaldoap(const Value: Currency);
    procedure setunicodigo(const Value: Integer);
    procedure setpuncodigo(const Value: Integer);
    procedure setitocontendo(const Value: Double);
    procedure settdecodigo(const Value: Integer);
    procedure setstocodigo(const Value: Integer);
    procedure setitoitem(const Value: Integer);
    procedure setitopercdescav(const Value: Currency);
    procedure setitopercdescap(const Value: Currency);
    procedure setitoproservico(const Value: String);
    procedure setitoinfadprod(const Value: String);
    procedure setitoprocomple(const Value: String);
//    procedure setvrpcodigo(const Value: Integer);
    procedure settdfcodigo(const Value: String);
    procedure setflacodigo(const Value: Integer);
    procedure setpmpchave(const Value: Integer);
    procedure setitoobs(const Value: String);
    procedure setitounidades(const Value: Integer);
    procedure setitoacrescimoav(const Value: Currency);
    procedure setclbatendente(const Value: Integer);
    procedure setoricodigo(const Value: Integer);

  public
    constructor create;
    destructor destroy; override;
  published

    [campo('itochave'), PK, AutoInc]
    property itochave: Integer read fitochave write setitochave;

    [campo('orcchave')]
    property orcchave: Integer read forcchave write setorcchave;

    [campo('procodigo')]
    property procodigo: Integer read fprocodigo write setprocodigo;

    [campo('itoquantidade')]
    property itoquantidade: Double read fitoquantidade write setitoquantidade;

    [campo('itovalorav')]
    property itovalorav: Currency read fitovalorav write setitovalorav;

    [campo('itototalav')]
    property itototalav: Currency read fitototalav write setitototalav;

    [campo('itodescontoav')]
    property itodescontoav: Currency read fitodescontoav write setitodescontoav;

    [campo('itosaldoav')]
    property itosaldoav: Currency read fitosaldoav write setitosaldoav;

    [campo('itovalorap')]
    property itovalorap: Currency read fitovalorap write setitovalorap;

    [campo('itototalap')]
    property itototalap: Currency read fitototalap write setitototalap;

    [campo('itodescontoap')]
    property itodescontoap: Currency read fitodescontoap write setitodescontoap;

    [campo('itooutras')]
    property itooutras: Currency read fitooutras write setitooutras;

    [campo('itosaldoap')]
    property itosaldoap: Currency read fitosaldoap write setitosaldoap;

    [campo('unicodigo')]
    property unicodigo: Integer read funicodigo write setunicodigo;

    [campo('puncodigo')]
    property puncodigo: Integer read fpuncodigo write setpuncodigo;

    [campo('itocontendo')]
    property itocontendo: Double read fitocontendo write setitocontendo;

    [campo('tdecodigo')]
    property tdecodigo: Integer read ftdecodigo write settdecodigo;

    [campo('stocodigo')]
    property stocodigo: Integer read fstocodigo write setstocodigo;

    [campo('itoitem')]
    property itoitem: Integer read fitoitem write setitoitem;

    [campo('itopercdescav')]
    property itopercdescav: Currency read fitopercdescav write setitopercdescav;

    [campo('itopercdescap')]
    property itopercdescap: Currency read fitopercdescap write setitopercdescap;

    [campo('itoproservico')]
    property itoproservico: String read fitoproservico write setitoproservico;

    [campo('itoinfadprod')]
    property itoinfadprod: String read fitoinfadprod write setitoinfadprod;

    [campo('itoprocomple')]
    property itoprocomple: String read fitoprocomple write setitoprocomple;

//    [campo('vrpcodigo')]
//    property vrpcodigo: Integer read fvrpcodigo write setvrpcodigo;

    [campo('tdfcodigo')]
    property tdfcodigo: String read ftdfcodigo write settdfcodigo;

    [campo('flacodigo')]
    property flacodigo: Integer read fflacodigo write setflacodigo;

    [campo('pmpchave')]
    property pmpchave: Integer read fpmpchave write setpmpchave;

    [campo('itoobs')]
    property itoobs: String read fitoobs write setitoobs;

    [campo('itounidades')]
    property itounidades: Integer read fitounidades write setitounidades;

    [campo('itoacrescimoav')]
    property itoacrescimoav: Currency read fitoacrescimoav write setitoacrescimoav;

    [campo('clbatendente')]
    property clbatendente: Integer read fclbatendente write setclbatendente;

    [campo('oricodigo')]
    property oricodigo: Integer read foricodigo write setoricodigo;



  end;

implementation

{ TORC }

constructor TITO.create;
begin

end;

destructor TITO.destroy;
begin
  inherited;
end;

procedure TITO.setclbatendente(const Value: Integer);
begin
  fclbatendente := Value;
end;

procedure TITO.setflacodigo(const Value: Integer);
begin
  fflacodigo := Value;
end;

procedure TITO.setitoacrescimoav(const Value: Currency);
begin
  fitoacrescimoav := Value;
end;

procedure TITO.setitochave(const Value: Integer);
begin
  fitochave := Value;
end;

procedure TITO.setitocontendo(const Value: Double);
begin
  fitocontendo := Value;
end;

procedure TITO.setitodescontoap(const Value: Currency);
begin
  fitodescontoap := Value;
end;

procedure TITO.setitodescontoav(const Value: Currency);
begin
  fitodescontoav := Value;
end;

procedure TITO.setitoinfadprod(const Value: String);
begin
  fitoinfadprod := Value;
end;

procedure TITO.setitoitem(const Value: Integer);
begin
  fitoitem := Value;
end;

procedure TITO.setitoobs(const Value: String);
begin
  fitoobs := Value;
end;

procedure TITO.setitooutras(const Value: Currency);
begin
  fitooutras := Value;
end;

procedure TITO.setitopercdescap(const Value: Currency);
begin
  fitopercdescap := Value;
end;

procedure TITO.setitopercdescav(const Value: Currency);
begin
  fitopercdescav := Value;
end;

procedure TITO.setitoprocomple(const Value: String);
begin
  fitoproservico := Value;
end;

procedure TITO.setitoproservico(const Value: String);
begin
  fitoproservico := Value;
end;

procedure TITO.setitoquantidade(const Value: Double);
begin
  fitoquantidade := Value;
end;

procedure TITO.setitosaldoap(const Value: Currency);
begin
  fitosaldoap := Value;
end;

procedure TITO.setitosaldoav(const Value: Currency);
begin
  fitosaldoav := Value;
end;

procedure TITO.setitototalap(const Value: Currency);
begin
  fitototalap := Value;
end;

procedure TITO.setitototalav(const Value: Currency);
begin
  fitototalav := Value;
end;

procedure TITO.setitounidades(const Value: Integer);
begin
  fitounidades := Value;
end;

procedure TITO.setitovalorap(const Value: Currency);
begin
  fitovalorap := Value;
end;

procedure TITO.setitovalorav(const Value: Currency);
begin
  fitovalorav := Value;
end;

procedure TITO.setorcchave(const Value: Integer);
begin
  forcchave := Value;
end;

procedure TITO.setoricodigo(const Value: Integer);
begin
  foricodigo := Value;
end;

procedure TITO.setpmpchave(const Value: Integer);
begin
  fpmpchave := Value;
end;

procedure TITO.setprocodigo(const Value: Integer);
begin
  fprocodigo := Value;
end;

procedure TITO.setpuncodigo(const Value: Integer);
begin
  fpuncodigo := Value;
end;

procedure TITO.setstocodigo(const Value: Integer);
begin
  fstocodigo := Value;
end;

procedure TITO.settdecodigo(const Value: Integer);
begin
  ftdecodigo := Value;
end;

procedure TITO.settdfcodigo(const Value: String);
begin
  ftdfcodigo := Value;
end;

procedure TITO.setunicodigo(const Value: Integer);
begin
  funicodigo := Value;
end;

//procedure TITO.setvrpcodigo(const Value: Integer);
//begin
//  fvrpcodigo := Value;
//end;

end.
