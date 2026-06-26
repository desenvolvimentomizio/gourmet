-- =====================================================================
-- Registro GLOBAL de entidades (compartilhado entre empresas/tenants).
--
-- Objetivo: reduzir registros e reutilizar cadastros. A IDENTIDADE da
-- entidade (doc, nome/razao, dados fiscais) e unica e compartilhada; cada
-- empresa mantem na SUA etd um espelho com o MESMO id (etdcodigo), guardando
-- os dados especificos do relacionamento (papeis, credito, contatos).
--
-- Chave unica: CNPJ/CPF normalizado e valido; quando nao houver doc valido,
-- a entidade recebe um CODIGO_UNICO sequencial (consumidor final NAO dedup).
--
-- As 49 FKs internas de cada tenant -> etd permanecem intactas, pois a etd
-- continua existindo em cada schema (espelho da identidade global).
-- =====================================================================

CREATE DATABASE IF NOT EXISTS saas_entidades
  CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE saas_entidades;

-- Identidade canonica (1 linha por entidade real no mundo).
CREATE TABLE IF NOT EXISTS entidade_global (
  id_global    BIGINT AUTO_INCREMENT PRIMARY KEY,  -- etdcodigo canonico (compartilhado)
  chave_unica  VARCHAR(40)  NOT NULL UNIQUE,        -- 'CNPJ:..','CPF:..' ou 'UNI:<seq>'
  tipo_chave   ENUM('CNPJ','CPF','CODIGO_UNICO') NOT NULL,
  doc          VARCHAR(20)  NULL,                   -- digitos do doc (quando houver)
  nome         VARCHAR(120) NOT NULL,
  tipo_pessoa  ENUM('F','J','O') NOT NULL DEFAULT 'O',
  -- dados fiscais de identidade (compartilhaveis); enderecos/IE em tabela propria
  ie           VARCHAR(20)  NULL,
  criado_em    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  atualizado_em DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX ix_doc (doc)
) ENGINE=InnoDB;

-- Gerador de CODIGO_UNICO sequencial (entidades sem doc valido).
CREATE TABLE IF NOT EXISTS seq_codigo_unico (
  id BIGINT NOT NULL
) ENGINE=InnoDB;
INSERT INTO seq_codigo_unico (id) SELECT 0 WHERE NOT EXISTS (SELECT 1 FROM seq_codigo_unico);

-- Vinculo empresa <-> entidade global. "A entidade pertence/atende a empresa Y."
CREATE TABLE IF NOT EXISTS empresa_entidade (
  id             BIGINT AUTO_INCREMENT PRIMARY KEY,
  tenant_id      BIGINT NOT NULL,                   -- ref. saas_control.tenants.id
  id_global      BIGINT NOT NULL,                   -- ref. entidade_global.id_global
  etdcodigo_local INT   NOT NULL,                   -- etdcodigo na etd daquele tenant
  papeis         VARCHAR(40) NOT NULL DEFAULT '',   -- CSV de tvicodigo (1=cli,2=forn,...)
  criado_em      DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY uq_tenant_global (tenant_id, id_global),
  UNIQUE KEY uq_tenant_local  (tenant_id, etdcodigo_local),
  CONSTRAINT fk_ee_global FOREIGN KEY (id_global) REFERENCES entidade_global(id_global)
) ENGINE=InnoDB;

-- Procedure de alocacao atomica do proximo CODIGO_UNICO.
DELIMITER //
CREATE PROCEDURE IF NOT EXISTS sp_next_codigo_unico(OUT p_codigo BIGINT)
BEGIN
  UPDATE seq_codigo_unico SET id = LAST_INSERT_ID(id + 1);
  SET p_codigo = LAST_INSERT_ID();
END //
DELIMITER ;
