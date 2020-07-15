$Dir_to_scan = Read-Host "Enter the directory/file you wish to scan. Example c:\folder\filename.txt"
$User_quar_Dir = Read-Host "Choose a Directory for storing Quarantined files"
Write-Warning -Message "Must write-out the filename as well. Example c:\folder\log.txt"
$Log_dir = Read-Host "Choose a Directory for storing ClamAV Logs"

<#Simply input the file path for ClamAV inside the parenthesis "insert-filepath" #>
cd "C:\Program Files\ClamAV"
Write-Host "Scanning started. Grab some Coffee"
./clamscan -r $Dir_to_scan --move=$User_quar_Dir --log=$Log_dir
Write-Host "Scan Complete!" -ForegroundColor white -BackgroundColor red
type $Log_dir
Write-Host "Automatically closes after 2 Minutes" -ForegroundColor white -BackgroundColor red

<#Simply Adjust the value 120 hear as it represents seconds which is clearly stated.#>
Start-Sleep -Seconds 120
