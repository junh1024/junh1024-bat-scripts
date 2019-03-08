for  %%a in ( *.bmp ) do ( "convert.exe" "%%a" "%%a.png" 
"optipng.exe" "%%a.png"
)