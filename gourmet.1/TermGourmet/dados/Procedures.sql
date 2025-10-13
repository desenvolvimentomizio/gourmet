DELIMITER $$

DROP PROCEDURE IF EXISTS FechaMesa;

CREATE DEFINER = 'root'@'%'
PROCEDURE FechaMesa (IN pOrcChave int
, IN pTipo int
, IN pNome varchar(20)
, IN pFlaCodigo int
, IN pClbCodigo int
, IN pCtaCodigo int
, IN pLtePrincipal double(16, 02)
, IN pLteJuros double(16, 02)
, IN pLteDesconto double(16, 02)
, IN pLteMulta double(16, 02)
, IN pLteTroco double(16, 02)
, IN pRefeicao int
, OUT pConfirma int
, OUT pMensagem varchar(100)
, OUT pMesChave int
, OUT pLteChave int)
BEGIN

  DECLARE ErroException integer DEFAULT 0;
  DECLARE ErroMensagem integer DEFAULT 0;

  SET @Confirma = 0;
  SET @ltechave = 0;
  SET @Mensagem = 0;

  CALL ProcessaLote(pFlaCodigo, 32, pClbCodigo, pCtaCodigo, pLtePrincipal, pLteJuros, pLteDesconto, pLteMulta, pLteTroco, @Confirma, @ltechave, @Mensagem);

  SET pConfirma = @Confirma;
  SET pMensagem = @Mensagem;

  SET pLteChave = 0;
  SET pMesChave = 0;
  SET @meschave = 0;


  IF pLteDesconto > 0 THEN
    SET @percdesc = (pLteDesconto / pLtePrincipal);
  ELSE
    SET @percdesc = 0;
  END IF;

  IF pConfirma = 0 THEN

    SET pLteChave = @ltechave;

    IF pTipo = 1 THEN

      SET @qtdItem = (SELECT COUNT(*)
          FROM titem);

      IF (@qtdItem > 0) THEN
        SET @ContaItem = 1;

        SET ErroMensagem = 1;

        INSERT INTO orc (orcchave
        , etdcodigo
        , clbcodigo
        , fopcodigo
        , tdecodigo
        , stocodigo
        , moccodigo
        , foacodigo
        , trmcodigo
        , tfpcodigo
        , puocodigo
        , orcdataabert
        , orchoraabert
        , orcgeralav
        , orcdescontoav
        , orcpercdescav
        , orctotalav
        , orcgeralap
        , orcdescontoap
        , orcpercdescap
        , orctotalap
        , orcobs
        , orcdestimpre
        , edritem
        , edrcodigo
        , clbvendedor
        , orcmesa)
          SELECT 0
               , etdcodigo
               , pClbCodigo
               , fopcodigo
               , tdecodigo
               , 3
               , moccodigo
               , foacodigo
               , trmcodigo
               , tfpcodigo
               , puocodigo
               , orcdataabert
               , TIME(NOW())
               , (pLtePrincipal + pLteJuros + pLteMulta) - pLteDesconto
               , pLteDesconto
               , @percdesc
               , (pLtePrincipal + pLteJuros + pLteMulta) - pLteDesconto
               , (pLtePrincipal + pLteJuros + pLteMulta) - pLteDesconto
               , pLteDesconto
               , @percdesc
               , (pLtePrincipal + pLteJuros + pLteMulta) - pLteDesconto
               , orcobs
               , orcdestimpre
               , edritem
               , edrcodigo
               , pClbCodigo
               , orcmesa
            FROM orc
            WHERE orc.orcchave = pOrcChave;

        IF (ROW_COUNT() > 0) THEN
          SET @orcchave = (SELECT LAST_INSERT_ID());

          SET ErroMensagem = 2;

          INSERT INTO tro (trochave
          , orcchaveorigem
          , orcchavedestino)
            VALUES (0, pOrcChave, @orcchave);
          SET @item = 0;
          WHILE (@ContaItem <= @qtdItem) DO
            SET @item = @item + 1;

            SET ErroMensagem = 3;


            SELECT itochave
                 , qtde
              FROM titem
              WHERE titem.id = @ContaItem
              INTO @itochave
                 , @qtde;

            SET ErroMensagem = 4;


            INSERT INTO ito (itochave
            , orcchave
            , procodigo
            , puncodigo
            , unicodigo
            , stocodigo
            , tdecodigo
            , itoquantidade
            , itovalorav
            , itototalav
            , itodescontoav
            , itosaldoav
            , itovalorap
            , itototalap
            , itodescontoap
            , itosaldoap
            , itocontendo
            , itoproservico
            , itoprocomple
            , itodataalter
            , itoitem
            , itogint
            , itopercdescap
            , itopercdescav
            , itoinfadprod
            , itoquanticondi
            , itoquantidevolcondi
            , vrpcodigo
            , itoobs)
              SELECT 0
                   , @orcchave
                   , ito.procodigo
                   , puncodigo
                   , unicodigo
                   , 3
                   , tdecodigo
                   , @qtde
                   , itovalorav
                   , (@qtde * itovalorav)
                   , ROUND((itototalav * @percdesc), 2)
                   , (itototalav - itodescontoav)
                   , itovalorap
                   , (@qtde * itovalorap)
                   , ROUND((itototalap * @percdesc), 2)
                   , (itototalap - itodescontoap)
                   , itocontendo
                   , itoproservico
                   , itoprocomple
                   , CURRENT_DATE()
                   , @item
                   , itogint
                   , ROUND(@percdesc, 3)
                   , ROUND(@percdesc, 3)
                   , itoinfadprod
                   , itoquanticondi
                   , itoquantidevolcondi
                   , vrpcodigo
                   , itoobs
                FROM ito
                WHERE ito.itochave = @itochave;

            SET ErroMensagem = 5;

            IF IFNULL((SELECT (ito.itoquantidade - @qtde)
                  FROM ito
                WHERE ito.itochave = @itochave), 0) = 0 THEN
              DELETE
                FROM ito
              WHERE ito.itochave = @itochave;
            ELSE
              UPDATE ito
              SET ito.itoquantidade = (ito.itoquantidade - @qtde)
                , ito.itototalav = (ito.itoquantidade * ito.itovalorav)
                , ito.itosaldoav = (ito.itototalav - itodescontoav)
                , ito.itototalap = (ito.itoquantidade * ito.itovalorap)
                , ito.itosaldoap = (itototalap - itodescontoap)
              WHERE ito.itochave = @itochave;
            END IF;

            SET @ContaItem = @ContaItem + 1;
          END WHILE;


          SET @centavos = pLteDesconto - (SELECT SUM(itodescontoav)
              FROM ito
            WHERE ito.orcchave = pOrcChave);

          IF @centavos <> 0 THEN
            UPDATE ito
            SET itodescontoav = itodescontoav + @centavos
              , itodescontoap = itodescontoap + @centavos
              , itosaldoav = itosaldoav + @centavos
              , itosaldoap = itosaldoap + @centavos
            WHERE ito.orcchave = pOrcChave LIMIT 1;
          END IF;

          SET ErroMensagem = 6;

          UPDATE orc
          INNER JOIN (SELECT ito.orcchave
                           , SUM(itototalav)    totav
                           , SUM(itodescontoav) descav
                           , SUM(itototalap)    totap
                           , SUM(itodescontoap) descap
              FROM ito
            WHERE stocodigo != 88
            GROUP BY ito.orcchave) tito
            ON tito.orcchave = orc.orcchave
          SET orc.orcgeralav = tito.totav
            , orc.orcdescontoav = tito.descav
            , orc.orcpercdescav = IF(tito.descav > 0, (tito.descav / tito.totav), 0)
            , orc.orctotalav = (tito.totav - tito.descav)
            , orc.orcgeralap = tito.totap
            , orc.orcdescontoap = tito.descap
            , orc.orcpercdescap = IF(tito.descap > 0, (tito.descap / tito.totap), 0)
            , orc.orctotalap = (tito.totap - tito.descap)
          WHERE orc.orcchave = @orcchave;

          SET ErroMensagem = 7;

          UPDATE orc
          INNER JOIN (SELECT ito.orcchave
                           , SUM(itototalav)    totav
                           , SUM(itodescontoav) descav
                           , SUM(itototalap)    totap
                           , SUM(itodescontoap) descap
              FROM ito
            WHERE stocodigo != 88
            GROUP BY ito.orcchave) tito
            ON tito.orcchave = orc.orcchave
          SET orc.orcgeralav = tito.totav
            , orc.orcdescontoav = tito.descav
            , orc.orcpercdescav = IF(tito.descav > 0, (tito.descav / tito.totav), 0)
            , orc.orctotalav = (tito.totav - tito.descav)
            , orc.orcgeralap = tito.totap
            , orc.orcdescontoap = tito.descap
            , orc.orcpercdescap = IF(tito.descap > 0, (tito.descap / tito.totap), 0)
            , orc.orctotalap = (tito.totap - tito.descap)
          WHERE orc.orcchave = pOrcChave;

        END IF;


        SET ErroMensagem = 8;
        CALL RegistraMes(@orcchave, pClbCodigo, ErroMensagem, pConfirma, pMensagem, @meschave);

        SET ErroMensagem = 10;


        INSERT INTO tro (trochave
        , orcchaveorigem
        , orcchavedestino)
          VALUES (0, pOrcChave, @orcchave);

      END IF;

      SET ErroMensagem = 11;


      INSERT INTO olt (oltchave
      , orcchave
      , ltechave
      , oltidentificacao)
        VALUE (0, IF(@orcchave IS NULL, pOrcChave, @orcchave), @ltechave, pNome);

      IF (@qtdItem > 0)
        AND (@orcchave > 0) THEN

        SET @VlrFechamento = (SELECT SUM(dtl.dtlvalor) dtlvalor
            FROM dtl
            INNER JOIN olt ON dtl.ltechave = olt.ltechave
          WHERE olt.orcchave = @orcchave
            AND dtl.mdacodigo != 7);


        IF @VlrFechamento > 0 THEN

          SET @etdcodigo = (SELECT etdcodigo
              FROM orc
            WHERE orc.orcchave = pOrcChave);

          SET ErroMensagem = 15;


          INSERT INTO trfi (ID
          , etdcodigo
          , mdacodigo
          , tfdcodigo
          , numparc
          , dtvecto
          , vlrparcela
          , numero)
            VALUES (0, @etdcodigo, 1, 32, 1, CURRENT_DATE(), @VlrFechamento, @meschave);

          SET ErroMensagem = 16;

          CALL RegistraTitulo(pFlaCodigo, @ltechave, 1, ErroMensagem, @TitCodigo);

          SET ErroMensagem = 9;


          IF @ltechave THEN

            INSERT INTO rfm (rfmchave
            , rfichave
            , meschave)
              SELECT DISTINCT 0
                            , rfichave
                            , @meschave
                FROM mfi
                INNER JOIN mlt ON mfi.mfichave = mlt.mfichave
                WHERE mlt.ltechave = @ltechave;
          END IF;

        END IF;
      END IF;


    ELSE

      SET ErroMensagem = 13;

      INSERT INTO olt (oltchave
      , orcchave
      , ltechave
      , oltidentificacao)
        VALUE (0, pOrcChave, @ltechave, pNome);

      SET @LteDesconto = IFNULL((SELECT SUM(lte.ltedesconto)
          FROM olt
          INNER JOIN lte ON olt.ltechave = lte.ltechave
        WHERE olt.orcchave = pOrcChave), 0);

      SET @OrcTotalAv = (SELECT SUM(itovalorav * itoquantidade) totav
          FROM ito
        WHERE orcchave = pOrcChave);


      IF @LteDesconto > 0 THEN

        SET @percdesc = (@LteDesconto / @OrcTotalAv);

        UPDATE ito
        SET itodescontoav = ROUND((itototalav * @percdesc), 2)
          , itosaldoav = (ito.itototalav - itodescontoav)
          , itodescontoap = ROUND((itototalap * @percdesc), 2)
          , itosaldoap = (ito.itototalav - itodescontoav)
          , itopercdescap = ROUND(@percdesc, 3)
          , itopercdescav = ROUND(@percdesc, 3)
        WHERE ito.orcchave = pOrcChave;



        SET @centavos = @LteDesconto - (SELECT SUM(itodescontoav)
            FROM ito
          WHERE ito.orcchave = pOrcChave);

        IF @centavos <> 0 THEN
          UPDATE ito
          SET itodescontoav = itodescontoav + @centavos
            , itodescontoap = itodescontoap + @centavos
            , itosaldoav = itosaldoav + @centavos
            , itosaldoap = itosaldoap + @centavos
          WHERE ito.orcchave = pOrcChave LIMIT 1;
        END IF;


        UPDATE orc
        INNER JOIN (SELECT ito.orcchave
                         , SUM(itototalav)    totav
                         , SUM(itodescontoav) descav
                         , SUM(itototalap)    totap
                         , SUM(itodescontoap) descap
            FROM ito
          WHERE stocodigo != 88
          GROUP BY ito.orcchave) tito
          ON tito.orcchave = orc.orcchave
        SET orc.orcgeralav = tito.totav
          , orc.orcdescontoav = tito.descav
          , orc.orcpercdescav = IF(tito.descav > 0, (tito.descav / tito.totav), 0)
          , orc.orctotalav = (tito.totav - tito.descav)
          , orc.orcgeralap = tito.totap
          , orc.orcdescontoap = tito.descap
          , orc.orcpercdescap = IF(tito.descap > 0, (tito.descap / tito.totap), 0)
          , orc.orctotalap = (tito.totap - tito.descap)
        WHERE orc.orcchave = pOrcChave;
      END IF;

      SET ErroMensagem = 12;


      CALL RegistraMes(pOrcChave, pClbCodigo, ErroMensagem, pConfirma, pMensagem, @meschave);

      SET ErroMensagem = 14;

      SET @VlrFechamento = (SELECT SUM(dtl.dtlvalor) dtlvalor
          FROM dtl
          INNER JOIN olt ON dtl.ltechave = olt.ltechave
        WHERE olt.orcchave = pOrcChave
          AND dtl.mdacodigo != 7);

      IF @VlrFechamento > 0 THEN

        SET @etdcodigo = (SELECT etdcodigo
            FROM orc
          WHERE orc.orcchave = pOrcChave);

        SET ErroMensagem = 15;


        INSERT INTO trfi (ID
        , etdcodigo
        , mdacodigo
        , tfdcodigo
        , numparc
        , dtvecto
        , vlrparcela
        , numero)
          VALUES (0, @etdcodigo, 1, 32, 1, CURRENT_DATE(), @VlrFechamento, @meschave);

        SET ErroMensagem = 16;

        CALL RegistraTitulo(pFlaCodigo, @ltechave, 1, ErroMensagem, @TitCodigo);

      END IF;

      SET ErroMensagem = 17;

      INSERT INTO rfm (rfmchave
      , rfichave
      , meschave)

        (SELECT DISTINCT 0
                       , rfichave
                       , @MesChave
          FROM olt
          INNER JOIN mlt ON olt.ltechave = mlt.ltechave
          INNER JOIN mfi ON mlt.mfichave = mfi.mfichave
          WHERE olt.orcchave = pOrcChave);

      SET ErroMensagem = 18;

      UPDATE orc
      INNER JOIN (SELECT ito.orcchave
                       , SUM(itototalav)    totav
                       , SUM(itodescontoav) descav
                       , SUM(itototalap)    totap
                       , SUM(itodescontoap) descap
          FROM ito
        WHERE stocodigo != 88
        GROUP BY ito.orcchave) tito
        ON tito.orcchave = orc.orcchave
      SET orc.orcgeralav = tito.totav
        , orc.orcdescontoav = tito.descav
        , orc.orcpercdescav = @percdesc
        , orc.orctotalav = (tito.totav - tito.descav)
        , orc.orcgeralap = tito.totap
        , orc.orcdescontoap = tito.descap
        , orc.orcpercdescap = @percdesc
        , orc.orctotalap = (tito.totap - tito.descap)
        , orc.orcdataencerr = CURRENT_DATE()
        , orc.orchoraencerr = CURRENT_TIME()
        , orc.stocodigo = 3
      WHERE orc.orcchave = pOrcChave;

      UPDATE ito
      SET ito.stocodigo = 3
      WHERE ito.orcchave = pOrcChave
      AND ito.stocodigo IN (1, 2, 5);

    END IF;

  END IF;

  IF pRefeicao > 0 THEN

    SET ErroMensagem = 18;

    SET @valor := (pLtePrincipal + pLteJuros + pLteMulta) - pLteDesconto;

    CALL RegistraRefeicao(pFlaCodigo, pOrcChave, pClbCodigo, @valor, ErroMensagem, @Confirma, @meschave);

  END IF;

  IF @meschave > 0 THEN
    SET pMesChave = @meschave;
  ELSE
    SET pMesChave = 0;
  END IF;

  SET pConfirma = ErroException;
  SET pMensagem = 'Movimento gravado com sucesso !';

