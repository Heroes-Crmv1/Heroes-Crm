Set-Content -Path "src\lib\supabase.ts" -Value @"
import { createClient } from "@supabase/supabase-js"

const supabaseUrl = import.meta.env.VITE_SUPABASE_URL
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY

export const supabase = createClient(supabaseUrl, supabaseAnonKey)
"@

Set-Content -Path ".env" -Value @"
VITE_SUPABASE_URL=https://uvswmgfvyqjqspmluzbz.supabase.co
VITE_SUPABASE_ANON_KEY=sb_publishable_DlULu8HuQAZfhwRwK1vpyw_rVaqWLub
"@