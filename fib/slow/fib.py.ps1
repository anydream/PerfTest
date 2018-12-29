Measure-Command { python fib.py | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
