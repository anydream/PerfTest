Measure-Command { dotnet primesum.cs.dll | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
