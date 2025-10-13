DELIMITER $$
DROP PROCEDURE danielsalao.FechaMesa$$

CREATE DEFINER = 'root'@'%'
PROCEDURE danielsalao.FechaMesa (IN pOrcChave int
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
, IN pTipoTaxa int
, IN pTaxa double(16, 02)
, IN pTipoFechamento int
, OUT pConfirma int
, OUT pMensagem varchar(65000)
, OUT pMesChave int
, OUT pLteChave int)
BEGIN


  DECLARE ErroException integer DEFAULT 0;
  DECLARE ErroMensagem integer DEFAULT 0;
  DECLARE lote integer DEFAULT 0;
  DECLARE modalidade integer DEFAULT 0;
  DECLARE done int DEFAULT FALSE;


  DECLARE curlote CURSOR FOR
  SELECT
    dtl.ltechave,
    dtl.mdacodigo
  FROM dtl
    INNER JOIN olt
      ON dtl.ltechave = olt.ltechave
  WHERE olt.orcchave = pOrcChave
  AND dtl.mdacodigo != 7;
  DECLARE CONTINUE HANDLER FOR NOT FOUND BEGIN
    SET done = TRUE;
  END;


  SET @Confirma = 0;

  SET @ltechave = 0;

  SET @Mensagem = 0;


  CALL ProcessaLote(pFlaCodigo, 32, pClbCodigo, pCtaCodigo, pLtePrincipal, pLteJuros, pLteDesconto, pLteMulta, pLteTroco, pTipoTaxa, pTaxa, @Confirma, @ltechave, @Mensagem);



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

    SET ErroMensagem = 13;

    INSERT INTO olt (oltchave
    , orcchave
    , ltechave
    , oltidentificacao
    , olttipo)
      VALUE (@novachave, pOrcChave, @ltechave, pNome, pTipoFechamento);

    SET @LteDesconto = IFNULL((SELECT
        SUM(lte.ltedesconto)
      FROM olt
        INNER JOIN lte
          ON olt.ltechave = lte.ltechave
      WHERE olt.orcchave = pOrcChave), 0);



    SET @OrcTotalAv = (SELECT
        SUM(itovalorav * itoquantidade) totav
      FROM ito,
           pro
      WHERE ito.procodigo = pro.procodigo
      AND ito.stocodigo <> 88
      AND pro.tpocodigo = 0
      AND orcchave = pOrcChave);


    IF @LteDesconto > 0 THEN


      SET @percdesc = (@LteDesconto / @OrcTotalAv);


      UPDATE ito, pro
      SET itodescontoav = ROUND(((itototalav + itoacrescimoav + itooutras) * @percdesc), 2),
          itosaldoav = (ito.itototalav - itodescontoav),
          itodescontoap = ROUND((itototalap * @percdesc), 2),
          itosaldoap = (ito.itototalav - itodescontoav),
          itopercdescap = ROUND(@percdesc, 3),
          itopercdescav = ROUND(@percdesc, 3)
      WHERE ito.stocodigo <> 88
      AND ito.procodigo = pro.procodigo
      AND pro.tpocodigo = 0
      AND ito.orcchave = pOrcChave;


      SET @centavos = @LteDesconto - (SELECT
          SUM(itodescontoav)
        FROM ito,
             pro
        WHERE ito.orcchave = pOrcChave
        AND ito.procodigo = pro.procodigo
        AND pro.tpocodigo = 0);




      IF @centavos <> 0 THEN

        UPDATE ito, pro
        SET itodescontoav = itodescontoav + @centavos,
            itodescontoap = itodescontoap + @centavos,
            itosaldoav = itosaldoav + @centavos,
            itosaldoap = itosaldoap + @centavos
        WHERE ito.stocodigo <> 88
        AND ito.procodigo = pro.procodigo
        AND pro.tpocodigo = 0
        AND ito.orcchave = pOrcChave;

      END IF;



      UPDATE orc
      INNER JOIN (SELECT
          ito.orcchave,
          SUM(itototalav) totav,
          SUM(itodescontoav) descav,
          SUM(itototalap) totap,
          SUM(itodescontoap) descap
        FROM ito
        WHERE stocodigo != 88
        GROUP BY ito.orcchave) tito
        ON tito.orcchave = orc.orcchave
      SET orc.orcgeralav = tito.totav,


          orc.orctotalav = (tito.totav - tito.descav),

          orc.orcdescontoav = tito.descap,
          orc.orcpercdescav = IF(tito.descap > 0, (tito.descap / tito.totap), 0),
          orc.orctotalap = (tito.totap - tito.descap)
      WHERE orc.orcchave = pOrcChave;

    END IF;


    SET ErroMensagem = 12;

    CALL RegistraMes(pOrcChave, pClbCodigo, ErroMensagem, pConfirma, pMensagem, @meschave);

    SET ErroMensagem = 14;

    SET @VlrFechamento = (SELECT
        SUM(dtl.dtlvalor) dtlvalor
      FROM dtl
        INNER JOIN olt
          ON dtl.ltechave = olt.ltechave
      WHERE olt.orcchave = pOrcChave
      AND dtl.mdacodigo != 7);

  -- inicio da geração do registro financeiro de venda


   IF @VlrFechamento > 0 THEN

      SET @etdcodigo = (SELECT
          etdcodigo
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
          VALUES (@novachave, @etdcodigo, 1, 32, 1, CURRENT_DATE(), @VlrFechamento, @meschave);

          SET ErroMensagem = 16;

          CALL RegistraTituloVenda(pFlaCodigo, @ltechave, 1, ErroMensagem, @TitCodigo);

          SET ErroMensagem = 17;

      DELETE FROM trfi;

    END IF;

       

  -- final do registro financeiro de venda




    IF @VlrFechamento > 0 THEN

      SET @etdcodigo = (SELECT
          etdcodigo
        FROM orc
        WHERE orc.orcchave = pOrcChave);

      SET ErroMensagem = 15;

      OPEN curlote;
      read_loop:
        LOOP

          FETCH curlote INTO lote, modalidade;

          IF done THEN
            LEAVE read_loop;
          END IF;


          SET @VlrFechamento = (SELECT
            SUM(dtl.dtlvalor) dtlvalor
          FROM dtl
            INNER JOIN olt
              ON dtl.ltechave = olt.ltechave
          WHERE olt.orcchave = pOrcChave
          AND dtl.ltechave = lote
          AND dtl.mdacodigo = modalidade
          AND dtl.mdacodigo != 7);
  
          DELETE
          FROM trfi
        WHERE mdacodigo <> modalidade;

          INSERT INTO trfi (ID
        , etdcodigo
        , mdacodigo
        , tfdcodigo
        , numparc
        , dtvecto
        , vlrparcela
        , numero)
          VALUES (@novachave, @etdcodigo, 1, 32, 1, CURRENT_DATE(), @VlrFechamento, @meschave);

          SET ErroMensagem = 16;

          CALL RegistraTitulo(pFlaCodigo, lote, 1, ErroMensagem, @TitCodigo);

          SET ErroMensagem = 17;

        END LOOP;
  
      CLOSE curlote;

    END IF;



    INSERT INTO rfm (rfichave
    , meschave)

      (SELECT DISTINCT

        rfichave,
        @MesChave
      FROM olt
        INNER JOIN mlt
          ON olt.ltechave = mlt.ltechave
        INNER JOIN mfi
          ON mlt.mfichave = mfi.mfichave
      WHERE olt.orcchave = pOrcChave);




    SET ErroMensagem = 18;



    UPDATE orc
    INNER JOIN (SELECT
        ito.orcchave,
        SUM(itototalav) totav,
        SUM(itodescontoav) descav,
        SUM(itototalap) totap,
        SUM(itodescontoap) descap
      FROM ito
      WHERE stocodigo != 88
      GROUP BY ito.orcchave) tito
      ON tito.orcchave = orc.orcchave
    SET orc.orcgeralav = tito.totav,


        orc.orctotalav = (tito.totav - tito.descav),



        orc.orctotalap = (tito.totap - tito.descap),
        orc.orcdataencerr = CURRENT_DATE(),
        orc.orchoraencerr = CURRENT_TIME(),
        orc.stocodigo = 3
    WHERE orc.orcchave = pOrcChave;



    UPDATE ito
    SET ito.stocodigo = 3
    WHERE ito.orcchave = pOrcChave
    AND ito.stocodigo IN (1, 2, 5);


  END IF;


  IF pRefeicao > 0 THEN
    
    SET ErroMensagem = 18;

    SET @valor := (pLtePrincipal + pLteJuros + pLteMulta + pTaxa) - pLteDesconto;

    CALL RegistraRefeicao(pFlaCodigo, 0, pOrcChave, pClbCodigo, @valor, pLteChave, ErroMensagem, @Confirma, @meschave);

  END IF;


  IF @meschave > 0 THEN
    SET pMesChave = @meschave;
  ELSE
    SET pMesChave = 0;
  END IF;

  SET pConfirma = ErroException;
  SET pMensagem = 'Movimento gravado com sucesso !';

END$$