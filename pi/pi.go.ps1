go build pi.go.go
Measure-Command { .\pi.go.exe | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
