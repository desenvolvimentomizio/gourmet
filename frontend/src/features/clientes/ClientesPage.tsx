import { useMemo, useState } from "react";
import { keepPreviousData, useQuery } from "@tanstack/react-query";
import { AgGridReact } from "ag-grid-react";
import type { ColDef } from "ag-grid-community";
import "ag-grid-community/styles/ag-grid.css";
import "ag-grid-community/styles/ag-theme-quartz.css";
import { listClientes } from "./clientes.api";
import type { Cliente } from "./clientes.types";

const PAGE_SIZE = 50;

export function ClientesPage() {
  const [search, setSearch] = useState("");
  const [debounced, setDebounced] = useState("");
  const [page, setPage] = useState(1);

  // debounce simples da busca
  useMemo(() => {
    const t = setTimeout(() => {
      setDebounced(search);
      setPage(1);
    }, 350);
    return () => clearTimeout(t);
  }, [search]);

  const { data, isLoading, isError, error } = useQuery({
    queryKey: ["clientes", debounced, page],
    queryFn: () => listClientes({ search: debounced, page, pageSize: PAGE_SIZE }),
    placeholderData: keepPreviousData,
  });

  const columns = useMemo<ColDef<Cliente>[]>(
    () => [
      { field: "id", headerName: "Código", width: 110 },
      { field: "nome", headerName: "Nome", flex: 2, minWidth: 220 },
      { field: "documento", headerName: "Documento", flex: 1 },
      { field: "telefone", headerName: "Telefone", flex: 1 },
      { field: "email", headerName: "E-mail", flex: 1 },
    ],
    [],
  );

  const total = data?.total ?? 0;
  const lastPage = Math.max(1, Math.ceil(total / PAGE_SIZE));

  return (
    <div className="flex h-full flex-col gap-4 p-6">
      <header className="flex items-center justify-between">
        <div>
          <h1 className="text-xl font-semibold text-slate-800">Clientes</h1>
          <p className="text-sm text-slate-500">
            {total.toLocaleString("pt-BR")} registros
          </p>
        </div>
        <input
          value={search}
          onChange={(e) => setSearch(e.target.value)}
          placeholder="Buscar por nome, documento ou telefone…"
          className="w-80 rounded-lg border border-slate-300 px-3 py-2 text-sm
                     outline-none focus:border-brand-500 focus:ring-2 focus:ring-brand-100"
        />
      </header>

      {isError && (
        <div className="rounded-lg bg-red-50 px-4 py-3 text-sm text-red-700">
          Erro ao carregar: {(error as Error).message}
        </div>
      )}

      <div className="ag-theme-quartz flex-1" style={{ minHeight: 400 }}>
        <AgGridReact<Cliente>
          rowData={data?.items ?? []}
          columnDefs={columns}
          loading={isLoading}
          animateRows
          rowSelection="single"
        />
      </div>

      <footer className="flex items-center justify-end gap-3 text-sm">
        <button
          className="rounded-md border border-slate-300 px-3 py-1 disabled:opacity-40"
          disabled={page <= 1}
          onClick={() => setPage((p) => p - 1)}
        >
          Anterior
        </button>
        <span className="text-slate-600">
          Página {page} de {lastPage}
        </span>
        <button
          className="rounded-md border border-slate-300 px-3 py-1 disabled:opacity-40"
          disabled={page >= lastPage}
          onClick={() => setPage((p) => p + 1)}
        >
          Próxima
        </button>
      </footer>
    </div>
  );
}
