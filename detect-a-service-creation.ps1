$ServiceName = "MalwareService"

$Services = Get-Service


if ($Services.Name -contains $ServiceName) {
   
    if ($Services | Where-Object {$_.Name -eq $ServiceName -and $_.StartType -eq "Automatic"}) {
   
        Write-Host "ALERT: Malware persistence may be present. Service $ServiceName is set to start automatically."
    }
}
