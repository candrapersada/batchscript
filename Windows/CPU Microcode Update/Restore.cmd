@ECHO OFF
%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe -Command "Expand-Archive -Force -Path '%~DP0Backup.zip' -DestinationPath '%SystemRoot%\System32'"
TIMEOUT /T 5
