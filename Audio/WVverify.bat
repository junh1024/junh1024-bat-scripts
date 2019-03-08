for %%a in ( *.wv ) DO (
"wvunpack.exe" -l -v "%%a"
) 
pause