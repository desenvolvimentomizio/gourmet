-- Banco Pégasus Localização

-- Organização
CREATE TABLE IF NOT EXISTS org (
orgcodigo INT(15) PRIMARY KEY AUTO_INCREMENT,
orgidentificacao VARCHAR(100),
orgcnpj VARCHAR(14));

-- Usuário
CREATE TABLE IF NOT EXISTS usu (
usucodigo INT(15) PRIMARY KEY AUTO_INCREMENT,
usulogin VARCHAR(50),
ususenha VARCHAR(20),
orgcodigo INT(15),
CONSTRAINT usu_org FOREIGN KEY (orgcodigo) REFERENCES org (orgcodigo));

-- Telefone
CREATE TABLE IF NOT EXISTS tel (
telcodigo INT(15) PRIMARY KEY AUTO_INCREMENT,
teltelefone VARCHAR(20),
teldatacadastro DATETIME,
orgcodigo INT(15),
CONSTRAINT tel_org FOREIGN KEY (orgcodigo) REFERENCES org (orgcodigo));

-- Localização
CREATE TABLE IF NOT EXISTS loc (
locchave INT(15) PRIMARY KEY AUTO_INCREMENT,
loclatitude VARCHAR(20),
loclongitude VARCHAR(20),
locdata DATETIME COMMENT 'Data do registro da localização no banco de dados [Horário do servidor]',
locdatacalculada DATETIME COMMENT 'Data real da localização. Cálculo: (locdata - (locdatasincdispositivo - locdatadispositivo)) | O cálculo pode ser impreciso se o usuário alterar o horário do dispositivo',
locdatadispositivo DATETIME COMMENT 'Data do registro da localização no dispositivo [Horário do dispositivo]',
locdatasincdispositivo DATETIME COMMENT 'Data do envio da localização para o servidor [Horário do dispositivo]',
telcodigo INT(15),
CONSTRAINT loc_tel FOREIGN KEY (telcodigo) REFERENCES tel (telcodigo));
