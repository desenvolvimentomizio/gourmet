-- Senha para o telefone
ALTER TABLE etf ADD COLUMN etfsenha VARCHAR(20);

-- Quantidade de pontos de fidelidade disponível para o telefone
ALTER TABLE etf ADD COLUMN etfpontuacao INT(15);

-- Quantidade de pontos de fidelidade adquiridos ao comprar o produto
ALTER TABLE pro ADD COLUMN rcspontuacao INT(15);

-- Resgatar recompensas do programa de fidelidade
CREATE TABLE IF NOT EXISTS rcs (
rcscodigo INT(15) PRIMARY KEY AUTO_INCREMENT,
rcsnome VARCHAR(100),
rcsdescricao VARCHAR(1000),
rcspontuacao INT(11),
rcsdispentrega INT(1),
rcsquantidadedisp INT(11),
rcsdatainicial DATE,
rcsdatafinal DATE,
imgcodigo INT(15),
CONSTRAINT rcs_img FOREIGN KEY (imgcodigo) REFERENCES img (imgcodigo));

-- Compras de recompensa por telefone
CREATE TABLE IF NOT EXISTS crc (
crccodigo INT(15) PRIMARY KEY AUTO_INCREMENT,
crcdatacompra DATETIME,
crcpontuacaocompra INT(15),
etfcodigo INT(15),
rcscodigo INT(15),
moccodigo INT(15),
CONSTRAINT crc_etf FOREIGN KEY (etfcodigo) REFERENCES etf (etfcodigo),
CONSTRAINT crc_rcs FOREIGN KEY (rcscodigo) REFERENCES rcs (rcscodigo),
CONSTRAINT crc_moc FOREIGN KEY (moccodigo) REFERENCES moc (moccodigo));

-- Horário de atendimento
CREATE TABLE IF NOT EXISTS atd (
atdcodigo INT(11) PRIMARY KEY AUTO_INCREMENT,
atddiasemana VARCHAR(20),
atdhoraabertura TIME,
atdhorafechamento TIME);

INSERT INTO atd VALUES (1, 'Domingo', '17:00:00', '23:20:00');
INSERT INTO atd VALUES (2, 'Segunda', '17:00:00', '23:20:00');
INSERT INTO atd VALUES (3, 'Terça', '17:00:00', '23:20:00');
INSERT INTO atd VALUES (4, 'Quarta', '17:00:00', '23:20:00');
INSERT INTO atd VALUES (5, 'Quinta', '17:00:00', '23:20:00');
INSERT INTO atd VALUES (6, 'Sexta', '15:00:00', '23:20:00');
INSERT INTO atd VALUES (7, 'Sábado', '17:00:00', '23:20:00');

-- Slogan
ALTER TABLE cfgmgou ADD COLUMN cfgmgouslogan VARCHAR(500);

-- Mídias sociais
CREATE TABLE IF NOT EXISTS mid (
midcodigo INT(11) PRIMARY KEY AUTO_INCREMENT,
mididentificacao VARCHAR(100),
midurl VARCHAR(500),
imgcodigo INT(15),
CONSTRAINT mid_img FOREIGN KEY (imgcodigo) REFERENCES img (imgcodigo));

INSERT INTO stg (stgdatacriacao, stgdataalteracao, clbcodigo, stgexcluido) VALUES ('2019-01-01 00:00:00', '2019-01-01 00:00:00', 1, 0);
INSERT INTO img (imgurllocal, imgextensao, imgidentificacao, imgurlexterna, stgcodigo, sipcodigo, jsncodigo) VALUES ('https://i.imgur.com/VBXZPXv.png', 'png', 'VBXZPXv', 'https://i.imgur.com/VBXZPXv.png', (SELECT MAX(stgcodigo) FROM stg), 1, null);
INSERT INTO mid VALUES (1, 'Facebook', 'https://pt-br.facebook.com/kuskaosorriso/', (SELECT MAX(imgcodigo) FROM img));
INSERT INTO stg (stgdatacriacao, stgdataalteracao, clbcodigo, stgexcluido) VALUES ('2019-01-01 00:00:00', '2019-01-01 00:00:00', 1, 0);
INSERT INTO img (imgurllocal, imgextensao, imgidentificacao, imgurlexterna, stgcodigo, sipcodigo, jsncodigo) VALUES ('https://i.imgur.com/Ns4hrnv.png', 'png', 'Ns4hrnv', 'https://i.imgur.com/Ns4hrnv.png', (SELECT MAX(stgcodigo) FROM stg), 1, null);
INSERT INTO mid VALUES (2, 'Instagram', 'https://www.instagram.com/kuskao/', (SELECT MAX(imgcodigo) FROM img));
INSERT INTO stg (stgdatacriacao, stgdataalteracao, clbcodigo, stgexcluido) VALUES ('2019-01-01 00:00:00', '2019-01-01 00:00:00', 1, 0);
INSERT INTO img (imgurllocal, imgextensao, imgidentificacao, imgurlexterna, stgcodigo, sipcodigo, jsncodigo) VALUES ('https://i.imgur.com/zAoO9QN.png', 'png', 'zAoO9QN', 'https://i.imgur.com/zAoO9QN.png', (SELECT MAX(stgcodigo) FROM stg), 1, null);
INSERT INTO mid VALUES (3, 'Youtube', '#', (SELECT MAX(imgcodigo) FROM img));
INSERT INTO stg (stgdatacriacao, stgdataalteracao, clbcodigo, stgexcluido) VALUES ('2019-01-01 00:00:00', '2019-01-01 00:00:00', 1, 0);
INSERT INTO img (imgurllocal, imgextensao, imgidentificacao, imgurlexterna, stgcodigo, sipcodigo, jsncodigo) VALUES ('https://i.imgur.com/MkOBndc.png', 'png', 'MkOBndc', 'https://i.imgur.com/MkOBndc.png', (SELECT MAX(stgcodigo) FROM stg), 1, null);
INSERT INTO mid VALUES (4, 'Google PlayStore', '#', (SELECT MAX(imgcodigo) FROM img));

