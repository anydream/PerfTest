Measure-Command { python primesum.py | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
