Measure-Command { dart primesum.dart | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
