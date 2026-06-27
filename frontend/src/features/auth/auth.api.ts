import { apiPost } from "@/lib/api";
import type { LoginPayload, LoginResponse } from "./auth.types";

export function login(payload: LoginPayload): Promise<LoginResponse> {
  return apiPost<LoginResponse>("/api/v1/auth/login", payload);
}
