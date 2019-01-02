g++ fib.cpp -Ofast -o fib.gcc.exe
Measure-Command { .\fib.gcc.exe | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
