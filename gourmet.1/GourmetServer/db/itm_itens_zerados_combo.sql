-- ---------------------------------------------------------------------------
-- Itens de venda com valor 0,00 que travam a emissao da nota
--
-- Sintoma: "Item N (402 - ESFIHA CALABRESA 1xUN): valor do produto invalido
-- [0,00] - deve ser maior que zero."
--
-- Causa: o modelo antigo de combo do aiqfome. Cada escolha do combo virava uma
-- linha propria do ITO com valor zero, e essas linhas iam parar no ITM. Uma
-- venda de "COMBO 3 ESFIHAS" por R$ 12,00 nascia com quatro itens: o combo com
-- os R$ 12,00 e tres esfihas a R$ 0,00. O preco sempre esteve no combo; as
-- esfihas eram so a composicao dele.
--
-- Corrigido no codigo desde o commit 70f984ed: as escolhas do combo passaram a
-- ser adicionais (ISI) do item, e nao itens de venda. Vendas novas ja nascem
-- com uma linha so. Este script acerta o que ficou para tras.
--
-- POR QUE REMOVER E NAO PREENCHER O VALOR
-- Nao existe valor a colocar nessas linhas. O que o cliente pagou ja esta
-- inteiro na linha do combo, e mes.mesvalor confere com a soma das linhas COM
-- valor. Preencher as esfihas inflaria a nota acima do que foi cobrado; so
-- daria para preencher se o valor do combo fosse zerado na mesma operacao, o
-- que apenas mudaria o problema de linha. Removidas as linhas de zero, a nota
-- sai como "1 x COMBO 3 ESFIHAS - R$ 12,00", que eh o produto realmente vendido,
-- com NCM e CFOP proprios.
--
-- (A alternativa seria o contrario: apagar a linha do combo e ratear os R$ 12,00
--  entre as tres esfihas, a R$ 4,00 cada. Nao segui por esse caminho porque o
--  ERP nao tem essa convencao - itmpercentualcombo vale 1 em item normal e as
--  41 mil linhas que o usam tem valor proprio - e porque o rateio precisaria
--  decidir onde jogar a sobra do arredondamento.)
--
-- Base: MariaDB/MySQL. Rodar o arquivo INTEIRO numa sessao so.
-- Idempotente: rodar de novo remove 0 linhas.
--
--   mysql -h <host> -u <user> -p <base> < itm_itens_zerados_combo.sql
-- ---------------------------------------------------------------------------

-- ===========================================================================
-- 0. JANELA
--    Ajuste o periodo aqui. O padrao cobre 08/2026 e 09/2026.
--    O problema existe desde 01/2025; alargar a janela eh seguro, as travas da
--    seccao 1 valem para qualquer periodo.
-- ===========================================================================

set @de  = '2026-08-01 00:00:00';
set @ate = '2026-09-30 23:59:59';

-- ===========================================================================
-- 1. SELECAO
--    Entra a linha que satisfaz TODAS as condicoes:
--      a) valor e total zerados;
--      b) sem desconto, frete, outras despesas, acrescimo ou imposto - nao ha
--         nada a perder junto com a linha;
--      c) a venda continua com pelo menos um item COM valor depois da remocao.
--         Sem essa trava a venda ficaria sem item nenhum: existem 160 linhas
--         assim na base, todas entre 02/2025 e 02/2026, em vendas cujos itens
--         sao TODOS zerados. Essas nao tem conserto por aqui - precisam do
--         valor de verdade, e o script as ignora de proposito.
-- ===========================================================================

drop temporary table if exists tmp_itm_zerado;
create temporary table tmp_itm_zerado (
  itmchave int not null primary key,
  meschave int not null
) engine=Memory;

insert into tmp_itm_zerado (itmchave, meschave)
select i.itmchave, i.meschave
  from itm i
  join mes m on m.meschave = i.meschave
 where m.mesinclusao between @de and @ate
   and i.itmvalor = 0
   and i.itmtotal = 0
   and coalesce(i.itmdesconto, 0) = 0
   and coalesce(i.itmfrete, 0) = 0
   and coalesce(i.itmoutras, 0) = 0
   and coalesce(i.itmacrescimoav, 0) = 0
   and coalesce(i.itmicms, 0) = 0
   and coalesce(i.itmicm, 0) = 0
   and exists (select 1 from itm x
                where x.meschave = i.meschave
                  and x.itmvalor > 0);

