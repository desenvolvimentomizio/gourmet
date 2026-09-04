-- ---------------------------------------------------------------------------
-- Unifica os produtos '<nome> SEM SKU' com o produto real e desativa a duplicata
--
-- Item que o aiqfome mandava sem SKU virava um produto novo '<nome> SEM SKU',
-- mesmo quando o produto ja existia no cadastro. Este script reaponta as vendas
-- e os orcamentos para o produto de verdade e marca a duplicata como Inativo
-- (pro.sipcodigo = 2), que eh como o proprio ERP desativa produto - os 24 ja
-- inativos da base estao assim, com o pun deles intocado.
--
-- Nada eh apagado. itm e ito guardam o proprio valor da linha, entao reapontar
-- NAO altera nenhum total historico: muda so para qual produto a venda aponta.
--
-- Base: MariaDB/MySQL. Rodar o arquivo INTEIRO numa sessao so (as tabelas
-- temporarias vivem enquanto a conexao existir). Idempotente: rodar de novo
-- afeta 0 linhas.
--
--   mysql -h <host> -u <user> -p <base> < dedup_produtos_sem_sku.sql
--
-- ATENCAO: procodigo varia de loja para loja, por isso o de-para aqui eh pelo
-- NOME do produto. Rode a secao 2 e confira o que resolveu ANTES de aplicar.
-- ---------------------------------------------------------------------------

-- ===========================================================================
-- 1. DE-PARA
--    So entram pares em que a duplicata e o produto real sao a mesma coisa
--    vendida da mesma forma. Ver no fim do arquivo os que ficaram de fora.
-- ===========================================================================

drop temporary table if exists tmp_dedup;
create temporary table tmp_dedup (
  nome_dup  varchar(150) not null,
  nome_ok   varchar(150) not null,
  pro_dup   int null,
  pun_dup   int null,
  pro_ok    int null,
  pun_ok    int null
) engine=Memory;

insert into tmp_dedup (nome_dup, nome_ok) values
  ('DINHOS BURGER SMASH SEM SKU',                    'DINHOS BURGER SMASH'),
  ('COCA COLA 2L SEM SKU',                           'COCA COLA 2LT'),
  ('DINHOS BURGER ONION BBQ - ORIGINAL AIQ SEM SKU', 'DINHOS BURGER ONION BBQ'),
  ('COCA COLA 600 ML SEM SKU',                       'COCA-COLA 600 ML'),
  ('AMSTEL 269ML SEM SKU',                           'AMSTEL 269ML'),
  ('AMSTEL 269 ML SEM SKU',                          'AMSTEL 269ML'),
  ('COCA-COLA ZERO 500 ML SEM SKU',                  'COCA ZERO 500 ML'),
  ('SPRITE 600 ML SEM SKU',                          'SPRITE 600 ML'),
  ('15 ESFIHAS SEM SKU',                             'COMBOS 15 ESFIHAS');

-- resolve os codigos pelo nome, ignorando espacos sobrando e caixa
update tmp_dedup t
   set t.pro_dup = (select min(p.procodigo) from pro p
                     where upper(trim(p.pronome)) = upper(trim(t.nome_dup))),
       t.pro_ok  = (select min(p.procodigo) from pro p
                     where upper(trim(p.pronome)) = upper(trim(t.nome_ok))
                       and coalesce(p.sipcodigo, 1) <> 2);

update tmp_dedup t
   set t.pun_dup = (select min(u.puncodigo) from pun u where u.procodigo = t.pro_dup),
       t.pun_ok  = (select min(u.puncodigo) from pun u where u.procodigo = t.pro_ok);

-- ===========================================================================
-- 2. CONFERENCIA ANTES DE APLICAR - so leitura
--    Toda linha tem de vir com os quatro codigos preenchidos. Linha com NULL
--    significa nome que nao existe nesta base: corrija o de-para ou tire a
--    linha, porque ela seria ignorada silenciosamente.
-- ===========================================================================

select t.nome_dup, t.pro_dup, t.pun_dup,
       t.nome_ok,  t.pro_ok,  t.pun_ok,
       (select count(*) from itm where procodigo = t.pro_dup) as vendas,
       (select count(*) from ito where procodigo = t.pro_dup) as orcamentos,
       (select count(*) from sbr where procodigo = t.pro_dup) as sabores,
       (select round(max(u.punprecoav),2) from pun u where u.procodigo = t.pro_ok) as preco_destino,
       case when t.pro_dup is null then 'DUPLICATA NAO ENCONTRADA'
            when t.pro_ok  is null then 'PRODUTO REAL NAO ENCONTRADO'
            when t.pun_ok  is null then 'PRODUTO REAL SEM UNIDADE (pun)'
            else 'ok' end as situacao
  from tmp_dedup t
 order by situacao desc, t.nome_dup;

