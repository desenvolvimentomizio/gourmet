#!/usr/bin/env python3
"""
Cria um usuario do SaaS em saas_control.usuarios com hash de senha COMPATIVEL
com o backend (PBKDF2-HMAC-SHA256, 120000 iteracoes, formato
'pbkdf2_sha256$<iter>$<saltB64>$<hashB64>' — igual ao Gourmet.Password).

Permite testar POST /api/v1/auth/login.

Uso:
  python seed_admin.py [tenant_slug] [email] [senha]
  (padrao: danielentrega  admin@gourmet.local  Senha@123)

Requer: o tenant ja registrado (seed_tenants.py) e saas_control.sql aplicado.
"""
import sys, os, base64, hashlib
import pymysql

HOST = "192.168.5.159"
USER = "root"
PASSWORD = "xda973"
CONTROL_SCHEMA = "saas_control"

ITER = 120000

def make_hash(plain: str) -> str:
    salt = os.urandom(16)
    dk = hashlib.pbkdf2_hmac("sha256", plain.encode("utf-8"), salt, ITER, dklen=32)
    b64 = lambda b: base64.b64encode(b).decode("ascii")  # padrao, sem quebra
    return f"pbkdf2_sha256${ITER}${b64(salt)}${b64(dk)}"

def main():
    slug  = sys.argv[1] if len(sys.argv) > 1 else "danielentrega"
    email = sys.argv[2] if len(sys.argv) > 2 else "admin@gourmet.local"
    senha = sys.argv[3] if len(sys.argv) > 3 else "Senha@123"

    cn = pymysql.connect(host=HOST, user=USER, password=PASSWORD,
                         database=CONTROL_SCHEMA, charset="utf8mb4")
    cur = cn.cursor()
    cur.execute("SELECT id FROM tenants WHERE slug=%s", (slug,))
    row = cur.fetchone()
    if not row:
        print(f"ERRO: tenant '{slug}' nao existe. Rode seed_tenants.py antes.")
        sys.exit(1)
    tenant_id = row[0]

    cur.execute(
        "INSERT INTO usuarios (tenant_id, email, senha_hash, nome, roles, ativo) "
        "VALUES (%s, %s, %s, %s, %s, 1) "
        "ON DUPLICATE KEY UPDATE senha_hash=VALUES(senha_hash), ativo=1",
        (tenant_id, email, make_hash(senha), "Administrador", "admin"),
    )
    cn.commit()
    print(f"OK usuario '{email}' (tenant '{slug}') criado/atualizado.")
    print(f"   teste: POST /api/v1/auth/login "
          f'{{"tenant":"{slug}","email":"{email}","password":"{senha}"}}')
    cn.close()

if __name__ == "__main__":
    main()
