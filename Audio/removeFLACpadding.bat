for /F "tokens=*" %%i IN ('dir /s /b *.flac') do (
"metaflac.exe" --remove --block-type=PADDING --dont-use-padding "%%~dpni.flac"
"metaflac.exe" --add-padding=4096 "%%~dpni.flac"

)