// Cliente HTTP fino: injeta JWT, base URL e tratamento de erro padronizado.
// O tenant viaja DENTRO do JWT (claim "tenant"); o front nunca escolhe schema.

const BASE = import.meta.env.VITE_API_BASE ?? "";

export class ApiError extends Error {
  constructor(
    public status: number,
    public code: string,
    message: string,
  ) {
    super(message);
  }
}

function token(): string | null {
  return localStorage.getItem("gourmet.token");
}

export async function apiGet<T>(
  path: string,
  params?: Record<string, string | number | undefined>,
): Promise<T> {
  const url = new URL(BASE + path, window.location.origin);
  if (params) {
    for (const [k, v] of Object.entries(params)) {
      if (v !== undefined && v !== "") url.searchParams.set(k, String(v));
    }
  }

  const res = await fetch(url.toString(), {
    headers: {
      Accept: "application/json",
      ...(token() ? { Authorization: `Bearer ${token()}` } : {}),
    },
  });

  if (!res.ok) {
    let code = "HttpError";
    let message = res.statusText;
    try {
      const body = await res.json();
      code = body.error ?? code;
      message = body.message ?? message;
    } catch {
      /* resposta sem JSON */
    }
    throw new ApiError(res.status, code, message);
  }

  return res.json() as Promise<T>;
}
