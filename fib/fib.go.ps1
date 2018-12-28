go build fib.go.go
powershell "Measure-Command {.\fib.go.exe | Write-Host}"
pause