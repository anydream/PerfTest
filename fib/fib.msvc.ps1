Measure-Command { .\fib.msvc.exe | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
