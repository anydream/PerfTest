ForEach ($_ in Get-ChildItem -Path ".\" -ErrorAction SilentlyContinue -Filter *.ps1) {
  if($_ -is [System.IO.FileInfo] -and ($_.name -ne "index.ps1")) 
  {
    Write-Output ("[" + $_.BaseName + "]")
    powershell (".\" + $_.name);
  }
}