
DELIMITER $$


DROP PROCEDURE IF EXISTS danielsalao.RegistraTituloVenda$$

CREATE DEFINER = 'root'@'%'
PROCEDURE danielsalao.RegistraTituloVenda (IN pFlaCodigo int
, IN pLteChave int
, IN pMdaCodigo int
, IN pChamada int
, OUT pTitCodigo int)
BEGIN

  CREATE TEMPORARY TABLE IF NOT EXISTS terro (
    Chamada int(11),
    Mensagem varchar(65000)
  ) ENGINE = INNODB;
  DELETE
    FROM terro;


  DELETE
    FROM terro
  WHERE Chamada = pChamada;


  INSERT INTO terro
    VALUES (pChamada, 'Erro ao incluir Titulo');


  SELECT
    etdcodigo,
    tfdcodigo,
    dtvecto
  FROM trfi
  ORDER BY dtvecto DESC LIMIT 1 INTO @etdcodigo
  , @tfdcodigo
  , @dtvenctoInicial;

  SET @clbcodigo = (SELECT
      clbcodigo
    FROM lte
    WHERE ltechave = pLteChave);


  SET @rdcnrauto = IFNULL((SELECT
      rdc.rdcnrauto
    FROM lte,
         dtl,
         ltr,
         rdc
    WHERE dtl.dtlchave = ltr.dtlchave
    AND lte.ltechave = dtl.ltechave
    AND ltr.rdcchave = rdc.rdcchave
    AND dtl.mdacodigo = pMdaCodigo
    AND lte.ltechave = pLteChave), '');


  SET @vlrtitulo = (SELECT
      SUM(vlrparcela)
    FROM trfi
    WHERE mdacodigo = pMdaCodigo);
  SET @ContaParcela = (SELECT
      MIN(ID)
    FROM trfi
    WHERE mdacodigo = pMdaCodigo);
  SET @QtdParcela = (SELECT
      MAX(ID)
    FROM trfi
    WHERE mdacodigo = pMdaCodigo);
  SET @totparcela = (SELECT
      COUNT(*)
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
    VALUES (@novachave, @etdcodigo, @tfdcodigo, pFlaCodigo, 9, '000', 1, CURRENT_DATE(), CURRENT_TIME(), @clbcodigo, @QtdParcela, @dtvenctoInicial, '', @vlrtitulo, @vlrtitulo, '', IF(@tfdcodigo = 32, 2, 0), 1);


  IF ROW_COUNT() > 0 THEN
    SET pTitCodigo = (SELECT
        LAST_INSERT_ID());


    UPDATE terro
    SET Mensagem = 'Erro ao Gerar Parcelas'
    WHERE Chamada = pChamada;


    WHILE (@ContaParcela <= @QtdParcela) DO
      IF pMdaCodigo = IFNULL((SELECT
            mdacodigo
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
        , moecodigo
        , rdcnrauto)
          SELECT
            @novachave,
            pTitCodigo,
            trfi.etdcodigo,
            @tfdcodigo := trfi.tfdcodigo,
            pFlaCodigo,
            IF(trfi.tfdcodigo = 2, 10, 9),
            '000',
            1,
            CURRENT_DATE(),
            trfi.dtvecto,
            CONCAT(IF(LENGTH(trfi.numero) > 0, CONCAT(trfi.numero, ' - '), ''), trfi.numparc, '/', @totparcela),
            @vlrParcela := trfi.vlrparcela,
            CONCAT(IF(LENGTH(trfi.numero) > 0, CONCAT(trfi.numero, ' - '), CONCAT(pTitCodigo, ' - ')), trfi.numparc, '/', @totparcela),
            IF(trfi.tfdcodigo = 2, 0, 2),
            999,
            trfi.vlrparcela,
            1,
            @rdcnrauto
          FROM trfi
          WHERE ID = @ContaParcela;


        IF ROW_COUNT() > 0 THEN
          SET @rficodigo = (SELECT
              LAST_INSERT_ID());


          UPDATE terro
          SET Mensagem = 'Erro ao gerar movimento inicial da parcela'
          WHERE Chamada = pChamada;


          INSERT INTO mfi (mfichave
          , rfichave
          , tmfcodigo
          , moecodigo
          , mfivalor
          , mfidata)
            VALUES (@novachave, @rficodigo, 2, 1, @vlrParcela, CURRENT_DATE());


          IF ROW_COUNT() > 0 THEN
            SET @mfichave = (SELECT
                LAST_INSERT_ID());

            UPDATE terro
            SET Mensagem = 'Erro ao gerar ligacao entre movimento e parcela'
            WHERE Chamada = pChamada;


            INSERT INTO mlt (mltchave
            , mfichave
            , ltechave)
              VALUES (@novachave, @mfichave, pLteChave);

          END IF;


          IF @tfdcodigo = 32 THEN

            UPDATE terro
            SET Mensagem = 'Erro ao gerar movimento de recebimento da parcela'
            WHERE Chamada = pChamada;


            INSERT INTO mfi (mfichave
            , rfichave
            , tmfcodigo
            , moecodigo
            , mfivalor
            , mfidata)
              VALUES (@novachave, @rficodigo, 21, 1, @vlrParcela, CURRENT_DATE());



            IF ROW_COUNT() > 0 THEN
              SET @mfichave = (SELECT
                  LAST_INSERT_ID());

              UPDATE terro
              SET Mensagem = 'Erro ao gerar ligacao entre movimento e parcela'
              WHERE Chamada = pChamada;


              INSERT INTO mlt (mltchave
              , mfichave
              , ltechave)
                VALUES (@novachave, @mfichave, pLteChave);
            END IF;
          END IF;
        END IF;
      END IF;

      SET @ContaParcela = @ContaParcela + 1;
    END WHILE;

  END IF;
END
$$

DELIMITER ;