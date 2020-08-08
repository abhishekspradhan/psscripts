$services = (Get-Service)|Where name -eq "wuauserv"

$serviceName = $services.Name
$servicestatus = $services.Status

if ($servicestatus -eq "Running"){

Write-host "Attempting to stop the service" -ForegroundColor Yellow

Stop-Service -Name $serviceName -Force 

Write-Host "Mission successfull" -ForegroundColor Cyan

}

$servicestatus
