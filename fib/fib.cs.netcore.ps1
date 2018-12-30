Measure-Command { dotnet fib.cs.dll | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
