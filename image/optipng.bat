for /F "tokens=*" %%a IN ('dir /s /b *.png') DO ( "optipng.exe" "%%a" )
