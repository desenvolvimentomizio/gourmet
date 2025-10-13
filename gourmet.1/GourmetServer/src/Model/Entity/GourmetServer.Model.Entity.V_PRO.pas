unit GourmetServer.Model.Entity.V_PRO;

interface

uses
  System.Json, System.SysUtils, System.Variants, SimpleAttributes;

type

  [Tabela('v_pro')]
  Tv_pro = class
  private
    FCOUNT: Integer;
    Fprocodigo: Integer;
    Fpronome: String;
    Ftpoidentificacao: String;
    Fmaridentificacao: String;
    Fgrpidentificacao: String;
    Ficmaliquotas: String;
    Fproncm: String;
    Fprosaldo: Currency;
    Fprosaldodisp: Currency;
    Fsipcodigo: Integer;
    Fproobs: String;
    Fproreferencia: String;
    Funisimbolo: String;
    Fpunprecoav: Currency;
    Fpunprecoap: Currency;
    Ftpocodigo: Integer;
    Fproanpcodigo: Integer;
    Fenpcodigo: Integer;
    Fenpendereco: String;
    Fpropedecomple: Integer;
    Fcpbcodbalanca: Integer;
    Fgracodigo: Integer;
    Fdpridentificacao: String;
    Fproconsolidado: Integer;
    Fpunpercav: Currency;
    Fpunpercap: Currency;
    Fpuncusto: Currency;
    Fgrpcodigo: Integer;
    Fcstcodigo: String;
    Fprocest: String;
    Fimecodigo: String;
    Fprobalanca: String;
    Fimuid: Integer;
    Fpronatrecisenta: Integer;
    Fproabc: String;
    Fpromargemcontrib: Currency;
    Fproproducao: Integer;
    Fcfocfop: String;
    Fcfocfopfora: String;
    Ficmaliquotasfora: String;

    procedure Setprocodigo(const Value: Integer);
    function Getprocodigo: Integer;
    procedure Setpronome(const Value: String);
    function Getpronome: String;
    procedure Settpoidentificacao(const Value: String);
    function Gettpoidentificacao: String;
    procedure Setmaridentificacao(const Value: String);
    function Getmaridentificacao: String;
    procedure Setgrpidentificacao(const Value: String);
    function Getgrpidentificacao: String;
    procedure Seticmaliquotas(const Value: String);
    function Geticmaliquotas: String;
    procedure Setproncm(const Value: String);
    function Getproncm: String;
    procedure Setprosaldo(const Value: Currency);
    function Getprosaldo: Currency;
    procedure Setprosaldodisp(const Value: Currency);
    function Getprosaldodisp: Currency;
    procedure Setsipcodigo(const Value: Integer);
    function Getsipcodigo: Integer;
    procedure Setproobs(const Value: String);
    function Getproobs: String;
    procedure Setproreferencia(const Value: String);
    function Getproreferencia: String;
    procedure Setunisimbolo(const Value: String);
    function Getunisimbolo: String;
    procedure Setpunprecoav(const Value: Currency);
    function Getpunprecoav: Currency;
    procedure Setpunprecoap(const Value: Currency);
    function Getpunprecoap: Currency;
    procedure Settpocodigo(const Value: Integer);
    function Gettpocodigo: Integer;
    procedure Setproanpcodigo(const Value: Integer);
    function Getproanpcodigo: Integer;
    procedure Setenpcodigo(const Value: Integer);
    function Getenpcodigo: Integer;
    procedure Setenpendereco(const Value: String);
    function Getenpendereco: String;
    procedure Setpropedecomple(const Value: Integer);
    function Getpropedecomple: Integer;
    procedure Setcpbcodbalanca(const Value: Integer);
    function Getcpbcodbalanca: Integer;
    procedure Setgracodigo(const Value: Integer);
    function Getgracodigo: Integer;
    procedure Setdpridentificacao(const Value: String);
    function Getdpridentificacao: String;
    procedure Setproconsolidado(const Value: Integer);
    function Getproconsolidado: Integer;
    procedure Setpunpercav(const Value: Currency);
    function Getpunpercav: Currency;
    procedure Setpunpercap(const Value: Currency);
    function Getpunpercap: Currency;
    procedure Setpuncusto(const Value: Currency);
    function Getpuncusto: Currency;
    procedure Setgrpcodigo(const Value: Integer);
    function Getgrpcodigo: Integer;
    procedure Setcstcodigo(const Value: String);
    function Getcstcodigo: String;
    procedure Setprocest(const Value: String);
    function Getprocest: String;
    procedure Setimecodigo(const Value: String);
    function Getimecodigo: String;
    procedure Setprobalanca(const Value: String);
    function Getprobalanca: String;
    procedure Setimuid(const Value: Integer);
    function Getimuid: Integer;
    procedure Setpronatrecisenta(const Value: Integer);
    function Getpronatrecisenta: Integer;
    procedure Setproabc(const Value: String);
    function Getproabc: String;
    procedure Setpromargemcontrib(const Value: Currency);
    function Getpromargemcontrib: Currency;
    procedure Setproproducao(const Value: Integer);
    function Getproproducao: Integer;
    procedure Setcfocfop(const Value: String);
    function Getcfocfop: String;
    procedure Setcfocfopfora(const Value: String);
    function Getcfocfopfora: String;
    procedure Seticmaliquotasfora(const Value: String);
    function Geticmaliquotasfora: String;

    procedure SetCOUNT(const Value: Integer);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    function ToJson(pFields: String = '*'): TJSonObject;
    function JsonToClass(obj: TJSonObject): Tv_pro;

    property procodigo: Integer read Getprocodigo write Setprocodigo;

    /// <summary>
    /// Identificação do produto
    /// </summary>
    property pronome: String read Getpronome write Setpronome;

    property tpoidentificacao: String read Gettpoidentificacao write Settpoidentificacao;

    property maridentificacao: String read Getmaridentificacao write Setmaridentificacao;

    property grpidentificacao: String read Getgrpidentificacao write Setgrpidentificacao;

    /// <summary>
    /// Aliquotas do ICMS.
    /// </summary>
    property icmaliquotas: String read Geticmaliquotas write Seticmaliquotas;

    /// <summary>
    /// NCM
    /// </summary>
    property proncm: String read Getproncm write Setproncm;

    property prosaldo: Currency read Getprosaldo write Setprosaldo;

    property prosaldodisp: Currency read Getprosaldodisp write Setprosaldodisp;

    property sipcodigo: Integer read Getsipcodigo write Setsipcodigo;

    /// <summary>
    /// Observações sobre o produto
    /// </summary>
    property proobs: String read Getproobs write Setproobs;

    /// <summary>
    /// Referencia do Produto
    /// </summary>
    property proreferencia: String read Getproreferencia write Setproreferencia;

    property unisimbolo: String read Getunisimbolo write Setunisimbolo;

    property punprecoav: Currency read Getpunprecoav write Setpunprecoav;

    property punprecoap: Currency read Getpunprecoap write Setpunprecoap;

    property tpocodigo: Integer read Gettpocodigo write Settpocodigo;

    /// <summary>
    /// Código da ANP para produtos derivados de petróleo.
    /// </summary>
    property proanpcodigo: Integer read Getproanpcodigo write Setproanpcodigo;

    property enpcodigo: Integer read Getenpcodigo write Setenpcodigo;

    property enpendereco: String read Getenpendereco write Setenpendereco;

    /// <summary>
    /// Pede complemento do produto
    /// </summary>
    property propedecomple: Integer read Getpropedecomple write Setpropedecomple;

    /// <summary>
    /// Código que vai para balanca
    /// </summary>
    property cpbcodbalanca: Integer read Getcpbcodbalanca write Setcpbcodbalanca;

    /// <summary>
    /// Grade de Produtos
    /// </summary>
    property gracodigo: Integer read Getgracodigo write Setgracodigo;

    /// <summary>
    /// Identificação da Divisão de Prosutos.
    /// </summary>
    property dpridentificacao: String read Getdpridentificacao write Setdpridentificacao;

    /// <summary>
    /// Define se produto esta com saldo disponivel consolidado
    /// </summary>
    property proconsolidado: Integer read Getproconsolidado write Setproconsolidado;

    property punpercav: Currency read Getpunpercav write Setpunpercav;

    property punpercap: Currency read Getpunpercap write Setpunpercap;

    property puncusto: Currency read Getpuncusto write Setpuncusto;

    property grpcodigo: Integer read Getgrpcodigo write Setgrpcodigo;

    /// <summary>
    /// CÃ³digo de CST para o produto
    /// </summary>
    property cstcodigo: String read Getcstcodigo write Setcstcodigo;

    property procest: String read Getprocest write Setprocest;

    property imecodigo: String read Getimecodigo write Setimecodigo;

    /// <summary>
    /// Enviar para Balança
    /// </summary>
    property probalanca: String read Getprobalanca write Setprobalanca;

    property imuid: Integer read Getimuid write Setimuid;

    property pronatrecisenta: Integer read Getpronatrecisenta write Setpronatrecisenta;

    property proabc: String read Getproabc write Setproabc;

    property promargemcontrib: Currency read Getpromargemcontrib write Setpromargemcontrib;

    property proproducao: Integer read Getproproducao write Setproproducao;

    property cfocfop: String read Getcfocfop write Setcfocfop;

    property cfocfopfora: String read Getcfocfopfora write Setcfocfopfora;

    /// <summary>
    /// Aliquotas do ICMS.
    /// </summary>
    property icmaliquotasfora: String read Geticmaliquotasfora write Seticmaliquotasfora;

    [Campo('COUNT'), Ignore]
    property COUNT: Integer read FCOUNT write SetCOUNT;
  end;

