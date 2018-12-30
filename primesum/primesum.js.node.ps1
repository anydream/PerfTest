$env:NODE_ENV="production";
Measure-Command {node primesum.node.js | Write-Host } | Select-Object -Property TotalSeconds, TotalMilliseconds
