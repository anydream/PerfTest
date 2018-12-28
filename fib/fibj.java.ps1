javac fibj.java
Measure-Command { java fibj | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
