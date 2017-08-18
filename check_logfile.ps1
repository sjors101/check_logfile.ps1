# Author: Sjors101 <https://github.com/sjors101/>, 17/08/2017
# Check windows logfile for log severity levels
#
# Example: .\check_logfile.ps1 'C:\applog.txt' 50

$TailValue = 12

if (!$args[0]){
    Write-Host "No logfile provided"
	exit 0
}
else{  
    if ($args[1]){
        $TailValue = $args[1]
    }
}

$logfile = Get-Content $args[0] -Tail $TailValue

foreach ($line in $logfile) {     
    if ($line -like '*ERROR*') { 
		Write-Host $line
        exit 2
    }
    elseif ($line -like '*WARM*') { 
        Write-Host $line
        exit 1
    }
}
Write-Host "All good"
exit 0
