if(!$env:SCOOP_HOME) { $env:SCOOP_HOME = resolve-path (split-path (split-path (scoop which scoop.ps1))) }
$checkver = "$env:SCOOP_HOME/bin/checkhashes.ps1"
$dir = "$psscriptroot/../bucket" # checks the parent dir
Invoke-Expression -command "$checkver -dir $dir $($args | ForEach-Object { "$_ " })"
