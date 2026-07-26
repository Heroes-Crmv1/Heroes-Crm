mkdir src\components\layout -Force | Out-Null

Set-Content -Path "src\components\layout\Logo.tsx" -Value @"
export default function Logo() {
  return (
    <div className="text-xl font-bold text-white">
      Heroes CRM
    </div>
  )
}
"@

Set-Content -Path "src\components\layout\Header.tsx" -Value @"
export default function Header() {
  return (
    <header className="h-16 border-b flex items-center px-6 bg-white">
      <h1 className="text-lg font-semibold">Dashboard</h1>
    </header>
  )
}
"@

Set-Content -Path "src\components\layout\Sidebar.tsx" -Value @"
import Logo from "./Logo"

export default function Sidebar() {
  return (
    <aside className="w-64 bg-gray-900 text-white p-4 flex flex-col gap-4">
      <Logo />
      <nav className="flex flex-col gap-2 text-sm text-gray-300">
        <span>Dashboard</span>
        <span>Leads</span>
        <span>Companies</span>
        <span>Tasks</span>
        <span>Pipeline</span>
      </nav>
    </aside>
  )
}
"@

Set-Content -Path "src\components\layout\PageContainer.tsx" -Value @"
import { ReactNode } from "react"

export default function PageContainer({ children }: { children: ReactNode }) {
  return (
    <div className="p-6">
      {children}
    </div>
  )
}
"@