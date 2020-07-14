$Dir_to_scan = Read-Host "Enter the directory/file you wish to scan. Example c:\folder\filename.txt"
$User_quar = Read-Host "Choose a Directory for storing Quarantined files."
Write-Warning -Message "Must write-out the filename as well. Example c:\folder\filename.txt"
$Logdir = Read-Host "Choose a Directory for story ClamAV Logs."

cd "C:\Program Files\ClamAV"
Write-Host "Scanning started. Grab some Coffee"
./clamscan -r $Dir_to_scan --move=$User_quar --log=$Logdir
Write-Host "Scan Complete!" -ForegroundColor white -BackgroundColor red
