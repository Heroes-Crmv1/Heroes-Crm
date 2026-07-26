Set-Content -Path "src\pages\Home.tsx" -Value @"
export default function Home() {
  return (
    <div className="p-8">
      <h1 className="text-2xl font-bold">Heroes CRM</h1>
      <p className="text-gray-500">Welcome home page.</p>
    </div>
  )
}
"@

Set-Content -Path "src\pages\Login.tsx" -Value @"
export default function Login() {
  return (
    <div className="p-8">
      <h1 className="text-2xl font-bold">Login</h1>
    </div>
  )
}
"@

Set-Content -Path "src\pages\Register.tsx" -Value @"
export default function Register() {
  return (
    <div className="p-8">
      <h1 className="text-2xl font-bold">Register</h1>
    </div>
  )
}
"@

Set-Content -Path "src\pages\ForgotPassword.tsx" -Value @"
export default function ForgotPassword() {
  return (
    <div className="p-8">
      <h1 className="text-2xl font-bold">Forgot Password</h1>
    </div>
  )
}
"@

Set-Content -Path "src\pages\Dashboard.tsx" -Value @"
export default function Dashboard() {
  return (
    <div className="p-8">
      <h1 className="text-2xl font-bold">Dashboard</h1>
    </div>
  )
}
"@

Set-Content -Path "src\pages\NotFound.tsx" -Value @"
export default function NotFound() {
  return (
    <div className="p-8">
      <h1 className="text-2xl font-bold">404 - Page Not Found</h1>
    </div>
  )
}
"@