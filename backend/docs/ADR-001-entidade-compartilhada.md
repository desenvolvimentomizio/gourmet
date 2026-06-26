# ADR-001 — Identidade de entidade compartilhada entre empresas

- **Status:** aceito (2026-06-26)
- **Contexto da decisão:** modelagem do ERP SaaS multi-tenant sobre o banco atual.

## Contexto

No ERP atual, `etd` é a **tabela universal de entidades** (partes): cliente,
fornecedor, transportador, colaborador, advogado — o papel vem de `etv.tvicodigo`
(rótulos em `tvi`). Cada cliente é um schema MySQL próprio (tenancy por banco).

Objetivo do negócio: **reduzir registros e reutilizar cadastros** de entidades
entre empresas, usando o documento como chave.

### Fatos do banco que restringem o desenho (medidos em `danielentrega`)

1. **`etddoc1` não é único hoje.** 75.329 entidades, apenas **25.020 docs
   distintos**. Placeholders dominam: `'0'`→21.768, `''`→2.947,
   `'00000000000'`→1.622. São **consumidores finais** sem CPF.
2. **49 tabelas por tenant têm FK → `etd`.** MySQL/InnoDB **não suporta FK
   entre schemas**, então mover `etd` para um schema comum quebraria a
   integridade referencial em cada tenant.

## Decisão

**Compartilhar a IDENTIDADE da entidade, não a tabela física.**

- Schema global **`saas_entidades`**:
  - `entidade_global` — 1 linha por entidade real, `chave_unica` UNIQUE.
  - `empresa_entidade` — vínculo (tenant ↔ id_global ↔ etdcodigo_local).
- Cada tenant **mantém sua `etd`** (FKs intactas) como **espelho** da
  identidade global, com o **mesmo `etdcodigo`**, guardando dados específicos
  da empresa (papéis `etv`, contatos `etf`/`ete`, crédito, condições).

### Regra da chave única

- **CNPJ/CPF normalizado e válido** (dígito verificador conferido) → é a chave
  (`CNPJ:<dig>` / `CPF:<dig>`). Deduplica e reutiliza entre empresas.
- **Sem doc válido** → `CODIGO_UNICO` sequencial (`UNI:<seq>`). Consumidor final
  **não** é compartilhado nem deduplicado.

### Fluxo de cadastro (reuso)

1. Normaliza/valida o doc → calcula `chave_unica`.
2. Busca em `entidade_global` por `chave_unica`.
   - **Existe** → importa identidade (nome/doc/fiscal) + cria vínculo da empresa
     e espelha na `etd` local (sem redigitar).
   - **Não existe** (ou sem doc) → cria global (gerando `CODIGO_UNICO` se preciso)
     e vincula.

## Consequências

**Positivas:** preserva as 49 FKs e a integridade; entrega o reuso/dedup pedido;
migração incremental (o global é aditivo; o ERP legado segue usando a `etd`
local na transição).

**Negativas / a tratar:**
- Sincronização identidade global ↔ espelho local (eventual; definir gatilho).
- Migração inicial de dedup: consolidar as `etd` dos 25 schemas no global por
  `chave_unica`, mapeando `etdcodigo_local → id_global` (consumidor final vira
  `CODIGO_UNICO`).
- Durante a transição, escrita concorrente legado×novo na `etd` — mitigar
  migrando por bounded context e congelando a escrita legada do módulo migrado.

## Alternativa descartada

**Tabela `etd` física única** num schema comum, tenants referenciando sem FK
(integridade só na aplicação). Mais aderente ao literal "tabela compartilhada",
mas abandona as FKs e aumenta o risco — rejeitada.
