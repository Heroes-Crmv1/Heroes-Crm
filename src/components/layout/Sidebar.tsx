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
