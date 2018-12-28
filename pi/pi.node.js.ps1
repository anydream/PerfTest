$env:NODE_ENV="production";
Measure-Command {node pi.node.js | Write-Host} | Select-Object -Property TotalSeconds, TotalMilliseconds
