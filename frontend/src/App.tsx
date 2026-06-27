import { ClientesPage } from "@/features/clientes/ClientesPage";
import { useAuth } from "@/features/auth/AuthContext";
import { LoginPage } from "@/features/auth/LoginPage";

export function App() {
  const { isAuthenticated, user, logout } = useAuth();

  // Guarda de rota: sem sessão -> tela de login.
  if (!isAuthenticated) return <LoginPage />;

  return (
    <div className="flex h-screen">
      <aside className="flex w-60 shrink-0 flex-col border-r border-slate-200 bg-white">
        <div className="px-4 py-4 text-lg font-bold text-brand-600">
          Gourmet ERP
        </div>
        <nav className="flex-1 space-y-1 px-3 text-sm">
          <a className="block rounded-md bg-brand-50 px-3 py-2 font-medium text-brand-700">
            Clientes
          </a>
          <span className="block cursor-not-allowed rounded-md px-3 py-2 text-slate-400">
            Produtos
          </span>
          <span className="block cursor-not-allowed rounded-md px-3 py-2 text-slate-400">
            Financeiro
          </span>
          <span className="block cursor-not-allowed rounded-md px-3 py-2 text-slate-400">
            Fiscal
          </span>
        </nav>

        {/* Usuário + logout */}
        <div className="border-t border-slate-200 p-3 text-sm">
          <div className="truncate font-medium text-slate-700">
            {user?.sub ? `Usuário #${user.sub}` : "—"}
          </div>
          <div className="mb-2 truncate text-xs text-slate-400">
            {user?.tenant}
          </div>
          <button
            onClick={logout}
            className="w-full rounded-md border border-slate-300 px-3 py-1.5 text-sm
                       text-slate-600 transition hover:bg-slate-50"
          >
            Sair
          </button>
        </div>
      </aside>

      <main className="min-w-0 flex-1 overflow-auto">
        <ClientesPage />
      </main>
    </div>
  );
}
