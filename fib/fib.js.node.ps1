$env:NODE_ENV="production";
Measure-Command {node fib.node.js | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
