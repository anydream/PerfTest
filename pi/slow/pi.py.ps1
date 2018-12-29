Measure-Command { python pi.py | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