END
$$

DROP PROCEDURE IF EXISTS MobAbreOrcamento;

CREATE DEFINER = 'root'@'%'
PROCEDURE MobAbreOrcamento (IN pEtdCodigo int
, IN pClbCodigo int
, IN pMocCodigo int
, IN pOrcMesa int
, OUT pOrcChave int)
BEGIN
  SET @rollback = 0;
  SET pOrcChave = 0;
  START TRANSACTION;

    SET @stocodigo = 1;
    IF pMocCodigo = 5 THEN
      SET @stocodigo = 2;
    END IF;


    IF pMocCodigo > 0 THEN



      SET pOrcChave = (SELECT orc.orcchave
          FROM orc
        WHERE orc.moccodigo = 5
          AND orc.orcmesa = pOrcMesa
          AND orc.orcdataencerr IS NULL
          AND orc.stocodigo NOT IN (3, 8, 9, 88));


      IF pOrcChave > 0 THEN
        SET @rollback = 1;
      END IF;

    END IF;

    IF @rollback = 0 THEN

      SELECT edrcodigo
           , edritem
        FROM edr
        WHERE etdcodigo = pEtdCodigo
          AND edr.tedcodigo = 1 LIMIT 1
        INTO @edrcodigo
           , @edritem;

      INSERT INTO orc (orcchave
      , etdcodigo
      , clbcodigo
      , fopcodigo
      , tdecodigo
      , stocodigo
      , moccodigo
      , foacodigo
      , trmcodigo
      , tfpcodigo
      , puocodigo
      , orcdataabert
      , orchoraabert
      , orcgeralav
      , orcdescontoav
      , orcpercdescav
      , orctotalav
      , orcgeralap
      , orcdescontoap
      , orcpercdescap
      , orctotalap
      , orcobs
      , orcdestimpre
      , edritem
      , edrcodigo
      , clbvendedor
      , orcmesa)
        VALUES (0, pEtdCodigo, pClbCodigo, 1, 0, @stocodigo, pMocCodigo, 1, 1, 0, 0, CURRENT_DATE(), TIME(NOW()), 0, 0, 0, 0, 0, 0, 0, 0, '', 0, @edritem, @edrcodigo, pClbCodigo, pOrcMesa);
      SET pOrcChave = (SELECT LAST_INSERT_ID());

    END IF;

    IF @rollback = 0 THEN
    COMMIT;
  ELSE
    ROLLBACK;
  END IF;
