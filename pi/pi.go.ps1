go build pi.go.go
Measure-Command {.\pi.go.exe } | Select-Object -Property TotalSeconds, TotalMilliseconds
