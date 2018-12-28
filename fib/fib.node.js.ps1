$env:NODE_ENV="production";
powershell "Measure-Command {node fib.node.js | Write-Host}"
pause