Measure-Command { luajit fib.lua | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
