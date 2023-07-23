$bp="C:\Users\simon\apps\usd"
$pxr="$bp\lib\python\pxr"
$env:PYTHONPATH="$bp\lib\python;$bp\lib;$pxr\Tf"
$env:PATH="$env:PATH;$bp\lib"
$pi="$bp\python\python"
if(!(Test-Path -Path $pi)){
    Write-Host "Python is not available at $pi"
    return
}
$cmd,$cmdargs=$args
$fp="$bp\bin"
$fullCmd="$fp\$cmd"
if (Test-Path -Path $fullCmd -PathType Leaf) {
    & $pi $fullCmd $cmdargs
}else{
    Write-Host "$cmd is not available at $fp"
    Write-Host "PYTHONPATH=$env:PYTHONPATH"
    & $pi
}
