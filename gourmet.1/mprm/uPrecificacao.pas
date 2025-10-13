unit uPrecificacao;

interface

type

  /// <summary> Record para armazenar os �ndices de Precifica��o.</summary>
  TIndicesPrecificacao = record
    IPV: Double; // � Imposto sobre venda;
    CM: Double; // � Comiss�o sobre venda;
    FRT: Double; // � Frete sobre venda;
    CO: Double; // - Custo Operacional;
    TXJ: Double; // � Taxa de juros mensais;
    IAC: Double; // � Inadimpl�ncia acumulada;
  private
    function GetLucroLiqAceitavel: Double;

  public
    property LucroLiqAceitavel: Double read GetLucroLiqAceitavel;
  end;

  TCustosMercadoria = record
    ImpostoVenda: Double;
    Comiss�oVenda: Double;
    FreteVenda: Double;
    CustoOperacional: Double;
    TaxaJuros: Double;
    Inadimplencia: Double;
  private
    function GetCustoTotal: Double;

  public
    property CustoTotal: Double read GetCustoTotal;
  end;

var
  IndicesPrecificacao: TIndicesPrecificacao;
  CustosMercadoria: TCustosMercadoria;

function CalculaPrecoVenda(const pPrecoCompra, pMargemLiquida: Double): Double;
function CalculaMargemLiquida(const pPrecoCompra, pPrecoVenda: Double): Double;
procedure AtualizaCustos(const pPrecoVenda: Double);

implementation

procedure AtualizaCustos(const pPrecoVenda: Double);
begin
  (* Atualiza os Custos das Mercadorias *)
  CustosMercadoria.ImpostoVenda := ((pPrecoVenda * IndicesPrecificacao.IPV) / 100);
  CustosMercadoria.Comiss�oVenda := ((pPrecoVenda * IndicesPrecificacao.CM) / 100);
  CustosMercadoria.FreteVenda := ((pPrecoVenda * IndicesPrecificacao.FRT) / 100);
  CustosMercadoria.CustoOperacional := ((pPrecoVenda * IndicesPrecificacao.CO) / 100);
  CustosMercadoria.TaxaJuros := ((pPrecoVenda * IndicesPrecificacao.TXJ) / 100);
  CustosMercadoria.Inadimplencia := ((pPrecoVenda * IndicesPrecificacao.IAC) / 100);
end;

function CalculaPrecoVenda(const pPrecoCompra, pMargemLiquida: Double): Double;
var
  IND: Double; // �ndice
  MKP: Double; // Markup
  MKM: Double; // Multiplicador
begin
  with IndicesPrecificacao do
    IND := IPV + CM + FRT + CO + TXJ + IAC + pMargemLiquida;

  MKP := (100 - IND) / 100;
  MKM := 1 / MKP;

  Result := pPrecoCompra * MKM;
  AtualizaCustos(Result);
end;

function CalculaMargemLiquida(const pPrecoCompra, pPrecoVenda: Double): Double;
var
  IND: Double; // �ndice
  INF: Double; // �ndice Fixo
  MKP: Double; // Markup
  MKM: Double; // Multiplicador
begin
  MKM := pPrecoVenda / pPrecoCompra;
  MKP := 1 / MKM;

  IND := 100 - (MKP * 100);

  with IndicesPrecificacao do
    INF := IPV + CM + FRT + CO + TXJ + IAC;

  Result := (IND - INF);
  AtualizaCustos(pPrecoVenda);
end;

{ TIndicesPrecificacao }

function TIndicesPrecificacao.GetLucroLiqAceitavel: Double;
begin
  with IndicesPrecificacao do
    Result := 99.99999 - (IPV + CM + FRT + CO + TXJ + IAC);
end;

{ TCustosMercadoria }

function TCustosMercadoria.GetCustoTotal: Double;
begin
  with CustosMercadoria do
    Result := ImpostoVenda + Comiss�oVenda + FreteVenda + CustoOperacional + TaxaJuros + Inadimplencia;
end;

end.
