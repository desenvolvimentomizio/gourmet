export interface Cliente {
  id: number;
  nome: string;
  documento: string;
  telefone: string;
  email: string;
}

export interface Paginated<T> {
  total: number;
  page: number;
  pageSize: number;
  items: T[];
}
