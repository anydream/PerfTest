g++ pi.cpp -Ofast -o pi.gcc.exe
Measure-Command { .\pi.gcc.exe | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
