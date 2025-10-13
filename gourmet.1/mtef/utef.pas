unit utef;

interface

uses ufuncoes, untTransacaoTEF;

function ProcessaPagamentoTEF(vOperacaoTEF: TOperacaoTEF): TOperacaoTEF;
function ProcessaCancelamentoTEF(vOperacaoTEF: TOperacaoTEF): TOperacaoTEF;

implementation

var
  vOperacaoTEF: TOperacaoTEF;

function ProcessaPagamentoTEF(vOperacaoTEF: TOperacaoTEF): TOperacaoTEF;
begin
  vOperacaoTEF := ProcessaPagamento(vOperacaoTEF);
  result := vOperacaoTEF;
end;

function ProcessaCancelamentoTEF(vOperacaoTEF: TOperacaoTEF): TOperacaoTEF;
begin
  vOperacaoTEF := ProcessaCancelamento(vOperacaoTEF);
  result := vOperacaoTEF;
end;

exports ProcessaPagamentoTEF, ProcessaCancelamentoTEF;

end.
