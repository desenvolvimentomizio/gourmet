#!/usr/bin/env python3
"""
Registra no control-plane (saas_control.tenants) os schemas de clientes que
ja existem no servidor MySQL. Idempotente: usa INSERT ... ON DUPLICATE KEY.

Pula schemas de sistema, templates e integracoes (basevazia, aiqfome*, etc.).
Ajuste SKIP conforme necessario.

Uso:
  python seed_tenants.py
Requer: pip install pymysql  (e o saas_control.sql ja aplicado)
"""
import pymysql

HOST = "192.168.5.159"
USER = "root"
PASSWORD = "xda973"          # use credencial dedicada em producao
CONTROL_SCHEMA = "saas_control"

SKIP = {
    "information_schema", "mysql", "performance_schema", "sys",
    "saas_control", "basevazia", "cr_debug",
}
SKIP_PREFIX = ("aiqfome",)   # integracoes, nao tenants do ERP

def is_tenant(name: str) -> bool:
    if name in SKIP:
        return False
    if name.startswith(SKIP_PREFIX):
        return False
    return True

def main():
    cn = pymysql.connect(host=HOST, user=USER, password=PASSWORD, charset="utf8mb4")
    cur = cn.cursor()
    cur.execute("""SELECT schema_name FROM information_schema.schemata
                   ORDER BY schema_name""")
    schemas = [r[0] for r in cur.fetchall() if is_tenant(r[0])]

    cur.execute(f"USE {CONTROL_SCHEMA}")
    n = 0
    for s in schemas:
        cur.execute(
            "INSERT INTO tenants (slug, nome, db_schema, status) "
            "VALUES (%s, %s, %s, 'active') "
            "ON DUPLICATE KEY UPDATE nome=VALUES(nome)",
            (s, s, s),
        )
        n += 1
        print(f"  + {s}")
    cn.commit()
    print(f"\n{n} tenants registrados/atualizados em {CONTROL_SCHEMA}.tenants")
    cn.close()

if __name__ == "__main__":
    main()
