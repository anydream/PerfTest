Measure-Command { d8 primesum.js | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
