for %%a in ( *.flac ) DO (
"flac.exe" -w -s -t "%%a" >> flac.txt 2>&1
) 
pause