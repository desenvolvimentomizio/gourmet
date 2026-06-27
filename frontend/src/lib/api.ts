// Cliente HTTP fino: injeta JWT, base URL e tratamento de erro padronizado.
// O tenant viaja DENTRO do JWT (claim "tenant"); o front nunca escolhe schema.

const BASE = import.meta.env.VITE_API_BASE ?? "";
const TOKEN_KEY = "gourmet.token";

export class ApiError extends Error {
  constructor(
    public status: number,
    public code: string,
    message: string,
  ) {
    super(message);
  }
}

// --- token (sessão) ---
export function getToken(): string | null {
  return localStorage.getItem(TOKEN_KEY);
}
export function setToken(token: string): void {
  localStorage.setItem(TOKEN_KEY, token);
}
export function clearToken(): void {
  localStorage.removeItem(TOKEN_KEY);
}

// Callback disparado quando a API responde 401 em rota protegida (sessão
// expirada/inválida) — usado pelo AuthProvider para deslogar.
let onUnauthorized: (() => void) | null = null;
export function setOnUnauthorized(cb: (() => void) | null): void {
  onUnauthorized = cb;
}

interface RequestOptions {
  params?: Record<string, string | number | undefined>;
  body?: unknown;
}

async function request<T>(
  method: string,
  path: string,
  opts: RequestOptions = {},
): Promise<T> {
  const url = new URL(BASE + path, window.location.origin);
  if (opts.params) {
    for (const [k, v] of Object.entries(opts.params)) {
      if (v !== undefined && v !== "") url.searchParams.set(k, String(v));
    }
  }

  const headers: Record<string, string> = { Accept: "application/json" };
  const token = getToken();
  if (token) headers.Authorization = `Bearer ${token}`;
  if (opts.body !== undefined) headers["Content-Type"] = "application/json";

  const res = await fetch(url.toString(), {
    method,
    headers,
    body: opts.body !== undefined ? JSON.stringify(opts.body) : undefined,
  });

  // 401 em rota NÃO-auth = sessão caiu -> deslogar.
  if (res.status === 401 && onUnauthorized && !path.startsWith("/api/v1/auth/")) {
    onUnauthorized();
  }

  if (!res.ok) {
    let code = "HttpError";
    let message = res.statusText;
    try {
      const data = await res.json();
      code = data.error ?? code;
      message = data.message ?? message;
    } catch {
      /* resposta sem JSON */
    }
    throw new ApiError(res.status, code, message);
  }

  if (res.status === 204) return undefined as T;
  return res.json() as Promise<T>;
}

export function apiGet<T>(
  path: string,
  params?: Record<string, string | number | undefined>,
): Promise<T> {
  return request<T>("GET", path, { params });
}

export function apiPost<T>(path: string, body?: unknown): Promise<T> {
  return request<T>("POST", path, { body });
}
