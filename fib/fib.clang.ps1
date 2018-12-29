clang fib.cpp -Ofast -o fib.clang.exe
Measure-Command { .\fib.clang.exe | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
