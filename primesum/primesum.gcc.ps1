g++ primesum.cpp -Ofast -o primesum.gcc.exe
Measure-Command { .\primesum.gcc.exe | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
