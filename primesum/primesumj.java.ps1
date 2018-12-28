javac primesumj.java
Measure-Command { java primesumj | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