END
$$

DROP PROCEDURE IF EXISTS MobGravaItens;

CREATE DEFINER = 'root'@'%'
PROCEDURE MobGravaItens (IN pOrcChave int, IN pClbCodigo int, OUT pConfirma int, OUT pMensagem varchar(255))
BEGIN

  DECLARE ErroException integer DEFAULT 0;
  DECLARE ErroMensagem integer DEFAULT 0;

  DECLARE CONTINUE HANDLER FOR SQLEXCEPTION BEGIN
    SET ErroException = 1;
    SET pConfirma = ErroException;

    ROLLBACK;

    SET pMensagem = (SELECT CASE
          WHEN ErroMensagem = 1 THEN 'Erro não identificado.'
          WHEN ErroMensagem = 2 THEN 'Não foi possivel verificar se existe itens da mesa.'
          WHEN ErroMensagem = 3 THEN 'Não foi possivel gravar itens da mesa.'
          WHEN ErroMensagem = 4 THEN 'Não foi possivel gerar pedido na cozinha.'
          WHEN ErroMensagem = 5 THEN 'Não foi possivel gravar itens, cozinha já encerrou as atividades.'
          WHEN ErroMensagem = 6 THEN 'Não foi possivel registrar dados auxiliares dos itens.'
          WHEN ErroMensagem = 7 THEN 'Não foi possivel registrar mudanças de ingredientes.'
          WHEN ErroMensagem = 8 THEN 'Não foi possivel liberar pedido para impressão.'
          ELSE 'Erro inesperado.'
        END
        FROM dual);
  END;

  DROP TEMPORARY TABLE IF EXISTS tsbi;

  CREATE TEMPORARY TABLE tsbi (
      ID        int NOT NULL
    , sbrcodigo int
    , sbiobs    varchar(100)
    , PRIMARY KEY (ID)
    ) ENGINE = INNODB DEFAULT charset = latin1;


  START TRANSACTION;

    SET @stocodigo = (SELECT stocodigo
        FROM orc
      WHERE orcchave = pOrcChave);

    IF @stocodigo IN (1, 2) THEN
      UPDATE orc
      SET stocodigo = 1
      WHERE orcchave = pOrcChave;
    END IF;

    SET ErroMensagem = 2;

    SET @item = IFNULL((SELECT MAX(itoitem)
        FROM ito
      WHERE ito.orcchave = pOrcChave), 0);
    SET @qtd = (SELECT COUNT(*)
        FROM tito);

    SET ErroMensagem = 4;

    SET @MocCodigo = (SELECT orc.moccodigo
        FROM orc
      WHERE orcchave = pOrcChave);

    SET @clbcodigo = (SELECT clbcodigo
        FROM tito LIMIT 1);

    IF @MocCodigo = 5 THEN

      SET @cznchave = (SELECT cznchave
          FROM czn
        WHERE cznfechamento IS NULL LIMIT 1);

      SET @immnumepedido = (SELECT (IFNULL(MAX(imm.immnumepedido), 0) + 1) immnumepedido
          FROM imm
        WHERE imm.cznchave = @cznchave
          AND imm.immmodo = 1);

      IF @immnumepedido < IFNULL((SELECT cfgmgounumepedint
            FROM cfgmgou LIMIT 1), 5000) THEN
        SET @immnumepedido = IFNULL((SELECT cfgmgounumepedint
            FROM cfgmgou LIMIT 1), 5000);
      END IF;

    END IF;

    SET @posicao = 1;

    WHILE (@posicao <= @qtd) DO


      SET ErroMensagem = 3;

      SET @item = (@item + 1);

      INSERT INTO ito (itochave
      , orcchave
      , procodigo
      , puncodigo
      , unicodigo
      , stocodigo
      , tdecodigo
      , itoquantidade
      , itovalorav
      , itodescontoav
      , itototalav
      , itosaldoav
      , itovalorap
      , itodescontoap
      , itototalap
      , itosaldoap
      , itocontendo
      , itoproservico
      , itoprocomple
      , itodataalter
      , itoitem
      , itogint
      , itopercdescap
      , itopercdescav
      , itoinfadprod
      , itoquanticondi
      , itoquantidevolcondi
      , vrpcodigo
      , itoobs)

        (SELECT 0
              , pOrcChave
              , tito.procodigo
              , tito.puncodigo
              , uni.unicodigo
              , 2
              , 1
              , tito.qtde
              , pun.punprecoav
              , 0
              , ROUND((qtde * pun.punprecoav), 2)
              , ROUND((qtde * pun.punprecoav), 2)
              , pun.punprecoap
              , 0
              , ROUND((qtde * pun.punprecoap), 2)
              , ROUND((qtde * pun.punprecoap), 2)
              , pun.punmultiplicador
              , ''
              , ''
              , CURRENT_DATE()
              , @item
              , ''
              , 0
              , 0
              , ''
              , 0
              , 0
              , NULL
              , tito.obs
          FROM tito
          INNER JOIN pun ON tito.puncodigo = pun.puncodigo
          INNER JOIN uni ON pun.unicodigo = uni.unicodigo
          WHERE tito.id = @posicao);

      IF (SELECT ROW_COUNT()) > 0 THEN
        SET @itochave = (SELECT LAST_INSERT_ID());

        SELECT procodigo
             , obs
             , sfnid
             , sfncodigo
             , copos
             , pratos
          FROM tito
          WHERE tito.id = @posicao
          INTO @procodigo
             , @obs
             , @sfnid
             , @sfncodigo
             , @copos
             , @pratos;


        INSERT INTO ioc (clbcodigo
        , itochave
        , iocpercentual)
          VALUE (@clbcodigo, @itochave, 100);


        IF @MocCodigo = 5 THEN
          SET ErroMensagem = 6;


          SELECT gri.griminuretardo
               , gri.tcicodigo
            FROM gri
            INNER JOIN pro ON pro.grpcodigo = gri.grpcodigo
            INNER JOIN ito ON pro.procodigo = ito.procodigo
            WHERE ito.itochave = @itochave
            INTO @griminuretardo
               , @tcicodigo;


          INSERT INTO imm (itochave
          , tcicodigo
          , immmodo
          , cznchave
          , immtemporetardo
          , immnumepedido
          , immhorapedido
          , trmcodigo
          , immdestino
          , immcopos
          , immpratos
          , clbcodigo)
            VALUES (@itochave, @tcicodigo, 1, @cznchave, @griminuretardo, @immnumepedido, NOW(), 1, 1, @copos, @pratos, pClbCodigo);

          SET ErroMensagem = 7;


          IF @sfncodigo > 0 THEN

            INSERT INTO bri (brichave
            , itochave
            , brdcodigo
            , briincluir)
              (SELECT 0
                    , @itochave
                    , brdcodigo
                    , 1
                FROM tbrd
                WHERE tbrd.sfnid = @sfnid
                  AND tbrd.sfncodigo = @sfncodigo);

            IF (SELECT ROW_COUNT()) > 0 THEN

              SET @vlborda = IFNULL((SELECT pun.punprecoav punprecoav
                  FROM bri
                  INNER JOIN ito ON bri.itochave = ito.itochave
                  INNER JOIN brd ON bri.brdcodigo = brd.brdcodigo
                  INNER JOIN pro ON brd.procodigo = pro.procodigo
                  INNER JOIN pun ON pro.procodigo = pun.procodigo
                  AND ito.unicodigo = pun.unicodigo
                WHERE bri.itochave = @itochave LIMIT 1), 0);

              IF @vlborda > 0 THEN
                UPDATE ito
                SET ito.itovalorav = (ito.itovalorav + @vlborda)
                  , ito.itovalorap = (ito.itovalorap + @vlborda)
                  , ito.itototalav = ROUND((ito.itovalorav * ito.itoquantidade), 2)
                  , ito.itototalap = ROUND((ito.itovalorap * ito.itoquantidade), 2)
                  , ito.itosaldoav = ROUND((ito.itovalorav * ito.itoquantidade), 2) - ito.itodescontoav
                  , ito.itosaldoap = ROUND((ito.itovalorap * ito.itoquantidade), 2) - ito.itodescontoav

                WHERE ito.itochave = @itochave;
              END IF;
            END IF;

            DELETE
              FROM tsbi;
            SET @sbiid = 0;

            INSERT INTO tsbi
              (SELECT @sbiid := @sbiid + 1
                    , tisi.sbrcodigo
                    , tisi.obs
                FROM tisi
                WHERE tisi.sfnid = @sfnid
                  AND tisi.sfncodigo = @sfncodigo
                  AND tisi.isitipo = 2);

            SET @possbi = 1;
            SET @posqtd = (SELECT COUNT(*)
                FROM tsbi);

            WHILE (@possbi <= @posqtd) DO
              INSERT INTO sbi (sbichave
              , itochave
              , sbrcodigo
              , sbiobs)
                (SELECT 0
                      , @itochave
                      , tsbi.sbrcodigo
                      , tsbi.sbiobs
                  FROM tsbi
                  WHERE tsbi.ID = @possbi);

              IF (SELECT ROW_COUNT()) > 0 THEN
                SET @sbichave = (SELECT LAST_INSERT_ID());
                SET @sbrcodigo = (SELECT sbrcodigo
                    FROM sbi
                  WHERE sbichave = @sbichave LIMIT 1);

                INSERT INTO isi (isichave
                , sbichave
                , tsicodigo
                , procodigo
                , isitipo)
                  (SELECT 0
                        , @sbichave
                        , tisi.tsicodigo
                        , tisi.procodigo
                        , tisi.isitipo
                    FROM tisi
                    WHERE tisi.sfnid = @sfnid
                      AND tisi.sfncodigo = @sfncodigo
                      AND tisi.sbrcodigo = @sbrcodigo
                      AND tisi.isitipo != 2);

                IF (SELECT ROW_COUNT()) > 0 THEN
                  SET @isichave = (SELECT LAST_INSERT_ID());

                  SET @vlradicional = IFNULL((SELECT pun.punprecoav
                      FROM isi
                      INNER JOIN sbi ON isi.sbichave = sbi.sbichave
                      INNER JOIN sbr ON sbi.sbrcodigo = sbr.sbrcodigo
                      INNER JOIN pro ON isi.procodigo = pro.procodigo
                      INNER JOIN pun ON pro.procodigo = pun.procodigo
                      AND pro.unicodigo = pun.unicodigo
                    WHERE sbrcobraadicional = 1
                      AND isichave = @isichave
                      AND isi.isitipo = 1
                      AND pun.punprecoav > 0), 0);
                  IF @vlradicional > 0 THEN
                    UPDATE ito
                    SET ito.itovalorav = (ito.itovalorav + @vlradicional)
                      , ito.itovalorap = (ito.itovalorap + @vlradicional)
                      , ito.itototalav = ROUND((ito.itovalorav * ito.itoquantidade), 2)
                      , ito.itototalap = ROUND((ito.itovalorap * ito.itoquantidade), 2)
                      , ito.itosaldoav = ROUND((ito.itovalorav * ito.itoquantidade), 2) - ito.itodescontoav
                      , ito.itosaldoap = ROUND((ito.itovalorap * ito.itoquantidade), 2) - ito.itodescontoav
                    WHERE ito.itochave = @itochave;
                  END IF;
                END IF;


              END IF;
              SET @possbi = (@possbi + 1);
            END WHILE;



          ELSE

            IF (SELECT COUNT(*)
                  FROM tisi) = 0 THEN
              INSERT INTO sbi (sbi.sbichave
              , sbi.itochave
              , sbi.sbrcodigo
              , sbi.sbiobs)
                (SELECT 0
                      , @itochave
                      , sbr.sbrcodigo
                      , @obs
                  FROM sbr
                  WHERE sbr.procodigo = @procodigo LIMIT 1);
            ELSE

              INSERT INTO sbi (sbi.sbichave
              , sbi.itochave
              , sbi.sbrcodigo
              , sbi.sbiobs)
                (SELECT 0
                      , @itochave
                      , tisi.sbrcodigo
                      , IF(IFNULL(tisi.obs, '') != '', tisi.obs, @obs)
                  FROM tisi
                  INNER JOIN sbr ON tisi.sbrcodigo = sbr.sbrcodigo
                  WHERE sbr.procodigo = @procodigo LIMIT 1);


              IF (SELECT ROW_COUNT()) > 0 THEN
                SET @sbichave = (SELECT LAST_INSERT_ID());

                INSERT INTO isi (isichave
                , sbichave
                , tsicodigo
                , procodigo
                , isitipo)

                  (SELECT 0
                        , @sbichave
                        , tisi.tsicodigo
                        , tisi.procodigo
                        , tisi.isitipo
                    FROM tisi
                    INNER JOIN sbr ON tisi.sbrcodigo = sbr.sbrcodigo
                    WHERE sbr.procodigo = @procodigo);

                IF (SELECT ROW_COUNT()) > 0 THEN
                  SET @isichave = (SELECT LAST_INSERT_ID());
                  SET @vlradicional = IFNULL((SELECT pun.punprecoav
                      FROM isi
                      INNER JOIN sbi ON isi.sbichave = sbi.sbichave
                      INNER JOIN sbr ON sbi.sbrcodigo = sbr.sbrcodigo
                      INNER JOIN pro ON isi.procodigo = pro.procodigo
                      INNER JOIN pun ON pro.procodigo = pun.procodigo
                      AND pro.unicodigo = pun.unicodigo
                    WHERE sbrcobraadicional = 1
                      AND isichave = @isichave
                      AND isi.isitipo = 1
                      AND pun.punprecoav > 0), 0);
                  IF @vlradicional > 0 THEN
                    UPDATE ito
                    SET ito.itovalorav = (ito.itovalorav + @vlradicional)
                      , ito.itovalorap = (ito.itovalorap + @vlradicional)
                      , ito.itototalav = ROUND((ito.itovalorav * ito.itoquantidade), 2)
                      , ito.itototalap = ROUND((ito.itovalorap * ito.itoquantidade), 2)
                      , ito.itosaldoav = ROUND((ito.itovalorav * ito.itoquantidade), 2) - ito.itodescontoav
                      , ito.itosaldoap = ROUND((ito.itovalorap * ito.itoquantidade), 2) - ito.itodescontoav
                    WHERE ito.itochave = @itochave;
                  END IF;
                END IF;
              END IF;
            END IF;

          END IF;
        END IF;

      END IF;
      SET @posicao = @posicao + 1;
    END WHILE;

    SET ErroMensagem = 8;

    UPDATE orc
    INNER JOIN (SELECT ito.orcchave
                     , SUM(ito.itototalav) totav
                     , SUM(itodescontoav)  descav
                     , SUM(ito.itototalap) totap
                     , SUM(itodescontoap)  descap
        FROM ito
      WHERE stocodigo != 88
      GROUP BY ito.orcchave) tito
      ON tito.orcchave = orc.orcchave
    SET orc.orcgeralav = tito.totav
      , orc.orcdescontoav = tito.descav
      , orc.orcpercdescav = 0
      , orc.orctotalav = (tito.totav - tito.descav)
      , orc.orcgeralap = tito.totap
      , orc.orcdescontoap = tito.descap
      , orc.orcpercdescap = 0
      , orc.orctotalap = (tito.totap - tito.descap)
      , stocodigo = @stocodigo
    WHERE orc.orcchave = pOrcChave;

    IF NOT ErroException THEN

      DELETE
        FROM tito;
      DELETE
        FROM tbrd;
      DELETE
        FROM tisi;
      DELETE
        FROM tsbi;

    COMMIT;

    SET pConfirma = ErroException;
    SET pMensagem = 'Pedido gravado com sucesso !';
  END IF;

END
$$

DROP PROCEDURE IF EXISTS ProcessaLote;

CREATE DEFINER = 'root'@'%'
PROCEDURE ProcessaLote (IN pFlaCodigo int
, IN pTtfCodigo int
, IN pClbCodigo int
, IN pCtaCodigo int
, IN pLtePrincipal double(16, 02)
, IN pLteJuros double(16, 02)
, IN pLteDesconto double(16, 02)
, IN pLteMulta double(16, 02)
, IN pLteTroco double(16, 02)
, OUT pConfirma int
, OUT pLteChave int
, OUT pMensagem varchar(100))
BEGIN

  DECLARE ErroException integer DEFAULT 0;
  DECLARE ErroMensagem integer DEFAULT 0;

  SET ErroMensagem = 1;

  CREATE TEMPORARY TABLE IF NOT EXISTS terro (
      Chamada  int(11)
    , Mensagem varchar(100)
    ) ENGINE = INNODB;


  CREATE TEMPORARY TABLE IF NOT EXISTS trfi (
      ID         int  NOT NULL AUTO_INCREMENT
    , etdcodigo  int  NOT NULL
    , mdacodigo  int  NOT NULL
    , tfdcodigo  int  NOT NULL
    , numparc    int  NOT NULL
    , dtvecto    date NOT NULL
    , vlrparcela decimal(12, 2)
    , numero     varchar(20)
    , PRIMARY KEY (ID)
    ) ENGINE = INNODB DEFAULT charset = latin1;

  SET ErroMensagem = 2;


  INSERT INTO lte (ltechave
  , flacodigo
  , tfdcodigo
  , ltedata
  , lteprincipal
  , ltejuros
  , ltedesconto
  , ltetotal
  , lteextenso
  , ltehistorico
  , ltemulta
  , ltesituacao
  , clbcodigo
  , ctacodigo
  , lteregistro
  , ltetroco)
    VALUES (0, pFlaCodigo, pTtfCodigo, CURRENT_DATE(), pLtePrincipal, pLteJuros, pLteDesconto, (pLtePrincipal + pLteJuros + pLteMulta) - pLteDesconto, '', '', pLteMulta, 0, pClbCodigo, pCtaCodigo, NOW(), pLteTroco);

  IF ROW_COUNT() > 0 THEN
    SET pLteChave = (SELECT LAST_INSERT_ID());

    SET ErroMensagem = 3;

    SET @dtlcont = 1;
    SET @dtlqtde = (SELECT COUNT(*)
        FROM tdtl);
    SET @VlrBaixa = 0;

    WHILE (@dtlcont <= @dtlqtde) DO

      INSERT INTO dtl (dtlchave
      , ltechave
      , cedcodigo
      , dtlvalor
      , mdacodigo)
        (SELECT 0
              , pLteChave
              , 1
              , @dtlValor := dtlvalor
              , @mdacodigo := mdacodigo
          FROM tdtl
          WHERE ID = @dtlcont);

      IF ROW_COUNT() > 0 THEN
        SET @dtlchave = (SELECT LAST_INSERT_ID());


        IF (@mdacodigo = 1) THEN
          SET ErroMensagem = 4;
          CALL RegistraCCO(pLteChave, pCtaCodigo, pClbCodigo, 1, 'Receb. em Dinheiro', @dtlValor, ErroMensagem, @CcoChave);
        END IF;


        IF (@mdacodigo = 3) THEN
          SET ErroMensagem = 5;
          CALL RegistraCheque(@dtlchave, ErroMensagem, @confirma);
          IF @confirma = 0 THEN
            SET ErroMensagem = 6;
            CALL RegistraCCO(pLteChave, pCtaCodigo, pClbCodigo, 1, 'Receb. em Cheque', @dtlValor, ErroMensagem, @CcoChave);

          END IF;
        END IF;


        IF (@mdacodigo IN (4, 5)) THEN
          SET ErroMensagem = 7;
          CALL RegistraCartao(pFlaCodigo, pLteChave, @mdacodigo, @dtlchave, ErroMensagem, @confirma);
        END IF;


        IF (@mdacodigo = 7) THEN
          SET ErroMensagem = 9;
          CALL RegistraTitulo(pFlaCodigo, pLteChave, @mdacodigo, ErroMensagem, @TitCodigo);
        END IF;

      END IF;
      SET @dtlcont = @dtlcont + 1;

    END WHILE;

  END IF;
  SET pConfirma = ErroException;
  SET pMensagem = 'Movimento gravado com sucesso !';
