$services = (Get-Service)|Where name -eq "wuauserv"

$serviceName = $services.Name
$servicestatus = $services.Status

if ($servicestatus -eq "Stopped"){

Write-host "Attempting to start the service" -ForegroundColor Yellow

Start-Service -Name $serviceName -Force 

Write-Host "Mission successfull" -ForegroundColor Cyan

}

$servicestatus
