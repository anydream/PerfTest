$env:NODE_ENV="production";
powershell "Measure-Command {node primesum.node.js | Write-Host}"
pause