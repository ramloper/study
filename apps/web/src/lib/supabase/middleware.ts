import { createServerClient } from "@supabase/ssr";
import { NextResponse, type NextRequest } from "next/server";

import { getSupabaseEnv, isSupabaseConfigured } from "@/lib/supabase/env";

function isElectron(request: NextRequest): boolean {
  const ua = request.headers.get("user-agent") || "";
  return /Electron/i.test(ua);
}

function isPublicAsset(path: string): boolean {
  return (
    path.startsWith("/_next") ||
    path.startsWith("/favicon") ||
    path.includes(".")
  );
}

/** Browser-only: force download page. Desktop app (Electron) uses full UI. */
function browserMustDownload(path: string): boolean {
  if (path === "/download" || path.startsWith("/download/")) return false;
  // email confirm / auth callback must still work in Safari/Chrome
  if (path.startsWith("/auth")) return false;
  return true;
}

export async function updateSession(request: NextRequest) {
  const path = request.nextUrl.pathname;

  if (isPublicAsset(path)) {
    return NextResponse.next({ request });
  }

  // ── Web browser → always send to /download (desktop-only product) ──
  if (!isElectron(request) && browserMustDownload(path)) {
    const redirectUrl = request.nextUrl.clone();
    redirectUrl.pathname = "/download";
    redirectUrl.search = "";
    return NextResponse.redirect(redirectUrl);
  }

  // Below: Electron app (or allowed public browser routes)
  let supabaseResponse = NextResponse.next({ request });

  if (!isSupabaseConfigured()) {
    return supabaseResponse;
  }

  const { url, anonKey } = getSupabaseEnv();

  const supabase = createServerClient(url!, anonKey!, {
    cookies: {
      getAll() {
        return request.cookies.getAll();
      },
      setAll(cookiesToSet) {
        cookiesToSet.forEach(({ name, value }) => {
          request.cookies.set(name, value);
        });
        supabaseResponse = NextResponse.next({ request });
        cookiesToSet.forEach(({ name, value, options }) => {
          supabaseResponse.cookies.set(name, value, options);
        });
      },
    },
  });

  const {
    data: { user },
  } = await supabase.auth.getUser();

  const isAuthPage =
    path.startsWith("/login") ||
    path.startsWith("/signup") ||
    path.startsWith("/auth");
  const isDownloadPage =
    path === "/download" || path.startsWith("/download/");

  // Electron: require login for app screens
  if (isElectron(request) && !user && !isAuthPage && !isDownloadPage) {
    const redirectUrl = request.nextUrl.clone();
    redirectUrl.pathname = "/login";
    redirectUrl.searchParams.set("next", path);
    return NextResponse.redirect(redirectUrl);
  }

  if (user && (path === "/login" || path === "/signup")) {
    const redirectUrl = request.nextUrl.clone();
    redirectUrl.pathname = "/";
    return NextResponse.redirect(redirectUrl);
  }

  // Onboarding gate
  if (
    user &&
    isElectron(request) &&
    !path.startsWith("/onboarding") &&
    !isAuthPage &&
    !isDownloadPage
  ) {
    const { count, error } = await supabase
      .from("user_subjects")
      .select("*", { count: "exact", head: true })
      .eq("user_id", user.id)
      .eq("is_enabled", true);

    if (!error && (count ?? 0) === 0) {
      const redirectUrl = request.nextUrl.clone();
      redirectUrl.pathname = "/onboarding";
      return NextResponse.redirect(redirectUrl);
    }
  }

  if (user && path.startsWith("/onboarding")) {
    const { count, error } = await supabase
      .from("user_subjects")
      .select("*", { count: "exact", head: true })
      .eq("user_id", user.id)
      .eq("is_enabled", true);

    if (!error && (count ?? 0) > 0) {
      const redirectUrl = request.nextUrl.clone();
      redirectUrl.pathname = "/";
      return NextResponse.redirect(redirectUrl);
    }
  }

  return supabaseResponse;
}
