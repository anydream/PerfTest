$env:NODE_ENV="production";
Measure-Command {node pi.node.js | Write-Host }
pause