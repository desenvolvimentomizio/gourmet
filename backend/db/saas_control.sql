-- =====================================================================
-- Control-plane do SaaS Gourmet.
-- Banco central (separado dos schemas dos tenants) que guarda QUEM sao os
-- tenants, seus usuarios de acesso ao SaaS, assinaturas e webhooks.
-- Os DADOS de negocio continuam em 1 schema por tenant (modelo atual).
-- =====================================================================

CREATE DATABASE IF NOT EXISTS saas_control
  CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE saas_control;

-- Tenants: cada cliente = 1 schema MySQL existente (db_schema).
CREATE TABLE IF NOT EXISTS tenants (
  id          BIGINT AUTO_INCREMENT PRIMARY KEY,
  slug        VARCHAR(60)  NOT NULL UNIQUE,       -- identificador no JWT (ex.: 'danielentrega')
  nome        VARCHAR(120) NOT NULL,
  db_schema   VARCHAR(64)  NOT NULL UNIQUE,       -- schema MySQL do cliente
  status      ENUM('active','suspended','canceled') NOT NULL DEFAULT 'active',
  criado_em   DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- Usuarios do SaaS (login no painel/web). Senha = hash (bcrypt/argon2).
CREATE TABLE IF NOT EXISTS usuarios (
  id          BIGINT AUTO_INCREMENT PRIMARY KEY,
  tenant_id   BIGINT NOT NULL,
  email       VARCHAR(160) NOT NULL,
  senha_hash  VARCHAR(255) NOT NULL,
  nome        VARCHAR(120) NOT NULL,
  roles       VARCHAR(255) NOT NULL DEFAULT '',   -- CSV; mapeia p/ atv do ERP
  ativo       TINYINT NOT NULL DEFAULT 1,
  criado_em   DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY uq_tenant_email (tenant_id, email),
  CONSTRAINT fk_usuarios_tenant FOREIGN KEY (tenant_id) REFERENCES tenants(id)
) ENGINE=InnoDB;

-- Assinaturas (billing) - esqueleto.
CREATE TABLE IF NOT EXISTS assinaturas (
  id          BIGINT AUTO_INCREMENT PRIMARY KEY,
  tenant_id   BIGINT NOT NULL,
  plano       VARCHAR(60) NOT NULL,
  status      ENUM('trial','active','past_due','canceled') NOT NULL DEFAULT 'trial',
  inicio      DATE NOT NULL,
  fim         DATE NULL,
  CONSTRAINT fk_assin_tenant FOREIGN KEY (tenant_id) REFERENCES tenants(id)
) ENGINE=InnoDB;

-- Webhooks de saida configurados por tenant.
CREATE TABLE IF NOT EXISTS webhooks (
  id          BIGINT AUTO_INCREMENT PRIMARY KEY,
  tenant_id   BIGINT NOT NULL,
  evento      VARCHAR(80) NOT NULL,               -- ex.: 'nfe.autorizada', 'pedido.criado'
  url         VARCHAR(400) NOT NULL,
  secret      VARCHAR(120) NOT NULL,              -- assina o payload (HMAC)
  ativo       TINYINT NOT NULL DEFAULT 1,
  CONSTRAINT fk_webhooks_tenant FOREIGN KEY (tenant_id) REFERENCES tenants(id)
) ENGINE=InnoDB;

-- Auditoria minima de acesso/operacoes sensiveis.
CREATE TABLE IF NOT EXISTS auditoria (
  id          BIGINT AUTO_INCREMENT PRIMARY KEY,
  tenant_id   BIGINT NULL,
  usuario_id  BIGINT NULL,
  acao        VARCHAR(120) NOT NULL,
  detalhe     JSON NULL,
  ip          VARCHAR(45) NULL,
  criado_em   DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;
