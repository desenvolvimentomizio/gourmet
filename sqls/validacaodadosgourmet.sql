SET @titcodigo=(SELECT titcodigo FROM tit ORDER BY titcodigo DESC LIMIT 1);
SELECT @titcodigo as titulo;
SET @valorvenda= (SELECT titvalor FROM tit ORDER BY titcodigo DESC LIMIT 1);
SELECT @valorvenda as valor;

SET @ltechave=(SELECT ltechave FROM lte WHERE ltetotal=@valorvenda AND tfdcodigo=32 ORDER BY ltechave DESC LIMIT 1);
SELECT @ltechave as lote;


SELECT * from tit WHERE titcodigo=@titcodigo AND tfdcodigo=32 AND srfcodigo=2 AND titvalor=@valorvenda;
SELECT * from rfi WHERE titcodigo=@titcodigo AND tfdcodigo=32 AND srfcodigo=2 AND rfivalor=@valorvenda;
SELECT * from mfi WHERE rfichave IN (SELECT rfichave FROM rfi where  titcodigo=@titcodigo AND tfdcodigo=32 AND srfcodigo=2 AND rfivalor=@valorvenda);
SET @mfichave=(SELECT mfichave from mfi WHERE  tmfcodigo=21 and rfichave IN (SELECT rfichave FROM rfi where  titcodigo=@titcodigo AND tfdcodigo=32 AND srfcodigo=2 AND rfivalor=@valorvenda));
SELECT * FROM mlt WHERE mfichave=@mfichave ;