END
$$

DROP PROCEDURE IF EXISTS RegistraCartao;
CREATE DEFINER = 'root'@'%'
PROCEDURE RegistraCartao (IN pFlaCodigo int
, IN pLteChave int
, IN pMdaCodigo int
, IN pDtlChave int
, IN pChamada int
, OUT pConfirma int)
BEGIN

  CREATE TEMPORARY TABLE IF NOT EXISTS terro (
      Chamada  int(11)
    , Mensagem varchar(100)
    ) ENGINE = INNODB;


  DELETE
    FROM terro
  WHERE chamada = pChamada;


  INSERT INTO terro
    VALUES (pChamada, 'Erro ao registrar cartão');


  SET @ContaCard = (SELECT MIN(rdcchave)
      FROM trdc);
  SET @QtdCard = (SELECT MAX(rdcchave)
      FROM trdc);

  WHILE (@ContaCard <= @QtdCard) DO

    IF pMdaCodigo = (SELECT mdacodigo
          FROM trdc
        WHERE rdcchave = @ContaCard) THEN

      INSERT INTO rdc (rdcchave
      , rdcvalor
      , rdcnrauto
      , rdcvalorope
      , rdcsituacao
      , rdcdata
      , adccodigo
      , rdcparcelas
      , tescodigo)
        SELECT 0
             , @rdcvalor := rdcvalor
             , @rdcnrauto := rdcnrauto
             , rdcvalorope
             , rdcsituacao
             , rdcdata
             , @adccodigo := adccodigo
             , @rdcparcelas := rdcparcelas
             , tescodigo
          FROM trdc
          WHERE rdcchave = @ContaCard;


      IF ROW_COUNT() > 0 THEN
        SET @rdcChave = (SELECT LAST_INSERT_ID());

        INSERT INTO ltr (ltrchave
        , rdcchave
        , dtlchave)
          VALUES (0, @rdcChave, pDtlChave);


        IF IFNULL((SELECT cfgusaadc
              FROM cfg LIMIT 1), 0) = 2 THEN


          SET @ContaParcela = 1;
          SET @etdcodigo = (SELECT adc.etdcodigo
              FROM adc
            WHERE adccodigo = @adccodigo);
          SET @valorparcela = ROUND((@rdcvalor / @rdcparcelas), 2);
          SET @vlrdiferenca = (@rdcvalor - (ROUND((@rdcvalor / @rdcparcelas), 2) * @rdcparcelas));


          UPDATE terro
          SET Mensagem = 'Erro ao gerar parcelas de títulos para operadora de cartão'
          WHERE Chamada = pChamada;


          DELETE
            FROM trfi
          WHERE mdacodigo = pMdaCodigo;


          WHILE @ContaParcela <= @rdcparcelas DO

            INSERT INTO trfi (ID
            , etdcodigo
            , mdacodigo
            , tfdcodigo
            , numparc
            , dtvecto
            , vlrparcela
            , numero)
              VALUES (0, @etdcodigo, pMdaCodigo, 2, @ContaParcela, IF(pMdaCodigo = 4, DATE_ADD(CURRENT_DATE(), INTERVAL @ContaParcela MONTH), DATE_ADD(CURRENT_DATE(), INTERVAL 7 DAY)), IF(@ContaParcela < @rdcparcelas, @valorparcela, (@valorparcela + @vlrdiferenca)), CONCAT(@rdcnrauto, ' '));
            SET @ContaParcela = @ContaParcela + 1;

          END WHILE;


          UPDATE terro
          SET Mensagem = 'Erro ao registrar títulos para operadora de cartão'
          WHERE Chamada = pChamada;

          CALL RegistraTitulo(pFlaCodigo, pLteChave, pMdaCodigo, pChamada, @TitCodigo);

        END IF;

      END IF;
    END IF;

    SET @ContaCard = @ContaCard + 1;

  END WHILE;

  SET pConfirma = 0;
END
$$

DROP PROCEDURE IF EXISTS RegistraCCO;
CREATE DEFINER = 'root'@'%'
PROCEDURE RegistraCCO (IN pLteChave int
, IN pCtaCodigo int
, IN pClbCodigo int
, IN pCedCodigo int
, IN pHistorico varchar(100)
, IN pValor double(16, 2)
, IN pChamada int
, OUT pCcoChave int)
BEGIN

  CREATE TEMPORARY TABLE IF NOT EXISTS terro (
      Chamada  int(11)
    , Mensagem varchar(100)
    ) ENGINE = INNODB;


  DELETE
    FROM terro
  WHERE chamada = pChamada;


  INSERT INTO terro
    VALUES (pChamada, 'Erro ao registrar movimento de caixa');


  SET @clbcodigo = (SELECT clbcodigo
      FROM lte
    WHERE ltechave = pLteChave);
  SET @Conciliado = (SELECT IF(tctcodigo = 2, 0, 1)
      FROM cta
    WHERE ctacodigo = pCtaCodigo);


  INSERT INTO cco (ccochave
  , ctacodigo
  , toccodigo
  , cedcodigo
  , clbcodigo
  , tficodigo
  , moecodigo
  , ccoemissao
  , ccovencimento
  , ccohistorico
  , ccovalor
  , ccoconciliado
  , etdcodigo
  , ccofavorecido
  , ccodatamov
  , ccodataregistro
  , ccohoraregistro)
    VALUES (0, pCtaCodigo, 1, pCedCodigo, pClbCodigo, 9, 1, CURRENT_DATE(), CURRENT_DATE(), pHistorico, pValor, @Conciliado, 0, '', CURRENT_DATE(), CURRENT_DATE(), CURRENT_TIME());

  IF ROW_COUNT() > 0 THEN
    SET pCcoChave = (SELECT LAST_INSERT_ID());


    UPDATE terro
    SET mensagem = 'Erro ao vincular movimento de caixa ao lote'
    WHERE chamada = pChamada;


    INSERT INTO clt (cltchave
    , ccochave
    , ltechave)
      VALUES (0, pCcoChave, pLteChave);
  ELSE
    SET pCcoChave = 0;
  END IF;

END
$$

DROP PROCEDURE IF EXISTS RegistraCheque;
CREATE DEFINER = 'root'@'%'
PROCEDURE RegistraCheque (IN pDtlChave int
, IN pChamada int
, OUT pConfirma int)
BEGIN

  CREATE TEMPORARY TABLE IF NOT EXISTS terro (
      Chamada  int(11)
    , Mensagem varchar(100)
    ) ENGINE = INNODB;


  DELETE
    FROM terro
  WHERE chamada = pChamada;


  INSERT INTO terro
    VALUES (pChamada, 'Erro ao registrar cheques');


  SET @ContaCheque = 1;
  SET @QtdCheque = (SELECT COUNT(*)
      FROM tche);

  WHILE (@ContaCheque <= @QtdCheque) DO
    INSERT INTO che (chechave
    , cheemissao
    , chevencimento
    , chenumero
    , checonta
    , cheagencia
    , bcocodigo
    , chenome
    , chedocumento
    , chetelefone
    , chevalor
    , etdcodigo
    , tescodigo
    , tchcodigo)
      SELECT 0
           , cheemissao
           , chevencimento
           , chenumero
           , checonta
           , cheagencia
           , bcocodigo
           , chenome
           , chedocumento
           , chetelefone
           , chevalor
           , etdcodigo
           , tescodigo
           , tchcodigo
        FROM tche
        WHERE chechave = @ContaCheque;
    IF ROW_COUNT() > 0 THEN
      SET @CheChave = (SELECT LAST_INSERT_ID());

      INSERT INTO ltc (ltcchave
      , chechave
      , dtlchave
      , schcodigo
      , mdccodigo)
        VALUES (0, @CheChave, pDtlChave, 1, 0);

    END IF;

    SET @ContaCheque = @ContaCheque + 1;

  END WHILE;

  SET pConfirma = 0;

END
$$

