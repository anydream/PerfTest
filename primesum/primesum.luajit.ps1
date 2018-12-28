Measure-Command { luajit primesum.lua | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
