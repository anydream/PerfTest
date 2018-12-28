Measure-Command { dart fib.dart | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