implementation

constructor Tv_pro.Create;
begin
  Limpar;
end;

destructor Tv_pro.Destroy;
begin

  inherited;
end;

procedure Tv_pro.Setprocodigo(const Value: Integer);
begin
  Fprocodigo := Value;
end;

function Tv_pro.Getprocodigo: Integer;
begin
  Result := Fprocodigo;
end;

procedure Tv_pro.Setpronome(const Value: String);
begin
  Fpronome := Value;
end;

function Tv_pro.Getpronome: String;
begin
  Result := Fpronome;
end;

procedure Tv_pro.Settpoidentificacao(const Value: String);
begin
  Ftpoidentificacao := Value;
end;

function Tv_pro.Gettpoidentificacao: String;
begin
  Result := Ftpoidentificacao;
end;

procedure Tv_pro.Setmaridentificacao(const Value: String);
begin
  Fmaridentificacao := Value;
end;

function Tv_pro.Getmaridentificacao: String;
begin
  Result := Fmaridentificacao;
end;

procedure Tv_pro.Setgrpidentificacao(const Value: String);
begin
  Fgrpidentificacao := Value;
end;

function Tv_pro.Getgrpidentificacao: String;
begin
  Result := Fgrpidentificacao;
end;

procedure Tv_pro.Seticmaliquotas(const Value: String);
begin
  Ficmaliquotas := Value;
