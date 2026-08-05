import { createBrowserClient } from "@supabase/ssr";

import { getSupabaseEnv, isSupabaseConfigured } from "@/lib/supabase/env";

import type { Database } from "@/lib/supabase/database.types";

export function createClient() {
  if (!isSupabaseConfigured()) {
    throw new Error(
      "Supabase env missing. Set NEXT_PUBLIC_SUPABASE_URL and NEXT_PUBLIC_SUPABASE_ANON_KEY."
    );
  }
  const { url, anonKey } = getSupabaseEnv();
  return createBrowserClient<Database>(url!, anonKey!);
}

export function tryCreateClient() {
  if (!isSupabaseConfigured()) return null;
  return createClient();
}
