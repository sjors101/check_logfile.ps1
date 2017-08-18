## check_logfile.ps1
Check windows logfile for log severity levels

This small Nagios script will loop the lines in a logfile, default the last 12 lines will be scanned. You can change the number of lines by providing a integer in the second argument.

## Example:
```sh
.\check_logfile.ps1 'C:\applog.txt' 50
```
## NRPE config:
Add these lines to NRPE:

```sh
; POWERSHELL WRAPPING -
ps1 = cmd /c echo scripts\\%SCRIPT% %ARGS%; exit($lastexitcode) | powershell.exe -command -

[/settings/external scripts/wrapped scripts]
check_logfile = check_logfile.ps1 $ARG1$ $ARG2$
```