end;

function Tv_pro.Geticmaliquotas: String;
begin
  Result := Ficmaliquotas;
end;

procedure Tv_pro.Setproncm(const Value: String);
begin
  Fproncm := Value;
end;

function Tv_pro.Getproncm: String;
begin
  Result := Fproncm;
end;

procedure Tv_pro.Setprosaldo(const Value: Currency);
begin
  Fprosaldo := Value;
end;

function Tv_pro.Getprosaldo: Currency;
begin
  Result := Fprosaldo;
end;

procedure Tv_pro.Setprosaldodisp(const Value: Currency);
begin
  Fprosaldodisp := Value;
end;

function Tv_pro.Getprosaldodisp: Currency;
begin
  Result := Fprosaldodisp;
end;

procedure Tv_pro.Setsipcodigo(const Value: Integer);
begin
  Fsipcodigo := Value;
end;

function Tv_pro.Getsipcodigo: Integer;
begin
  Result := Fsipcodigo;
end;

procedure Tv_pro.Setproobs(const Value: String);
begin
  Fproobs := Value;
end;

function Tv_pro.Getproobs: String;
begin
  Result := Fproobs;
end;

procedure Tv_pro.Setproreferencia(const Value: String);
begin
  Fproreferencia := Value;
end;

function Tv_pro.Getproreferencia: String;
begin
  Result := Fproreferencia;
