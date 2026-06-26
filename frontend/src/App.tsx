import { ClientesPage } from "@/features/clientes/ClientesPage";

// Shell minimo da Fase A: sidebar + area de conteudo.
// Roteamento real (react-router) e auth entram junto com a tela de login.
export function App() {
  return (
    <div className="flex h-screen">
      <aside className="w-60 shrink-0 border-r border-slate-200 bg-white p-4">
        <div className="mb-6 px-2 text-lg font-bold text-brand-600">
          Gourmet ERP
        </div>
        <nav className="space-y-1 text-sm">
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
      </aside>

      <main className="min-w-0 flex-1 overflow-auto">
        <ClientesPage />
      </main>
    </div>
  );
}