DROP PROCEDURE IF EXISTS RegistraMes;
CREATE DEFINER = 'root'@'%'
PROCEDURE RegistraMes (IN pOrcChava int
, IN pClbCodigo int
, IN pChamada int
, OUT pConfirma int
, OUT pMensagem varchar(100)
, OUT pMesChave int)
BEGIN

  CREATE TEMPORARY TABLE IF NOT EXISTS terro (
      Chamada  int(11)
    , Mensagem varchar(100)
    ) ENGINE = INNODB;


  DELETE
    FROM terro
  WHERE chamada = pChamada;


  INSERT INTO terro
    VALUES (pChamada, 'Erro ao gravar cabeçalho venda');


  SET @cfgserienfce = (SELECT cfgserienfce
      FROM cfgmnfe LIMIT 1);


  SELECT edr.edritem
       , edr.ufscodigo
    FROM orc
    INNER JOIN edr ON orc.etdcodigo = edr.etdcodigo
      AND orc.edritem = edr.edritem
    WHERE orc.orcchave = pOrcChava
    INTO @edritem
       , @ufscodigo;


  SET @toecodigo = (SELECT IF(edr.ufscodigo = @ufscodigo, cfgmsai.cfgtoemesinte, cfgmsai.cfgtoemesfora)
      FROM cfg
      INNER JOIN cfgmcfg ON cfg.cfgcodigo = cfgmcfg.cfgcodigo
      INNER JOIN cfgmsai ON cfg.cfgcodigo = cfgmsai.cfgcodigo
      INNER JOIN edr ON cfgmcfg.cfgetdempresa = edr.etdcodigo
      AND edr.tedcodigo = 1
    LIMIT 1);

  INSERT INTO mes (meschave
  , etdcodigo
  , mesemissao
  , mesregistro
  , tdfcodigo
  , sdecodigo
  , messerie
  , mesnumero
  , toecodigo
  , mesvalor
  , mesdesconto
  , mesprodutos
  , messervicos
  , mestotal
  , tfpcodigo
  , refcodigo
  , trfcodigo
  , mesfrete
  , messeguro
  , mesoutras
  , mesbicm
  , mesicm
  , mesbicms
  , mesicms
  , mesipi
  , mespis
  , mescofins
  , mespiss
  , mescofinss
  , clbcodigo
  , trmcodigo
  , mesacrescimo
  , messped
  , temcodigo
  , edritem
  , tdecodigo
  , mesinclusao)
    (SELECT 0
          , orc.etdcodigo
          , CURRENT_DATE()
          , CURRENT_DATE()
          , '00'
          , '00'
          , @cfgserienfce
          , 0
          , @toecodigo
          , orc.orcgeralav
          , orc.orcdescontoav
          , orc.orctotalav
          , 0
          , orc.orctotalav
          , 0
          , 0
          , 0
          , 0
          , 0
          , 0
          , 0
          , 0
          , 0
          , 0
          , 0
          , 0
          , 0
          , 0
          , 0
          , pClbCodigo
          , orc.trmcodigo
          , 0
          , '0'
          , 1
          , @edritem
          , 1
          , NOW()
      FROM orc
      WHERE orc.orcchave = pOrcChava);


  IF ROW_COUNT() > 0 THEN
    SET pMesChave = (SELECT LAST_INSERT_ID());

    UPDATE terro
    SET mensagem = 'Erro ao vincular venda ao orçamento'
    WHERE chamada = pChamada;

    INSERT INTO mor (morchave
    , orcchave
    , meschave)
      VALUES (0, pOrcChava, pMesChave);

    UPDATE terro
    SET mensagem = 'Erro buscar paremetrizações de venda'
    WHERE chamada = pChamada;

    SET @item = 0;
    SET @cstcodigo = (SELECT cfgcsosn
        FROM cfgmnfe LIMIT 1);
    SET @cfocfop = (SELECT toecfopsaida
        FROM toe
      WHERE toecodigo = @toecodigo);
    SET @pcccodigo = (SELECT cfgpccvenda
        FROM cfgmspd LIMIT 1);

    UPDATE terro
    SET mensagem = 'Erro ao gravar itens da venda'
    WHERE chamada = pChamada;

    INSERT INTO itm (itmchave
    , meschave
    , itmitem
    , procodigo
    , cstcodigo
    , itmquantidade
    , itmvalor
    , itmdesconto
    , toecodigo
    , cfocfop
    , icmcodigo
    , csicodigo
    , cspcodigo
    , csfcodigo
    , pcccodigo
    , itmtotal
    , unicodigo
    , puncodigo
    , itmcontendo
    , cfocfopdestinacao
    , unicodigobase)
      (SELECT 0
            , pMesChave
            , @item = (@item + 1)
            , ito.procodigo
            , @cstcodigo
            , ito.itoquantidade
            , ito.itovalorav
            , ito.itodescontoav
            , @toecodigo
            , @cfocfop
            , '00'
            , '99'
            , '49'
            , '49'
            , @pcccodigo
            , ito.itototalav
            , ito.unicodigo
            , ito.puncodigo
            , ito.itocontendo
            , @cfocfop
            , (SELECT pun.unicodigobase
                  FROM pun
                WHERE pun.puncodigo = ito.puncodigo)
        FROM ito
        WHERE ito.orcchave = pOrcChava
          AND ito.stocodigo != 88);
  END IF;

  SET @disable_triggers = 1;

  UPDATE mes
  INNER JOIN (SELECT itm.meschave
                   , SUM(itm.itmtotal)    valor
                   , SUM(itm.itmdesconto) desconto
                   , SUM(itm.itmtotal)    total
      FROM itm
    GROUP BY itm.meschave) titm
    ON titm.meschave = mes.meschave
  SET mes.mesvalor = titm.valor
    , mes.mesdesconto = titm.desconto
    , mes.mestotal = titm.total
    , mes.mesprodutos = titm.total
  WHERE mes.meschave = pMesChave;

  SET @disable_triggers = NULL;

END
$$

