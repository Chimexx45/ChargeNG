/**
 * HTTP client for VoltPassNG API.
 * TODO: add auth token injection and typed fetch helpers.
 */

import { config } from "../config/env";

export async function apiGet<T>(path: string): Promise<T> {
  const response = await fetch(`${config.apiBaseUrl}${path}`);
  if (!response.ok) {
    throw new Error(`API error: ${response.status}`);
  }
  return response.json() as Promise<T>;
}