end;

procedure Tv_pro.Setunisimbolo(const Value: String);
begin
  Funisimbolo := Value;
end;

function Tv_pro.Getunisimbolo: String;
begin
  Result := Funisimbolo;
end;

procedure Tv_pro.Setpunprecoav(const Value: Currency);
begin
  Fpunprecoav := Value;
end;

function Tv_pro.Getpunprecoav: Currency;
begin
  Result := Fpunprecoav;
end;

procedure Tv_pro.Setpunprecoap(const Value: Currency);
begin
  Fpunprecoap := Value;
end;

function Tv_pro.Getpunprecoap: Currency;
begin
  Result := Fpunprecoap;
end;

procedure Tv_pro.Settpocodigo(const Value: Integer);
begin
  Ftpocodigo := Value;
end;

function Tv_pro.Gettpocodigo: Integer;
begin
  Result := Ftpocodigo;
end;

procedure Tv_pro.Setproanpcodigo(const Value: Integer);
begin
  Fproanpcodigo := Value;
end;

function Tv_pro.Getproanpcodigo: Integer;
begin
  Result := Fproanpcodigo;
end;

procedure Tv_pro.Setenpcodigo(const Value: Integer);
begin
  Fenpcodigo := Value;
end;

function Tv_pro.Getenpcodigo: Integer;
begin
  Result := Fenpcodigo;
end;

procedure Tv_pro.Setenpendereco(const Value: String);
begin
  Fenpendereco := Value;
end;

function Tv_pro.Getenpendereco: String;
begin
  Result := Fenpendereco;
end;

procedure Tv_pro.Setpropedecomple(const Value: Integer);
begin
  Fpropedecomple := Value;
end;

function Tv_pro.Getpropedecomple: Integer;
begin
  Result := Fpropedecomple;
end;

procedure Tv_pro.Setcpbcodbalanca(const Value: Integer);
begin
  Fcpbcodbalanca := Value;
end;

function Tv_pro.Getcpbcodbalanca: Integer;
begin
  Result := Fcpbcodbalanca;
end;

procedure Tv_pro.Setgracodigo(const Value: Integer);
begin
  Fgracodigo := Value;
end;

function Tv_pro.Getgracodigo: Integer;
begin
  Result := Fgracodigo;
end;

procedure Tv_pro.Setdpridentificacao(const Value: String);
begin
  Fdpridentificacao := Value;
end;

function Tv_pro.Getdpridentificacao: String;
begin
  Result := Fdpridentificacao;
end;

procedure Tv_pro.Setproconsolidado(const Value: Integer);
begin
  Fproconsolidado := Value;
end;

function Tv_pro.Getproconsolidado: Integer;
begin
  Result := Fproconsolidado;
end;

procedure Tv_pro.Setpunpercav(const Value: Currency);
begin
  Fpunpercav := Value;
end;

function Tv_pro.Getpunpercav: Currency;
begin
  Result := Fpunpercav;
end;

procedure Tv_pro.Setpunpercap(const Value: Currency);
begin
  Fpunpercap := Value;
end;

function Tv_pro.Getpunpercap: Currency;
begin
  Result := Fpunpercap;
end;

procedure Tv_pro.Setpuncusto(const Value: Currency);
begin
  Fpuncusto := Value;
end;

function Tv_pro.Getpuncusto: Currency;
begin
  Result := Fpuncusto;
end;

procedure Tv_pro.Setgrpcodigo(const Value: Integer);
begin
  Fgrpcodigo := Value;
end;

function Tv_pro.Getgrpcodigo: Integer;
begin
  Result := Fgrpcodigo;
end;

procedure Tv_pro.Setcstcodigo(const Value: String);
begin
  Fcstcodigo := Value;
end;

function Tv_pro.Getcstcodigo: String;
begin
  Result := Fcstcodigo;
end;

procedure Tv_pro.Setprocest(const Value: String);
begin
  Fprocest := Value;
end;

