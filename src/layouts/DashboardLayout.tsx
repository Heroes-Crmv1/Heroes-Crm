import { Outlet } from "react-router-dom"
import Sidebar from "@/components/layout/Sidebar"
import Header from "@/components/layout/Header"
import PageContainer from "@/components/layout/PageContainer"

export default function DashboardLayout() {
  return (
    <div className="min-h-screen flex">
      <Sidebar />
      <div className="flex-1 flex flex-col">
        <Header />
        <PageContainer>
          <Outlet />
        </PageContainer>
      </div>
    </div>
  )
}
