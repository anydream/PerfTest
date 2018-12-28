Measure-Command { luajit pi.lua | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
