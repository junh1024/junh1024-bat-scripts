REM rename cover.jpg to match filename of .flac
for /F "tokens=*" %%a IN ('dir /s /b *.flac') DO (  
REM echo "%%~pa"
cd "%%~pa"
ren "cover.jpg" "%%~na.jpg" 
cd..
)
REM ren
pause
 REM "%~dp1%~nx1"