-- ===========================================================================
-- 2. CONFERENCIA ANTES - so leitura
--    'soma_depois' tem de continuar igual a mesvalor, e 'sequencia' tem de sair
--    sem numero repetido. Confira antes de aplicar a seccao 3.
-- ===========================================================================

select m.meschave,
       m.mesnumeropedido                                                    as pedido,
       date(m.mesinclusao)                                                  as dia,
       round(m.mesvalor, 2)                                                 as mesvalor,
       (select count(*) from itm x where x.meschave = m.meschave)           as itens_hoje,
       (select count(*) from tmp_itm_zerado z where z.meschave = m.meschave) as a_remover,
       (select count(*) from itm x
         where x.meschave = m.meschave and x.itmvalor > 0)                  as itens_depois,
       (select group_concat(x.itmitem order by x.itmitem)
          from itm x where x.meschave = m.meschave and x.itmvalor > 0)      as sequencia,
       round((select sum(x.itmtotal) from itm x
               where x.meschave = m.meschave and x.itmvalor > 0), 2)        as soma_depois,
       case when abs(round((select sum(x.itmtotal) from itm x
                             where x.meschave = m.meschave and x.itmvalor > 0), 2)
                     - round(m.mesvalor, 2)) < 0.005
            then 'ok' else 'TOTAL NAO BATE - NAO APLICAR' end               as conferencia
  from mes m
 where m.meschave in (select meschave from tmp_itm_zerado)
 order by m.meschave;

-- o que sera removido, item a item
select z.itmchave, i.meschave, i.itmitem, i.procodigo, p.pronome,
       i.itmquantidade, i.itmtotal,
       (select count(*) from inr n where n.itmchave = z.itmchave) as regras_ibs_cbs
  from tmp_itm_zerado z
  join itm i on i.itmchave = z.itmchave
  left join pro p on p.procodigo = i.procodigo
 order by i.meschave, i.itmitem, z.itmchave;

-- ===========================================================================
-- 3. APLICACAO
--    inr guarda os parametros de IBS/CBS por item e tem chave estrangeira para
--    itm sem cascata, entao sai primeiro. Nessas linhas ela esta toda zerada,
--    porque o item vale zero.
-- ===========================================================================

start transaction;

delete n
  from inr n
  join tmp_itm_zerado z on z.itmchave = n.itmchave;

delete i
  from itm i
  join tmp_itm_zerado z on z.itmchave = i.itmchave;

commit;

-- ===========================================================================
-- 4. CONFERENCIA DEPOIS
--    A primeira consulta tem de vir vazia. A segunda mostra as vendas
--    ajustadas, agora com todos os itens valendo mais que zero.
-- ===========================================================================

select i.itmchave, i.meschave, i.procodigo, i.itmtotal
  from itm i
  join mes m on m.meschave = i.meschave
 where m.mesinclusao between @de and @ate
   and i.itmvalor = 0;

select m.meschave, m.mesnumeropedido as pedido, round(m.mesvalor, 2) as mesvalor,
       (select count(*) from itm x where x.meschave = m.meschave)     as itens,
       round((select sum(x.itmtotal) from itm x
               where x.meschave = m.meschave), 2)                     as soma_itens,
       (select min(x.itmtotal) from itm x where x.meschave = m.meschave) as menor_item
  from mes m
 where m.meschave in (select distinct meschave from tmp_itm_zerado)
 order by m.meschave;

drop temporary table if exists tmp_itm_zerado;

-- ===========================================================================
-- 5. O QUE ESTE SCRIPT NAO RESOLVE
--
-- 5.1 As 160 linhas em vendas cujos itens sao TODOS zerados (02/2025 a 02/2026,
--     cerca de 7,6 mil reais em 81 vendas). Remove-las deixaria a venda sem
--     item. Essas precisam do valor real, item a item - provavelmente do JSON
--     original em aiq.aiqjson.
--
--     select m.meschave, m.mesnumeropedido, m.mesvalor, count(*) as itens
--       from itm i join mes m on m.meschave = i.meschave
--      where i.itmvalor = 0
--        and not exists (select 1 from itm x
--                         where x.meschave = i.meschave and x.itmvalor > 0)
--      group by m.meschave, m.mesnumeropedido, m.mesvalor
--      order by m.mesinclusao;
--
-- 5.2 As linhas equivalentes no ITO (orcamento). Ficaram de fora porque
--     orcamento nao vai para a nota, e no ITO as escolhas do combo ainda
--     cumprem o papel de mostrar os sabores na comanda da cozinha.
-- ===========================================================================
