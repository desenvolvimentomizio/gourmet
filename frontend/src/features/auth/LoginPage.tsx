import { useState, type FormEvent } from "react";
import { useMutation } from "@tanstack/react-query";
import { ApiError } from "@/lib/api";
import { useAuth } from "./AuthContext";

export function LoginPage() {
  const { login } = useAuth();
  const [tenant, setTenant] = useState("danielentrega");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  const mutation = useMutation({
    mutationFn: () => login({ tenant, email, password }),
  });

  function onSubmit(e: FormEvent) {
    e.preventDefault();
    mutation.mutate();
  }

  const errorMsg =
    mutation.error instanceof ApiError
      ? mutation.error.message
      : mutation.error
        ? "Falha ao conectar com o servidor"
        : null;

  return (
    <div className="flex min-h-screen items-center justify-center bg-slate-50 px-4">
      <form
        onSubmit={onSubmit}
        className="w-full max-w-sm rounded-2xl border border-slate-200 bg-white p-8 shadow-sm"
      >
        <div className="mb-6 text-center">
          <div className="text-2xl font-bold text-brand-600">Gourmet ERP</div>
          <p className="mt-1 text-sm text-slate-500">Acesse sua conta</p>
        </div>

        <label className="mb-1 block text-sm font-medium text-slate-700">
          Empresa (tenant)
        </label>
        <input
          value={tenant}
          onChange={(e) => setTenant(e.target.value)}
          autoCapitalize="none"
          className="mb-4 w-full rounded-lg border border-slate-300 px-3 py-2 text-sm
                     outline-none focus:border-brand-500 focus:ring-2 focus:ring-brand-100"
          required
        />

        <label className="mb-1 block text-sm font-medium text-slate-700">
          E-mail
        </label>
        <input
          type="email"
          value={email}
          onChange={(e) => setEmail(e.target.value)}
          autoComplete="username"
          className="mb-4 w-full rounded-lg border border-slate-300 px-3 py-2 text-sm
                     outline-none focus:border-brand-500 focus:ring-2 focus:ring-brand-100"
          required
        />

        <label className="mb-1 block text-sm font-medium text-slate-700">
          Senha
        </label>
        <input
          type="password"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
          autoComplete="current-password"
          className="mb-4 w-full rounded-lg border border-slate-300 px-3 py-2 text-sm
                     outline-none focus:border-brand-500 focus:ring-2 focus:ring-brand-100"
          required
        />

        {errorMsg && (
          <div className="mb-4 rounded-lg bg-red-50 px-3 py-2 text-sm text-red-700">
            {errorMsg}
          </div>
        )}

        <button
          type="submit"
          disabled={mutation.isPending}
          className="w-full rounded-lg bg-brand-600 px-4 py-2 text-sm font-semibold text-white
                     transition hover:bg-brand-700 disabled:opacity-60"
        >
          {mutation.isPending ? "Entrando…" : "Entrar"}
        </button>
      </form>
    </div>
  );
}
