# check_logfile.ps1
Check windows logfile for log severity levels

This small Nagios script will loop the lines in a logfile, default the last 12 lines will be scanned. You can change the number of lines by providing a integer in the second argument.

Example:
.\check_logfile.ps1 'C:\applog.txt' 50
