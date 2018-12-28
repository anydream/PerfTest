ForEach ($_ in Get-ChildItem -Path ".\" -Recurse -ErrorAction SilentlyContinue -Filter *.ps1) {
  if($_ -is [System.IO.FileInfo] -and ($_.name -ne "index.ps1")) 
  {
    powershell (".\" + $_.name);
  }
}