$env:NODE_ENV="production";
Measure-Command {node fib.node.js | Write-Host }
pause