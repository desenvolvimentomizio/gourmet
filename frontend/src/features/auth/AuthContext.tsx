import {
  createContext,
  useCallback,
  useContext,
  useEffect,
  useMemo,
  useState,
  type ReactNode,
} from "react";
import {
  clearToken,
  getToken,
  setOnUnauthorized,
  setToken,
} from "@/lib/api";
import { login as apiLogin } from "./auth.api";
import { decodeJwt, isExpired } from "./jwt";
import type { AuthUser, LoginPayload } from "./auth.types";

interface AuthState {
  user: AuthUser | null;
  isAuthenticated: boolean;
  login: (payload: LoginPayload) => Promise<void>;
  logout: () => void;
}

const AuthContext = createContext<AuthState | undefined>(undefined);

function userFromStorage(): AuthUser | null {
  const token = getToken();
  if (!token) return null;
  const user = decodeJwt(token);
  if (!user || isExpired(user)) {
    clearToken();
    return null;
  }
  return user;
}

export function AuthProvider({ children }: { children: ReactNode }) {
  const [user, setUser] = useState<AuthUser | null>(userFromStorage);

  const logout = useCallback(() => {
    clearToken();
    setUser(null);
  }, []);

  // Sessão caiu (401 em rota protegida) -> desloga.
  useEffect(() => {
    setOnUnauthorized(logout);
    return () => setOnUnauthorized(null);
  }, [logout]);

  // Desloga automaticamente quando o token expira.
  useEffect(() => {
    if (!user) return;
    const ms = user.exp * 1000 - Date.now();
    if (ms <= 0) {
      logout();
      return;
    }
    const id = setTimeout(logout, ms);
    return () => clearTimeout(id);
  }, [user, logout]);

  const login = useCallback(async (payload: LoginPayload) => {
    const res = await apiLogin(payload);
    setToken(res.access_token);
    setUser(decodeJwt(res.access_token));
  }, []);

  const value = useMemo<AuthState>(
    () => ({ user, isAuthenticated: !!user, login, logout }),
    [user, login, logout],
  );

  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;
}

export function useAuth(): AuthState {
  const ctx = useContext(AuthContext);
  if (!ctx) throw new Error("useAuth deve estar dentro de <AuthProvider>");
  return ctx;
}
