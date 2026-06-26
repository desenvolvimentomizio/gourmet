# Gourmet Web — Frontend ERP SaaS

SPA do ERP Gourmet. Stack: **React + TypeScript + Vite + Tailwind + TanStack
Query + AG Grid**. Fala apenas HTTPS/JSON com a Gourmet API; nunca acessa banco.

## Rodar (Fase A)
```bash
npm install
copy .env.sample .env      # opcional; em dev o proxy /api aponta p/ :9000
npm run dev                # http://localhost:5173
```
Com o backend rodando em `localhost:9000`, a tela de Clientes consome
`GET /api/v1/clientes` (proxy do Vite encaminha `/api`).

## Estrutura
```
src/
  main.tsx                 bootstrap (React Query provider)
  App.tsx                  shell (sidebar + conteúdo)
  index.css                Tailwind
  lib/api.ts               cliente HTTP (injeta JWT, trata erro)
  lib/queryClient.ts       config do TanStack Query
  features/
    clientes/              vertical de exemplo (lista + busca + paginação)
    auth/                  (login — próxima entrega)
  components/ui/           design system (shadcn-style)
```

## Convenções
- **Feature-first**: cada módulo do ERP (clientes, produtos, financeiro…) é uma
  pasta em `features/` com `*.api.ts`, `*.types.ts` e seus componentes.
- **Server state** sempre via TanStack Query (cache, loading, retry).
- **Grids pesados** com AG Grid; paginação no servidor.
- O **api-client** pode ser gerado do OpenAPI do backend nas próximas fases.

## Próximas entregas
Login/JWT + guarda de rotas, layout responsivo definitivo, e as features dos
demais módulos seguindo o mesmo padrão de `features/clientes`.