function Tv_pro.Getprocest: String;
begin
  Result := Fprocest;
end;

procedure Tv_pro.Setimecodigo(const Value: String);
begin
  Fimecodigo := Value;
end;

function Tv_pro.Getimecodigo: String;
begin
  Result := Fimecodigo;
end;

procedure Tv_pro.Setprobalanca(const Value: String);
begin
  Fprobalanca := Value;
end;

function Tv_pro.Getprobalanca: String;
begin
  Result := Fprobalanca;
end;

procedure Tv_pro.Setimuid(const Value: Integer);
begin
  Fimuid := Value;
end;

function Tv_pro.Getimuid: Integer;
begin
  Result := Fimuid;
end;

procedure Tv_pro.Setpronatrecisenta(const Value: Integer);
begin
  Fpronatrecisenta := Value;
end;

function Tv_pro.Getpronatrecisenta: Integer;
begin
  Result := Fpronatrecisenta;
end;

procedure Tv_pro.Setproabc(const Value: String);
begin
  Fproabc := Value;
end;

function Tv_pro.Getproabc: String;
begin
  Result := Fproabc;
end;

procedure Tv_pro.Setpromargemcontrib(const Value: Currency);
begin
  Fpromargemcontrib := Value;
end;

function Tv_pro.Getpromargemcontrib: Currency;
begin
  Result := Fpromargemcontrib;
end;

procedure Tv_pro.Setproproducao(const Value: Integer);
begin
  Fproproducao := Value;
end;

function Tv_pro.Getproproducao: Integer;
begin
  Result := Fproproducao;
end;

procedure Tv_pro.Setcfocfop(const Value: String);
begin
  Fcfocfop := Value;
end;

function Tv_pro.Getcfocfop: String;
begin
  Result := Fcfocfop;
end;

procedure Tv_pro.Setcfocfopfora(const Value: String);
begin
  Fcfocfopfora := Value;
end;

function Tv_pro.Getcfocfopfora: String;
begin
  Result := Fcfocfopfora;
end;

procedure Tv_pro.Seticmaliquotasfora(const Value: String);
begin
  Ficmaliquotasfora := Value;
end;

function Tv_pro.Geticmaliquotasfora: String;
begin
  Result := Ficmaliquotasfora;
end;

procedure Tv_pro.Limpar;
begin
  Self.procodigo := 0;
  Self.pronome := '';
  Self.tpoidentificacao := '';
  Self.maridentificacao := '';
  Self.grpidentificacao := '';
  Self.icmaliquotas := '';
  Self.proncm := '';
  Self.prosaldo := 0;
  Self.prosaldodisp := 0;
  Self.sipcodigo := 0;
  Self.proobs := '';
  Self.proreferencia := '';
  Self.unisimbolo := '';
  Self.punprecoav := 0;
  Self.punprecoap := 0;
  Self.tpocodigo := 0;
  Self.proanpcodigo := 0;
  Self.enpcodigo := 0;
  Self.enpendereco := '';
  Self.propedecomple := 0;
  Self.cpbcodbalanca := 0;
  Self.gracodigo := 0;
  Self.dpridentificacao := '';
  Self.proconsolidado := 0;
  Self.punpercav := 0;
  Self.punpercap := 0;
  Self.puncusto := 0;
  Self.grpcodigo := 0;
  Self.cstcodigo := '';
  Self.procest := '';
  Self.imecodigo := '';
  Self.imuid := 0;
  Self.pronatrecisenta := 0;
  Self.proabc := '';
  Self.promargemcontrib := 0;
  Self.proproducao := 0;
  Self.cfocfop := '';
  Self.cfocfopfora := '';
  Self.icmaliquotasfora := '';

end;

procedure Tv_pro.SetCOUNT(const Value: Integer);
begin
  FCOUNT := Value;
end;

