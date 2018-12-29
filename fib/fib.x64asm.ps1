clang fib.s -o fib.x64asm.exe
Measure-Command { .\fib.x64asm.exe | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
