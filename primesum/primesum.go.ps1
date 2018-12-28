go build primesum.go.go
Measure-Command {.\primesum.go.exe | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
