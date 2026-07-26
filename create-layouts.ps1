Set-Content -Path "src\layouts\AuthLayout.tsx" -Value @"
import { Outlet } from "react-router-dom"

export default function AuthLayout() {
  return (
    <div className="min-h-screen flex items-center justify-center bg-gray-50">
      <Outlet />
    </div>
  )
}
"@

Set-Content -Path "src\layouts\DashboardLayout.tsx" -Value @"
import { Outlet } from "react-router-dom"

export default function DashboardLayout() {
  return (
    <div className="min-h-screen flex">
      <aside className="w-64 bg-gray-900 text-white p-4">
        Sidebar placeholder
      </aside>
      <main className="flex-1">
        <Outlet />
      </main>
    </div>
  )
}
"@