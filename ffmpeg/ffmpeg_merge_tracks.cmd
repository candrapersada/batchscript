@ECHO OFF
PUSHD %~DP0bin
SET Index=0
SET File=%~X1
:Files
IF NOT EXIST "%~1" GOTO :Proc
SET Input=-i "%1" %Input%
SET /A Index=%Index%+1
FOR /F "TOKENS=1,* DELIMS= " %%A IN ("%*") DO CALL :Files %%B
:Proc
IF NOT DEFINED Input GOTO :End
ffmpeg.exe %Input% -filter_complex "amerge=inputs=%Index%" merged_audio_track%File%
:End
TIMEOUT -T 5
