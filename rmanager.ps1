# Get the explorer.exe process
$explorer = Get-Process -Name explorer -ErrorAction SilentlyContinue

if ($explorer) {
    Write-Host "Reloading desktop..."
    echo $explorer.id > $($args[0])
} else {
    Write-Host "Explorer is not running."
}