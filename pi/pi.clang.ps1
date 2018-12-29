clang pi.cpp -Ofast -o pi.clang.exe
Measure-Command { .\pi.clang.exe | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
