go build fib.go.go
Measure-Command {.\fib.go.exe | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