function Tv_pro.ToJson(pFields: String = '*'): TJSonObject;
begin
  pFields := ' ' + StringReplace(pFields, ',', ' ', [rfReplaceAll]);
  Result := TJSonObject.Create;
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' procodigo ')) then
    Result.addPair('procodigo', IntToStr(Self.procodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' pronome ')) then
    Result.addPair('pronome', Self.pronome);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' tpoidentificacao ')) then
    Result.addPair('tpoidentificacao', Self.tpoidentificacao);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' maridentificacao ')) then
    Result.addPair('maridentificacao', Self.maridentificacao);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' grpidentificacao ')) then
    Result.addPair('grpidentificacao', Self.grpidentificacao);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' icmaliquotas ')) then
    Result.addPair('icmaliquotas', Self.icmaliquotas);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' proncm ')) then
    Result.addPair('proncm', Self.proncm);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' prosaldo ')) then
    Result.addPair('prosaldo', FloatToStr(Self.prosaldo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' prosaldodisp ')) then
    Result.addPair('prosaldodisp', FloatToStr(Self.prosaldodisp));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sipcodigo ')) then
    Result.addPair('sipcodigo', IntToStr(Self.sipcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' proobs ')) then
    Result.addPair('proobs', Self.proobs);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' proreferencia ')) then
    Result.addPair('proreferencia', Self.proreferencia);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' unisimbolo ')) then
    Result.addPair('unisimbolo', Self.unisimbolo);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' punprecoav ')) then
    Result.addPair('punprecoav', FloatToStr(Self.punprecoav));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' punprecoap ')) then
    Result.addPair('punprecoap', FloatToStr(Self.punprecoap));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' tpocodigo ')) then
    Result.addPair('tpocodigo', IntToStr(Self.tpocodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' proanpcodigo ')) then
    Result.addPair('proanpcodigo', IntToStr(Self.proanpcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' enpcodigo ')) then
    Result.addPair('enpcodigo', IntToStr(Self.enpcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' enpendereco ')) then
    Result.addPair('enpendereco', Self.enpendereco);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' propedecomple ')) then
    Result.addPair('propedecomple', IntToStr(Self.propedecomple));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' cpbcodbalanca ')) then
    Result.addPair('cpbcodbalanca', IntToStr(Self.cpbcodbalanca));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' gracodigo ')) then
    Result.addPair('gracodigo', IntToStr(Self.gracodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' dpridentificacao ')) then
    Result.addPair('dpridentificacao', Self.dpridentificacao);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' proconsolidado ')) then
    Result.addPair('proconsolidado', IntToStr(Self.proconsolidado));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' punpercav ')) then
    Result.addPair('punpercav', FloatToStr(Self.punpercav));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' punpercap ')) then
    Result.addPair('punpercap', FloatToStr(Self.punpercap));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' puncusto ')) then
    Result.addPair('puncusto', FloatToStr(Self.puncusto));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' grpcodigo ')) then
    Result.addPair('grpcodigo', IntToStr(Self.grpcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' cstcodigo ')) then
    Result.addPair('cstcodigo', Self.cstcodigo);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' procest ')) then
    Result.addPair('procest', Self.procest);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' imecodigo ')) then
    Result.addPair('imecodigo', Self.imecodigo);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' imuid ')) then
    Result.addPair('imuid', IntToStr(Self.imuid));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' pronatrecisenta ')) then
    Result.addPair('pronatrecisenta', IntToStr(Self.pronatrecisenta));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' proabc ')) then
    Result.addPair('proabc', Self.proabc);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' promargemcontrib ')) then
    Result.addPair('promargemcontrib', FloatToStr(Self.promargemcontrib));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' proproducao ')) then
    Result.addPair('proproducao', IntToStr(Self.proproducao));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' cfocfop ')) then
    Result.addPair('cfocfop', Self.cfocfop);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' cfocfopfora ')) then
    Result.addPair('cfocfopfora', Self.cfocfopfora);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' icmaliquotasfora ')) then
    Result.addPair('icmaliquotasfora', Self.icmaliquotasfora);

end;

