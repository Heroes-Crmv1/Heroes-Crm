mkdir src\store -Force | Out-Null

Set-Content -Path "src\store\authStore.ts" -Value @"
import { create } from "zustand"

interface AuthState {
  user: { id: string; email: string } | null
  isAuthenticated: boolean
  setUser: (user: { id: string; email: string } | null) => void
  logout: () => void
}

export const useAuthStore = create<AuthState>((set) => ({
  user: null,
  isAuthenticated: false,
  setUser: (user) => set({ user, isAuthenticated: !!user }),
  logout: () => set({ user: null, isAuthenticated: false }),
}))
"@

Set-Content -Path "src\store\themeStore.ts" -Value @"
import { create } from "zustand"

interface ThemeState {
  theme: "light" | "dark"
  toggleTheme: () => void
}

export const useThemeStore = create<ThemeState>((set) => ({
  theme: "light",
  toggleTheme: () =>
    set((state) => ({ theme: state.theme === "light" ? "dark" : "light" })),
}))
"@

Set-Content -Path "src\store\uiStore.ts" -Value @"
import { create } from "zustand"

interface UIState {
  sidebarOpen: boolean
  toggleSidebar: () => void
}

export const useUIStore = create<UIState>((set) => ({
  sidebarOpen: true,
  toggleSidebar: () => set((state) => ({ sidebarOpen: !state.sidebarOpen })),
}))
"@