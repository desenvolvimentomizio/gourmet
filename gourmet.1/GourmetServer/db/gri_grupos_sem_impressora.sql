-- ---------------------------------------------------------------------------
-- gri: grupos vendidos pelo aiqfome que estavam sem impressora
--
-- Sem linha na GRI o item nasce com tcicodigo=0 e nunca chega a cozinha: ele
-- fica gravado no orcamento e na venda, mas nao imprime. Passou despercebido
-- enquanto as escolhas do combo viravam itens proprios (do grupo ESFIHAS, esse
-- sim com impressora); agora que o combo eh o unico item, o pedido inteiro
-- deixa de sair.
--
-- Base: MariaDB/MySQL.  Rodar UMA vez por base de producao.
-- O script eh idempotente: rodar de novo nao duplica nada.
--
-- ATENCAO: grpcodigo varia de loja para loja, por isso o casamento aqui eh
-- pelo NOME do grupo. Rode antes o diagnostico da secao 1 e confira se os
-- nomes batem com os da sua base.
-- ---------------------------------------------------------------------------

-- ===========================================================================
-- 1. DIAGNOSTICO - rodar antes, so leitura
--    Lista os grupos que tem produto cadastrado mas nao tem impressora.
--    Nem todo grupo desta lista PRECISA imprimir (BORDAS, PRODUCAO e afins
--    nao sao itens de venda). Use para decidir se falta mais algum alem dos
--    dois tratados abaixo.
-- ===========================================================================
select g.grpcodigo,
       g.grpidentificacao,
       (select count(*) from pro p where p.grpcodigo = g.grpcodigo) as produtos
  from grp g
 where not exists (select 1 from gri r where r.grpcodigo = g.grpcodigo)
   and exists     (select 1 from pro p where p.grpcodigo = g.grpcodigo)
 order by produtos desc;

-- ===========================================================================
-- 2. AJUSTE
--    Cada grupo novo copia a configuracao de um grupo irmao que ja imprime,
--    para herdar impressora (tcicodigo), relatorios e situacao sem chutar
--    valores. Se o grupo modelo nao existir na base, o insert simplesmente
--    nao grava nada - a conferencia da secao 3 mostra isso.
-- ===========================================================================
start transaction;

-- COMBOS ESFIHAS  <- modelo: ESFIHAS
insert into gri (grpcodigo, tcicodigo, griminuretardo, relcompleto, relgrupo,
                 gripedidoaux, grisituacao, griimprimeauto, gricardapio,
                 grientrega, griconveniencia, grivias, gricontrolaproducao,
                 sepcodigo)
select destino.grpcodigo,
       modelo.tcicodigo, modelo.griminuretardo, modelo.relcompleto,
       modelo.relgrupo, modelo.gripedidoaux, modelo.grisituacao,
       modelo.griimprimeauto, modelo.gricardapio, modelo.grientrega,
       modelo.griconveniencia, modelo.grivias, modelo.gricontrolaproducao,
       modelo.sepcodigo
  from grp destino
  join gri modelo on modelo.grpcodigo = (select g.grpcodigo
                                           from grp g
                                          where upper(trim(g.grpidentificacao)) = 'ESFIHAS'
                                          limit 1)
 where upper(trim(destino.grpidentificacao)) = 'COMBOS ESFIHAS'
   and not exists (select 1 from gri r where r.grpcodigo = destino.grpcodigo);

-- REFRIGERANTES  <- modelo: BEBIDAS
insert into gri (grpcodigo, tcicodigo, griminuretardo, relcompleto, relgrupo,
                 gripedidoaux, grisituacao, griimprimeauto, gricardapio,
                 grientrega, griconveniencia, grivias, gricontrolaproducao,
                 sepcodigo)
select destino.grpcodigo,
       modelo.tcicodigo, modelo.griminuretardo, modelo.relcompleto,
       modelo.relgrupo, modelo.gripedidoaux, modelo.grisituacao,
       modelo.griimprimeauto, modelo.gricardapio, modelo.grientrega,
       modelo.griconveniencia, modelo.grivias, modelo.gricontrolaproducao,
       modelo.sepcodigo
  from grp destino
  join gri modelo on modelo.grpcodigo = (select g.grpcodigo
                                           from grp g
                                          where upper(trim(g.grpidentificacao)) = 'BEBIDAS'
                                          limit 1)
 where upper(trim(destino.grpidentificacao)) = 'REFRIGERANTES'
   and not exists (select 1 from gri r where r.grpcodigo = destino.grpcodigo);

commit;

-- ===========================================================================
-- 3. CONFERENCIA - as duas linhas devem aparecer com tcicodigo <> 0
-- ===========================================================================
select r.gricodigo, r.grpcodigo, g.grpidentificacao, r.tcicodigo,
       r.grisituacao, r.griimprimeauto, r.grientrega
  from gri r
  join grp g on g.grpcodigo = r.grpcodigo
 where upper(trim(g.grpidentificacao)) in ('COMBOS ESFIHAS', 'REFRIGERANTES')
 order by g.grpidentificacao;

-- ===========================================================================
-- 4. REVERSAO, se precisar
-- ===========================================================================
-- delete r
--   from gri r
--   join grp g on g.grpcodigo = r.grpcodigo
--  where upper(trim(g.grpidentificacao)) in ('COMBOS ESFIHAS', 'REFRIGERANTES');
