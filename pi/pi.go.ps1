go build pi.go.go
powershell "Measure-Command {.\pi.go.exe | Write-Host}"
pause