function Tv_pro.JsonToClass(obj: TJSonObject): Tv_pro;
begin
  Result := Tv_pro.Create;
  if (assigned(obj)) then
  begin
    Try
      Try
        Result.procodigo := StrToInt(obj.get('procodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.pronome := obj.get('pronome').JsonValue.Value;
      Except
      End;
      Try
        Result.tpoidentificacao := obj.get('tpoidentificacao').JsonValue.Value;
      Except
      End;
      Try
        Result.maridentificacao := obj.get('maridentificacao').JsonValue.Value;
      Except
      End;
      Try
        Result.grpidentificacao := obj.get('grpidentificacao').JsonValue.Value;
      Except
      End;
      Try
        Result.icmaliquotas := obj.get('icmaliquotas').JsonValue.Value;
      Except
      End;
      Try
        Result.proncm := obj.get('proncm').JsonValue.Value;
      Except
      End;
      Try
        Result.prosaldo := StrToFloat(obj.get('prosaldo').JsonValue.Value);
      Except
      End;
      Try
        Result.prosaldodisp := StrToFloat(obj.get('prosaldodisp').JsonValue.Value);
      Except
      End;
      Try
        Result.sipcodigo := StrToInt(obj.get('sipcodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.proobs := obj.get('proobs').JsonValue.Value;
      Except
      End;
      Try
        Result.proreferencia := obj.get('proreferencia').JsonValue.Value;
      Except
      End;
      Try
        Result.unisimbolo := obj.get('unisimbolo').JsonValue.Value;
      Except
      End;
      Try
        Result.punprecoav := StrToFloat(obj.get('punprecoav').JsonValue.Value);
      Except
      End;
      Try
        Result.punprecoap := StrToFloat(obj.get('punprecoap').JsonValue.Value);
      Except
      End;
      Try
        Result.tpocodigo := StrToInt(obj.get('tpocodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.proanpcodigo := StrToInt(obj.get('proanpcodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.enpcodigo := StrToInt(obj.get('enpcodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.enpendereco := obj.get('enpendereco').JsonValue.Value;
      Except
      End;
      Try
        Result.propedecomple := StrToInt(obj.get('propedecomple').JsonValue.Value);
      Except
      End;
      Try
        Result.cpbcodbalanca := StrToInt(obj.get('cpbcodbalanca').JsonValue.Value);
      Except
      End;
      Try
        Result.gracodigo := StrToInt(obj.get('gracodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.dpridentificacao := obj.get('dpridentificacao').JsonValue.Value;
      Except
      End;
      Try
        Result.proconsolidado := StrToInt(obj.get('proconsolidado').JsonValue.Value);
      Except
      End;
      Try
        Result.punpercav := StrToFloat(obj.get('punpercav').JsonValue.Value);
      Except
      End;
      Try
        Result.punpercap := StrToFloat(obj.get('punpercap').JsonValue.Value);
      Except
      End;
      Try
        Result.puncusto := StrToFloat(obj.get('puncusto').JsonValue.Value);
      Except
      End;
      Try
        Result.grpcodigo := StrToInt(obj.get('grpcodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.cstcodigo := obj.get('cstcodigo').JsonValue.Value;
      Except
      End;
      Try
        Result.procest := obj.get('procest').JsonValue.Value;
      Except
      End;
      Try
        Result.imecodigo := obj.get('imecodigo').JsonValue.Value;
      Except
      End;
      Try
        Result.imuid := StrToInt(obj.get('imuid').JsonValue.Value);
      Except
      End;
      Try
        Result.pronatrecisenta := StrToInt(obj.get('pronatrecisenta').JsonValue.Value);
      Except
      End;
      Try
        Result.proabc := obj.get('proabc').JsonValue.Value;
      Except
      End;
      Try
        Result.promargemcontrib := StrToFloat(obj.get('promargemcontrib').JsonValue.Value);
      Except
      End;
      Try
        Result.proproducao := StrToInt(obj.get('proproducao').JsonValue.Value);
      Except
      End;
      Try
        Result.cfocfop := obj.get('cfocfop').JsonValue.Value;
      Except
      End;
      Try
        Result.cfocfopfora := obj.get('cfocfopfora').JsonValue.Value;
      Except
      End;
      Try
        Result.icmaliquotasfora := obj.get('icmaliquotasfora').JsonValue.Value;
      Except
      End;

    Except
      on E: Exception do
      begin
        Result.Free;
        raise Exception.Create(E.Message);
      end;
    End;
  end;
end;

end.