DROP PROCEDURE IF EXISTS RegistraRefeicao;
CREATE DEFINER = 'root'@'%'
PROCEDURE RegistraRefeicao (IN pFlaCodigo int
, IN pOrcChava int
, IN pClbCodigo int
, IN pValor decimal(15, 3)
, IN pChamada int
, OUT pConfirma int
, OUT pMesChave int)
BEGIN
  CREATE TEMPORARY TABLE IF NOT EXISTS terro (
      Chamada  int(11)
    , Mensagem varchar(100)
    ) ENGINE = INNODB;

  DELETE
    FROM terro
  WHERE chamada = pChamada;
  INSERT INTO terro
    VALUES (pChamada, 'Erro ao gravar cabeçalho venda');

  SET @cfgserienfce = (SELECT cfgserienfce
      FROM cfgmnfe LIMIT 1);

  SET @procodigo = (SELECT cfgmgouprorefeicao
      FROM cfgmgou
      INNER JOIN cfg ON cfgmgou.cfgcodigo = cfg.cfgcodigo
    WHERE cfg.cfgcodigo = 1
    LIMIT 1);

  SELECT edr.edritem
       , edr.ufscodigo
    FROM orc
    INNER JOIN edr ON orc.etdcodigo = edr.etdcodigo
      AND orc.edritem = edr.edritem
    WHERE orc.orcchave = pOrcChava
    INTO @edritem
       , @ufscodigo;

  SET @toecodigo = (SELECT IF(edr.ufscodigo = @ufscodigo, cfgmsai.cfgtoemesinte, cfgmsai.cfgtoemesfora)
      FROM cfg
      INNER JOIN cfgmcfg ON cfg.cfgcodigo = cfgmcfg.cfgcodigo
      INNER JOIN cfgmsai ON cfg.cfgcodigo = cfgmsai.cfgcodigo
      INNER JOIN edr ON cfgmcfg.cfgetdempresa = edr.etdcodigo
      AND edr.tedcodigo = 1
    LIMIT 1);

  INSERT INTO mes (meschave
  , etdcodigo
  , mesemissao
  , mesregistro
  , tdfcodigo
  , sdecodigo
  , messerie
  , mesnumero
  , toecodigo
  , mesvalor
  , mesdesconto
  , mesprodutos
  , messervicos
  , mestotal
  , tfpcodigo
  , refcodigo
  , trfcodigo
  , mesfrete
  , messeguro
  , mesoutras
  , mesbicm
  , mesicm
  , mesbicms
  , mesicms
  , mesipi
  , mespis
  , mescofins
  , mespiss
  , mescofinss
  , clbcodigo
  , trmcodigo
  , mesacrescimo
  , messped
  , temcodigo
  , edritem
  , tdecodigo
  , mesinclusao
  , mesrefeicao)

    (SELECT 0
          , @etdcodigo := orc.etdcodigo
          , CURRENT_DATE()
          , CURRENT_DATE()
          , '00'
          , '00'
          , @cfgserienfce
          , 0
          , @toecodigo
          , pValor
          , 0
          , 0
          , 0
          , pValor
          , 0
          , 0
          , 0
          , 0
          , 0
          , 0
          , 0
          , 0
          , 0
          , 0
          , 0
          , 0
          , 0
          , 0
          , 0
          , pClbCodigo
          , orc.trmcodigo
          , 0
          , '0'
          , 1
          , @edritem
          , 1
          , NOW()
          , 1
      FROM orc
      WHERE orc.orcchave = pOrcChava);

  IF ROW_COUNT() > 0 THEN
    SET pMesChave = (SELECT LAST_INSERT_ID());
    UPDATE terro
    SET mensagem = 'Erro ao vincular venda ao orçamento'
    WHERE chamada = pChamada;


    INSERT INTO mor (morchave
    , orcchave
    , meschave)
      VALUES (0, pOrcChava, pMesChave);

    UPDATE terro
    SET mensagem = 'Erro buscar paremetrizações de venda'
    WHERE chamada = pChamada;

    SET @cstcodigo = (SELECT cfgcsosn
        FROM cfgmnfe LIMIT 1);
    SET @cfocfop = (SELECT toecfopsaida
        FROM toe
      WHERE toecodigo = @toecodigo);
    SET @pcccodigo = (SELECT cfgpccvenda
        FROM cfgmspd LIMIT 1);

    UPDATE terro
    SET mensagem = 'Erro ao gravar itens da venda'
    WHERE chamada = pChamada;

    SET @disable_triggers = 1;
    INSERT INTO itm (itmchave
    , meschave
    , itmitem
    , procodigo
    , cstcodigo
    , itmquantidade
    , itmvalor
    , itmdesconto
    , toecodigo
    , cfocfop
    , icmcodigo
    , csicodigo
    , cspcodigo
    , csfcodigo
    , pcccodigo
    , itmtotal
    , unicodigo
    , puncodigo
    , itmcontendo
    , cfocfopdestinacao
    , unicodigobase)
      (SELECT 0
            , pMesChave
            , 1
            , pro.procodigo
            , @cstcodigo
            , 1
            , pValor
            , 0
            , @toecodigo
            , @cfocfop
            , '00'
            , '99'
            , '49'
            , '49'
            , @pcccodigo
            , pValor
            , pro.unicodigo
            , pun.puncodigo
            , pun.punmultiplicador
            , @cfocfop
            , (SELECT p.unicodigobase
                  FROM pun p
                WHERE p.puncodigo = pun.puncodigo) unicodigobase
        FROM pro
        INNER JOIN pun ON pro.procodigo = pun.procodigo
          AND pro.unicodigo = pun.unicodigo
        WHERE pro.procodigo = @procodigo);

    SET @disable_triggers = NULL;

    UPDATE terro
    SET mensagem = 'Erro ao gravar lote da venda refeição'
    WHERE chamada = pChamada;

    INSERT INTO lte (ltechave
    , flacodigo
    , tfdcodigo
    , ltedata
    , lteprincipal
    , ltejuros
    , ltedesconto
    , ltetotal
    , lteextenso
    , ltehistorico
    , ltemulta
    , ltesituacao
    , clbcodigo
    , ctacodigo
    , lteregistro)
      VALUES (0, pFlaCodigo, 8, CURRENT_DATE(), pValor, 0, 0, pValor, '', '', 0, 0, pClbCodigo, NULL, NOW());

    IF ROW_COUNT() > 0 THEN
      SET @ltechave = (SELECT LAST_INSERT_ID());

      UPDATE terro
      SET mensagem = 'Erro ao gravar detalhes do recebimento da venda refeição'
      WHERE chamada = pChamada;

      INSERT INTO dtl (dtlchave
      , ltechave
      , cedcodigo
      , dtlvalor
      , mdacodigo)
        VALUE (0, @ltechave, 1, pValor, 1);

      IF ROW_COUNT() > 0 THEN
        UPDATE terro
        SET mensagem = 'Erro ao gravar registro financeiro da venda refeição'
        WHERE chamada = pChamada;

        DELETE
          FROM trfi;

        INSERT INTO trfi (ID
        , etdcodigo
        , mdacodigo
        , tfdcodigo
        , numparc
        , dtvecto
        , vlrparcela
        , numero)
          VALUES (0, @etdcodigo, 1, 32, 1, CURRENT_DATE(), pValor, pMesChave);
        CALL RegistraTitulo(pFlaCodigo, @ltechave, 1, pChamada, @TitCodigo);

        INSERT INTO rfm (rfmchave
        , rfichave
        , meschave)
          (SELECT DISTINCT 0
                         , rfichave
                         , pMesChave
            FROM rfi
            WHERE rfi.titcodigo = @TitCodigo);

      END IF;
    END IF;

  END IF;

END
$$

DROP PROCEDURE IF EXISTS RegistraTitulo;

CREATE DEFINER = 'root'@'%'
PROCEDURE RegistraTitulo (IN pFlaCodigo int
, IN pLteChave int
, IN pMdaCodigo int
, IN pChamada int
, OUT pTitCodigo int)
BEGIN

  CREATE TEMPORARY TABLE IF NOT EXISTS terro (
      Chamada  int(11)
    , Mensagem varchar(100)
    ) ENGINE = INNODB;
  DELETE
    FROM terro;


  DELETE
    FROM terro
  WHERE chamada = pChamada;


  INSERT INTO terro
    VALUES (pChamada, 'Erro ao incluir Titulo');


  SELECT etdcodigo
       , tfdcodigo
       , dtvecto
    FROM trfi
    ORDER BY dtvecto DESC LIMIT 1
    INTO @etdcodigo
       , @tfdcodigo
       , @dtvenctoInicial;


  SET @clbcodigo = (SELECT clbcodigo
      FROM lte
    WHERE ltechave = pLteChave);
  SET @vlrtitulo = (SELECT SUM(vlrparcela)
      FROM trfi
    WHERE mdacodigo = pMdaCodigo);
  SET @ContaParcela = (SELECT MIN(ID)
      FROM trfi
    WHERE mdacodigo = pMdaCodigo);
  SET @QtdParcela = (SELECT MAX(ID)
      FROM trfi
    WHERE mdacodigo = pMdaCodigo);
  SET @totparcela = (SELECT COUNT(*)
      FROM trfi
    WHERE mdacodigo = pMdaCodigo);
  SET @numparcela = 0;


  INSERT INTO tit (titcodigo
  , etdcodigo
  , tfdcodigo
  , flacodigo
  , tficodigo
  , bcocodigo
  , carcodigo
  , titemissao
  , tithora
  , clbcodigo
  , titparcelas
  , titvctoinicial
  , titnumero
  , titvalorparcela
  , titvalor
  , tithistorico
  , srfcodigo
  , moecodigo)
    VALUES (0, @etdcodigo, @tfdcodigo, pFlaCodigo, 9, '000', 1, CURRENT_DATE(), CURRENT_TIME(), @clbcodigo, @QtdParcela, @dtvenctoInicial, '', @vlrtitulo, @vlrtitulo, '', IF(@tfdcodigo = 32, 2, 0), 1);


  IF ROW_COUNT() > 0 THEN
    SET pTitCodigo = (SELECT LAST_INSERT_ID());


    UPDATE terro
    SET mensagem = 'Erro ao Gerar Parcelas'
    WHERE chamada = pChamada;


    WHILE (@ContaParcela <= @QtdParcela) DO
      IF pMdaCodigo = IFNULL((SELECT mdacodigo
            FROM trfi
          WHERE ID = @ContaParcela), 0) THEN
        SET @numparcela = @numparcela + 1;
        INSERT INTO rfi (rfichave
        , titcodigo
        , etdcodigo
        , tfdcodigo
        , flacodigo
        , tficodigo
        , bcocodigo
        , carcodigo
        , rfiemissao
        , rfivencimento
        , rfinumero
        , rfivalor
        , rfihistorico
        , srfcodigo
        , frrcodigo
        , rfivalorparcela
        , moecodigo)
          SELECT 0
               , pTitCodigo
               , trfi.etdcodigo
               , @tfdcodigo := trfi.tfdcodigo
               , pFlaCodigo
               , IF(trfi.tfdcodigo = 2, 10, 9)
               , '000'
               , 1
               , CURRENT_DATE()
               , trfi.dtvecto
               , CONCAT(IF(LENGTH(trfi.numero) > 0, CONCAT(trfi.numero, ' - '), ''), trfi.numparc, '/', @totparcela)
               , @vlrParcela := trfi.vlrparcela
               , CONCAT(IF(LENGTH(trfi.numero) > 0, CONCAT(trfi.numero, ' - '), CONCAT(pTitCodigo, ' - ')), trfi.numparc, '/', @totparcela)
               , IF(trfi.tfdcodigo = 2, 0, 2)
               , 999
               , trfi.vlrparcela
               , 1
            FROM trfi
            WHERE ID = @ContaParcela;


        IF ROW_COUNT() > 0 THEN
          SET @rficodigo = (SELECT LAST_INSERT_ID());


          UPDATE terro
          SET mensagem = 'Erro ao gerar movimento inicial da parcela'
          WHERE chamada = pChamada;


          INSERT INTO mfi (mfichave
          , rfichave
          , tmfcodigo
          , moecodigo
          , mfivalor
          , mfidata)
            VALUES (0, @rficodigo, 2, 1, @vlrParcela, CURRENT_DATE());


          IF ROW_COUNT() > 0 THEN
            SET @mfichave = (SELECT LAST_INSERT_ID());

            UPDATE terro
            SET mensagem = 'Erro ao gerar ligação entre movimento e parcela'
            WHERE chamada = pChamada;


            INSERT INTO mlt (mltchave
            , mfichave
            , ltechave)
              VALUES (0, @mfichave, pLteChave);
          END IF;


          IF @tfdcodigo = 32 THEN

            UPDATE terro
            SET mensagem = 'Erro ao gerar movimento de recebimento da parcela'
            WHERE chamada = pChamada;


            INSERT INTO mfi (mfichave
            , rfichave
            , tmfcodigo
            , moecodigo
            , mfivalor
            , mfidata)
              VALUES (0, @rficodigo, 21, 1, @vlrParcela, CURRENT_DATE());


            IF ROW_COUNT() > 0 THEN
              SET @mfichave = (SELECT LAST_INSERT_ID());

              UPDATE terro
              SET mensagem = 'Erro ao gerar ligação entre movimento e parcela'
              WHERE chamada = pChamada;


              INSERT INTO mlt (mltchave
              , mfichave
              , ltechave)
                VALUES (0, @mfichave, pLteChave);
            END IF;
          END IF;
        END IF;
      END IF;

      SET @ContaParcela = @ContaParcela + 1;
    END WHILE;

  END IF;
