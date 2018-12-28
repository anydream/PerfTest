$env:NODE_ENV="production";
powershell "Measure-Command {node pi.node.js | Write-Host}"
pause