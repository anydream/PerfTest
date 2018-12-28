go build primesum.go.go
powershell "Measure-Command {.\primesum.go.exe | Write-Host}"
pause