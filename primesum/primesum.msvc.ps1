Measure-Command { .\primesum.msvc.exe | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
