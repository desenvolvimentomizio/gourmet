import type { AuthUser } from "./auth.types";

// Decodifica o payload do JWT (base64url) — só para UI (exibir tenant/usuário e
// checar expiração). A verificação de assinatura/expiração de verdade é no backend.
export function decodeJwt(token: string): AuthUser | null {
  try {
    const part = token.split(".")[1];
    if (!part) return null;
    const base64 = part.replace(/-/g, "+").replace(/_/g, "/");
    const json = decodeURIComponent(
      atob(base64)
        .split("")
        .map((c) => "%" + ("00" + c.charCodeAt(0).toString(16)).slice(-2))
        .join(""),
    );
    const obj = JSON.parse(json);
    return {
      sub: String(obj.sub ?? ""),
      tenant: String(obj.tenant ?? ""),
      roles: String(obj.roles ?? ""),
      exp: Number(obj.exp ?? 0),
    };
  } catch {
    return null;
  }
}

export function isExpired(user: AuthUser | null): boolean {
  if (!user || !user.exp) return true;
  return user.exp * 1000 <= Date.now();
}
