"Waiting 30 seconds to launch"
Start-Sleep -Seconds 30
Stop-Service 'LightingService'
Start-Sleep -Seconds 5
"Starting AURA Service"
Start-Service 'LightingService'
"exit"