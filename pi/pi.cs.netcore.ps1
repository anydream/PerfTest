Measure-Command { dotnet pi.cs.dll | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
