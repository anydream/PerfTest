Measure-Command { d8 fib.js | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
