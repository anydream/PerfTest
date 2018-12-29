clang primesum.cpp -Ofast -o primesum.clang.exe
Measure-Command { .\primesum.clang.exe | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