END
$$

DROP PROCEDURE IF EXISTS TransfereMesa;

CREATE DEFINER = 'root'@'%'
PROCEDURE TransfereMesa (IN pOrcChave int, OUT pConfirma int, OUT pMensagem varchar(255))
BEGIN
  DECLARE ErroException integer DEFAULT 0;
  DECLARE ErroMensagem integer DEFAULT 0;

  DECLARE CONTINUE HANDLER FOR SQLEXCEPTION BEGIN
    SET ErroException = 1;
    SET pConfirma = ErroException;

    ROLLBACK;
    SET pMensagem = (SELECT CASE
          WHEN ErroMensagem = 1 THEN 'Erro não identificado.'
          WHEN ErroMensagem = 2 THEN 'Não foi possível criar tabela temporária de controle.'
          WHEN ErroMensagem = 3 THEN 'Não foi possivel marcar mesas originais como transferidas.'
          WHEN ErroMensagem = 4 THEN 'Não foi possivel transferir item para a nova mesa.'
          WHEN ErroMensagem = 5 THEN 'Não foi possivel transferir grupo de ingredientes para nova mesas.'
          WHEN ErroMensagem = 6 THEN 'Não foi possivel transferir ingredientes para nova mesas.'
          WHEN ErroMensagem = 7 THEN 'Não foi possivel Atualizar valores da mesa de destino.'
          ELSE 'Erro inesperado.'
        END
        FROM dual);
  END;

  START TRANSACTION;

    DROP TEMPORARY TABLE IF EXISTS tmp;

    CREATE TEMPORARY TABLE tmp (
        secao int NOT NULL
      , id    int NOT NULL
      , chave int NOT NULL
      , PRIMARY KEY (secao, id)
      ) ENGINE = INNODB DEFAULT charset = latin1;

    SET ErroMensagem = 2;

    SET @qtd = (SELECT COUNT(*)
        FROM ttro);

    SET @posicao = 1;

    SET ErroMensagem = 3;

    WHILE (@posicao <= @qtd) DO
      SELECT orcchave
        FROM ttro
        WHERE ID = @posicao
        INTO @orcchave;


      UPDATE olt
      SET orcchave = pOrcChave
      WHERE orcchave = @orcchave;


      UPDATE unm
      SET unm.orcchave = pOrcChave
      WHERE orcchave = @orcchave;


      INSERT INTO tro (tro.trochave
      , tro.orcchaveorigem
      , tro.orcchavedestino)
        VALUES (0, @OrcChave, porcchave);

      SET ErroMensagem = 7;

      SET @totalitens = ROUND(IFNULL((SELECT SUM(itototalav)
          FROM ito
        WHERE ito.orcchave = @OrcChave
          AND stocodigo IN (1, 2, 5)), 0), 2);


      UPDATE orc
      SET orc.orcgeralav = @totalitens
        , orc.orcgeralap = @totalitens
        , orc.orctotalav = @totalitens
        , orc.orctotalap = @totalitens
      WHERE orc.orcchave = @OrcChave;

      SET ErroMensagem = 4;

      DELETE
        FROM tmp;

      SET @pos = 0;
      INSERT INTO tmp (secao, id, chave)
        (SELECT 1
              , @pos := (@pos + 1)
              , ito.itochave
          FROM ito
          WHERE orcchave = @orcchave
            AND stocodigo IN (1, 2, 5));

      IF (SELECT ROW_COUNT()) > 0 THEN
        SET @tmp1cont = 1;
        SET @tmp1qtde = (SELECT COUNT(*)
            FROM tmp
          WHERE secao = 1);

        WHILE (@tmp1cont <= @tmp1qtde) DO

          SELECT CHAVE
            FROM tmp
            WHERE ID = @tmp1cont
              AND secao = 1
            INTO @OLD_itochave;

          INSERT INTO ito (orcchave
          , procodigo
          , puncodigo
          , unicodigo
          , stocodigo
          , tdecodigo
          , itoquantidade
          , itovalorav
          , itodescontoav
          , itototalav
          , itosaldoav
          , itovalorap
          , itodescontoap
          , itototalap
          , itosaldoap
          , itocontendo
          , itoproservico
          , itoprocomple
          , itodataalter
          , itoitem
          , itogint
          , itopercdescap
          , itopercdescav
          , itoinfadprod
          , itoquanticondi
          , itoquantidevolcondi
          , vrpcodigo
          , itoobs)
            (SELECT pOrcChave
                  , procodigo
                  , puncodigo
                  , unicodigo
                  , 2
                  , tdecodigo
                  , itoquantidade
                  , itovalorav
                  , itodescontoav
                  , itototalav
                  , itosaldoav
                  , itovalorap
                  , itodescontoap
                  , itototalap
                  , itosaldoap
                  , itocontendo
                  , itoproservico
                  , itoprocomple
                  , itodataalter
                  , (SELECT COUNT(*) + 1
                        FROM ito
                      WHERE orcchave = pOrcChave)
                  , itogint
                  , itopercdescap
                  , itopercdescav
                  , itoinfadprod
                  , itoquanticondi
                  , itoquantidevolcondi
                  , vrpcodigo
                  , itoobs
              FROM ito
              WHERE itochave = @OLD_itochave);

          SET @itochave = (SELECT LAST_INSERT_ID());

          INSERT INTO imm (itochave
          , tcicodigo
          , immmodo
          , immhoraimprimir
          , immhoraimpresso
          , immhoraentrega
          , immrecebido
          , dorchave
          , immdestino
          , immtemporetardo
          , immmodoimpressao
          , immgarsom
          , trmcodigo
          , immhorapedido
          , immnumepedido
          , immidentificacao
          , immimpresso
          , immentregue
          , ccxchave
          , cznchave
          , etdcodigoent)
            (SELECT @itochave
                  , tcicodigo
                  , immmodo
                  , immhoraimprimir
                  , immhoraimpresso
                  , immhoraentrega
                  , immrecebido
                  , dorchave
                  , immdestino
                  , immtemporetardo
                  , immmodoimpressao
                  , immgarsom
                  , trmcodigo
                  , immhorapedido
                  , immnumepedido
                  , immidentificacao
                  , immimpresso
                  , immentregue
                  , ccxchave
                  , cznchave
                  , etdcodigoent
              FROM imm
              WHERE itochave = @OLD_itochave);

          SET ErroMensagem = 5;

          DELETE
            FROM tmp
          WHERE secao = 2;
          SET @pos = 0;
          INSERT INTO tmp (secao, id, chave)
            (SELECT 2
                  , @pos := (@pos + 1)
                  , sbi.sbichave
              FROM sbi
              WHERE sbi.itochave = @OLD_itochave);

          IF (SELECT ROW_COUNT()) > 0 THEN
            SET @tmp2cont = 1;
            SET @tmp2qtde = (SELECT COUNT(*)
                FROM tmp
              WHERE secao = 2);

            WHILE (@tmp2cont <= @tmp2qtde) DO

              SET ErroMensagem = 5;

              SELECT CHAVE
                FROM tmp
                WHERE ID = @tmp2cont
                  AND secao = 2
                INTO @OLD_sbichave;

              INSERT INTO sbi (itochave
              , sbrcodigo
              , sbiobs)
                (SELECT @itochave
                      , sbrcodigo
                      , sbiobs
                  FROM sbi
                  WHERE sbichave = @OLD_sbichave);

              IF (SELECT ROW_COUNT()) > 0 THEN
                SET @sbichave = (SELECT LAST_INSERT_ID());

                SET ErroMensagem = 6;

                INSERT INTO isi (sbichave
                , tsicodigo
                , procodigo
                , isitipo)
                  (SELECT @sbichave
                        , tsicodigo
                        , procodigo
                        , isitipo
                    FROM isi
                    WHERE sbichave = @OLD_sbichave);

              END IF;

              SET @tmp2cont = (@tmp2cont + 1);

            END WHILE;

          END IF;

          UPDATE orc
          SET stocodigo = 9
          WHERE orcchave = @orcchave;

          UPDATE ito
          SET stocodigo = 9
          WHERE orcchave = @orcchave
          AND stocodigo = 2;

          SET @tmp1cont = (@tmp1cont + 1);
        END WHILE;


      END IF;

      SET @posicao = (@posicao + 1);
    END WHILE;

    SET ErroMensagem = 7;

    SET @totalitens = ROUND(IFNULL((SELECT SUM(itototalav)
        FROM ito
      WHERE ito.orcchave = pOrcChave
        AND stocodigo IN (1, 2, 5)), 0), 2);

    UPDATE orc
    SET orc.orcgeralav = @totalitens
      , orc.orcgeralap = @totalitens
      , orc.orctotalav = @totalitens
      , orc.orctotalap = @totalitens
    WHERE orc.orcchave = pOrcChave;

    IF NOT ErroException THEN
    COMMIT;
    SET pConfirma = ErroException;
    SET pMensagem = 'Mesas transferidas com sucesso !';
  END IF;

END
$$

DELIMITER ;