
# This is a PowerShell script file with a CD command

# Change the current working directory to C:\ExampleDirectory
cd C:\Windows\System32\inetsrv

# You can also use the Set-Location cmdlet to achieve the same result
# Set-Location C:\Windows\System32\inetsrv

# Now, let's display the current working directory to verify the change
# Write-Host "Current Directory: $(Get-Location)"

$AppPool_Name = "testet"
$AppPool_Status = .\appcmd list apppools $AppPool_Name /text:state

if ($AppPool_Status -eq "Stopped") {
    .\appcmd start apppool /apppool.name:$AppPool_Name
}
