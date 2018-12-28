Measure-Command { dart pi.dart | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
