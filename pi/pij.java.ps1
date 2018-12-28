javac pij.java
Measure-Command { java pij | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds