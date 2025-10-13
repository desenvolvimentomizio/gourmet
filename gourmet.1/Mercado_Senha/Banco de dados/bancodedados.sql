CREATE TABLE IF NOT EXISTS ese (
  esechave int(11) NOT NULL AUTO_INCREMENT,
  esedata date NOT NULL,
  esenumero int(11) NOT NULL,
  eseusada int(11) NOT NULL DEFAULT 0,
  esetemp int(11) DEFAULT NULL,
  eserecupera int(11) DEFAULT NULL,
  stscodigo int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (esechave),
  CONSTRAINT ese_sts_stscodigo FOREIGN KEY (stscodigo)
  REFERENCES sts (stscodigo) ON DELETE CASCADE ON UPDATE CASCADE
)
ENGINE = INNODB
CHARACTER SET latin1
COLLATE latin1_swedish_ci
COMMENT = 'Emissor de senha'//