-- Formas de pagamento
ALTER TABLE fpg MODIFY fpgcodigo INT(11) AUTO_INCREMENT;

INSERT INTO stg (stgdatacriacao, stgdataalteracao, clbcodigo, stgexcluido) VALUES ('2019-01-01 00:00:00', '2019-01-01 00:00:00', 1, 0);
INSERT INTO img (imgurllocal, imgextensao, imgidentificacao, imgurlexterna, stgcodigo, sipcodigo, jsncodigo) VALUES ('https://i.imgur.com/tlftytM.png', 'png', 'tlftytM', 'https://i.imgur.com/tlftytM.png', (SELECT MAX(stgcodigo) FROM stg), 1, null);
INSERT INTO stg (stgdatacriacao, stgdataalteracao, clbcodigo, stgexcluido) VALUES ('2019-01-01 00:00:00', '2019-01-01 00:00:00', 1, 0);
INSERT INTO fpg (fpgidentificacao, imgcodigo, stgcodigo) VALUES ('American Express', (SELECT MAX(imgcodigo) FROM img), (SELECT MAX(stgcodigo) FROM stg));

INSERT INTO stg (stgdatacriacao, stgdataalteracao, clbcodigo, stgexcluido) VALUES ('2019-01-01 00:00:00', '2019-01-01 00:00:00', 1, 0);
INSERT INTO img (imgurllocal, imgextensao, imgidentificacao, imgurlexterna, stgcodigo, sipcodigo, jsncodigo) VALUES ('https://i.imgur.com/bUxPfJM.png', 'png', 'bUxPfJM', 'https://i.imgur.com/bUxPfJM.png', (SELECT MAX(stgcodigo) FROM stg), 1, null);
INSERT INTO stg (stgdatacriacao, stgdataalteracao, clbcodigo, stgexcluido) VALUES ('2019-01-01 00:00:00', '2019-01-01 00:00:00', 1, 0);
INSERT INTO fpg (fpgidentificacao, imgcodigo, stgcodigo) VALUES ('Elo', (SELECT MAX(imgcodigo) FROM img), (SELECT MAX(stgcodigo) FROM stg));

INSERT INTO stg (stgdatacriacao, stgdataalteracao, clbcodigo, stgexcluido) VALUES ('2019-01-01 00:00:00', '2019-01-01 00:00:00', 1, 0);
INSERT INTO img (imgurllocal, imgextensao, imgidentificacao, imgurlexterna, stgcodigo, sipcodigo, jsncodigo) VALUES ('https://i.imgur.com/tu5FQjF.png', 'png', 'tu5FQjF', 'https://i.imgur.com/tu5FQjF.png', (SELECT MAX(stgcodigo) FROM stg), 1, null);
INSERT INTO stg (stgdatacriacao, stgdataalteracao, clbcodigo, stgexcluido) VALUES ('2019-01-01 00:00:00', '2019-01-01 00:00:00', 1, 0);
INSERT INTO fpg (fpgidentificacao, imgcodigo, stgcodigo) VALUES ('Master Card', (SELECT MAX(imgcodigo) FROM img), (SELECT MAX(stgcodigo) FROM stg));

