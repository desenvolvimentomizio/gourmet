export interface LoginPayload {
  tenant: string;
  email: string;
  password: string;
}

export interface LoginResponse {
  access_token: string;
  token_type: string;
  expires_in: number;
}

// Claims do JWT (decodificados no cliente apenas para exibir/checar expiração;
// a validação real é no backend).
export interface AuthUser {
  sub: string; // id do usuário
  tenant: string; // slug do tenant
  roles: string; // CSV
  exp: number; // epoch (segundos)
}
