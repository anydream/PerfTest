Measure-Command { d8 pi.js | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