INSERT INTO stg (stgdatacriacao, stgdataalteracao, clbcodigo, stgexcluido) VALUES ('2019-01-01 00:00:00', '2019-01-01 00:00:00', 1, 0);
INSERT INTO img (imgurllocal, imgextensao, imgidentificacao, imgurlexterna, stgcodigo, sipcodigo, jsncodigo) VALUES ('https://i.imgur.com/G3VVpZw.png', 'png', 'G3VVpZw', 'https://i.imgur.com/G3VVpZw.png', (SELECT MAX(stgcodigo) FROM stg), 1, null);
INSERT INTO stg (stgdatacriacao, stgdataalteracao, clbcodigo, stgexcluido) VALUES ('2019-01-01 00:00:00', '2019-01-01 00:00:00', 1, 0);
INSERT INTO fpg (fpgidentificacao, imgcodigo, stgcodigo) VALUES ('Visa', (SELECT MAX(imgcodigo) FROM img), (SELECT MAX(stgcodigo) FROM stg));

-- Destaques
CREATE TABLE IF NOT EXISTS dtq (
dtqcodigo INT(15) PRIMARY KEY AUTO_INCREMENT,
dtqtitulo VARCHAR(100),
dtqdescricao VARCHAR(200),
dtqbusca VARCHAR(100),
dtqordem INT(11) DEFAULT 100,
imgcodigo INT(15),
CONSTRAINT dtq_img FOREIGN KEY (imgcodigo) REFERENCES img (imgcodigo));

-- Avaliação dos produtos do pedido
INSERT INTO pds VALUES (6, 'AVALIADO');

-- Imagens das opções
UPDATE img SET imgurllocal = 'https://i.imgur.com/BVdvLpe.png', imgextensao = 'png', imgidentificacao = 'BVdvLpe', imgurlexterna = 'https://i.imgur.com/BVdvLpe.png' WHERE imgcodigo = 1;
INSERT INTO stg (stgdatacriacao, stgdataalteracao, clbcodigo, stgexcluido) VALUES ('2019-01-01 00:00:00', '2019-01-01 00:00:00', 1, 0);
INSERT INTO img (imgurllocal, imgextensao, imgidentificacao, imgurlexterna, stgcodigo, sipcodigo, jsncodigo) VALUES ('https://i.imgur.com/mjZywBU.png', 'png', 'mjZywBU', 'https://i.imgur.com/mjZywBU.png', (SELECT MAX(stgcodigo) FROM stg), 1, null);
UPDATE opc SET imgcodigo = (SELECT MAX(imgcodigo) FROM img) WHERE opccodigo = 1;
INSERT INTO stg (stgdatacriacao, stgdataalteracao, clbcodigo, stgexcluido) VALUES ('2019-01-01 00:00:00', '2019-01-01 00:00:00', 1, 0);
INSERT INTO img (imgurllocal, imgextensao, imgidentificacao, imgurlexterna, stgcodigo, sipcodigo, jsncodigo) VALUES ('https://i.imgur.com/AHM4VsA.png', 'png', 'AHM4VsA', 'https://i.imgur.com/AHM4VsA.png', (SELECT MAX(stgcodigo) FROM stg), 1, null);
UPDATE opc SET imgcodigo = (SELECT MAX(imgcodigo) FROM img) WHERE opccodigo = 2;
INSERT INTO stg (stgdatacriacao, stgdataalteracao, clbcodigo, stgexcluido) VALUES ('2019-01-01 00:00:00', '2019-01-01 00:00:00', 1, 0);
INSERT INTO img (imgurllocal, imgextensao, imgidentificacao, imgurlexterna, stgcodigo, sipcodigo, jsncodigo) VALUES ('https://i.imgur.com/Fv4XaUp.png', 'png', 'Fv4XaUp', 'https://i.imgur.com/Fv4XaUp.png', (SELECT MAX(stgcodigo) FROM stg), 1, null);
UPDATE opc SET imgcodigo = (SELECT MAX(imgcodigo) FROM img) WHERE opccodigo = 3;
INSERT INTO stg (stgdatacriacao, stgdataalteracao, clbcodigo, stgexcluido) VALUES ('2019-01-01 00:00:00', '2019-01-01 00:00:00', 1, 0);
INSERT INTO img (imgurllocal, imgextensao, imgidentificacao, imgurlexterna, stgcodigo, sipcodigo, jsncodigo) VALUES ('https://i.imgur.com/Y0r8Ezr.png', 'png', 'Y0r8Ezr', 'https://i.imgur.com/Y0r8Ezr.png', (SELECT MAX(stgcodigo) FROM stg), 1, null);
UPDATE opc SET imgcodigo = (SELECT MAX(imgcodigo) FROM img) WHERE opccodigo = 4;