-- ===========================================================================
-- 3. APLICACAO
--    Linhas com qualquer codigo NULL sao puladas pelos joins.
-- ===========================================================================

start transaction;

-- itens de venda
update itm i
  join tmp_dedup t on t.pro_dup = i.procodigo
   set i.procodigo = t.pro_ok,
       i.puncodigo = t.pun_ok
 where t.pro_ok is not null and t.pun_ok is not null;

-- itens de orcamento
update ito o
  join tmp_dedup t on t.pro_dup = o.procodigo
   set o.procodigo = t.pro_ok,
       o.puncodigo = t.pun_ok
 where t.pro_ok is not null and t.pun_ok is not null;

-- sabores que apontam para a duplicata
update sbr s
  join tmp_dedup t on t.pro_dup = s.procodigo
   set s.procodigo = t.pro_ok
 where t.pro_ok is not null;

-- adicionais: hoje nenhum aponta para duplicata, mas o update fica para o caso
-- de a base do cliente ter algum
update isi x
  join tmp_dedup t on t.pro_dup = x.procodigo
   set x.procodigo = t.pro_ok
 where t.pro_ok is not null;

-- desativa a duplicata, do jeito que o ERP desativa produto
update pro p
  join tmp_dedup t on t.pro_dup = p.procodigo
   set p.sipcodigo = 2
 where t.pro_ok is not null and t.pun_ok is not null;

commit;

-- ===========================================================================
-- 4. CONFERENCIA DEPOIS
--    'vendas', 'orcamentos' e 'sabores' tem de estar zerados, e situacao
--    'Inativo'. As linhas de ivd/ivt (inventario de inclusao, com quantidade e
--    valor zerados) seguem com o produto, que continua existindo - so inativo.
-- ===========================================================================

select t.nome_dup, t.pro_dup,
       s.sipidentificacao as situacao,
       (select count(*) from itm where procodigo = t.pro_dup) as vendas,
       (select count(*) from ito where procodigo = t.pro_dup) as orcamentos,
       (select count(*) from sbr where procodigo = t.pro_dup) as sabores,
       t.pro_ok, t.nome_ok
  from tmp_dedup t
  join pro p on p.procodigo = t.pro_dup
  left join sip s on s.sipcodigo = p.sipcodigo
 order by t.nome_dup;

-- o que sobrou de duplicata ativa no cadastro
select p.procodigo, p.pronome, g.grpidentificacao,
       (select count(*) from itm where procodigo = p.procodigo) as vendas
  from pro p
  left join grp g on g.grpcodigo = p.grpcodigo
 where p.pronome like '%SEM SKU%'
   and coalesce(p.sipcodigo, 1) <> 2
 order by vendas desc, p.procodigo;

drop temporary table if exists tmp_dedup;

-- ===========================================================================
-- 5. REVERSAO
--    Reativar eh trivial; devolver as vendas ao produto antigo exige saber
--    quais linhas foram trocadas, entao guarde o resultado da secao 2 antes de
--    aplicar, ou rode dentro de um backup.
-- ===========================================================================
-- update pro set sipcodigo = 1 where pronome like '%SEM SKU%';

-- ===========================================================================
-- FICARAM DE FORA, de proposito
--
-- ESFIHA 4 QUEIJOS SEM SKU  e  ESFIHA CALABRESA SEM SKU
--   O nome bate com ESFIHA 4 QUEIJOS e ESFIHA CALABRESA, mas a unidade de venda
--   nao: no aiqfome esses itens sao '4 Unidades' por R$ 43,00, e os produtos do
--   ERP sao a esfiha avulsa por R$ 10,00. Reapontar diria que o cliente levou
--   uma esfiha por R$ 43,00. O certo eh cadastrar o combo de 4 unidades.
--
-- E as 15 duplicatas sem candidato nenhum, que continuam ativas de proposito -
-- entre elas 10 ESFIRRAS, 20 ESFIRRAS, SPRITE 500 ML e PACK HEINEKEN 6UN, que
-- simplesmente nao existem no cardapio do ERP. Cadastrar o produto real resolve
-- os dois lados: a venda para de cair na duplicata e a busca por nome passa a
-- encontra-lo sozinha.
-- ===========================================================================
