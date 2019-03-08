for /F "tokens=1,2" %%a in (filelist.txt) do ( "sox.exe" --combine merge %%a %%b -C 8 %%a_out.flac )
pause
