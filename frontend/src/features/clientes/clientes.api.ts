import { apiGet } from "@/lib/api";
import type { Cliente, Paginated } from "./clientes.types";

export interface ListClientesParams {
  search?: string;
  page?: number;
  pageSize?: number;
}

export function listClientes(
  params: ListClientesParams,
): Promise<Paginated<Cliente>> {
  return apiGet<Paginated<Cliente>>("/api/v1/clientes", {
    search: params.search,
    page: params.page ?? 1,
    pageSize: params.pageSize ?? 50,
  });
}
