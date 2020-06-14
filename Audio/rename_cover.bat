for /F "tokens=*" %%a IN ('dir /s /b *.flac') DO (  
cd "%%~pa"
ren "cover.jpg" "%%~na.jpg" 
cd..
)
REM ren
pause
 REM "%~dp1%~nx1"