SELECT DISTINCT
       mes.meschave
     , mes.mesregistro
     , mes.etdcodigo
     , etd.etdidentificacao
     , mes.mestotal
     , mda.mdaidentificacao
     , dtl.dtlvalor
  FROM orc 
 INNER JOIN ito ON orc.orcchave = ito.orcchave
 INNER JOIN imm ON ito.itochave = imm.itochave
 INNER JOIN mor ON orc.orcchave = mor.orcchave
 INNER JOIN mes ON mor.meschave = mes.meschave
 INNER JOIN etd ON mes.etdcodigo = etd.etdcodigo
 INNER JOIN rfm ON mes.meschave = rfm.meschave
 INNER JOIN mfi on rfm.rfichave = mfi.rfichave
 INNER JOIN mlt ON mfi.mfichave = mlt.mfichave
 INNER JOIN dtl on mlt.ltechave = dtl.ltechave
 INNER JOIN mda ON dtl.mdacodigo = mda.mdacodigo
 WHERE orc.moccodigo = 7
   AND imm.cznchave  = (SELECT cznchave FROM czn WHERE cznfechamento IS NULL LIMIT 1);
