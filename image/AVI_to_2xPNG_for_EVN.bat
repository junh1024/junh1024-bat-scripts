REM export a 2x avi with black bgd, enable transparency, can use UTvideo RGBA for compression. For an anim that starts on 0 & ends on 64, export a few extra frames since some apps dunno about encoder latency. Preset for a certain ship.
REM unsharp to get detail, bilinear for less ringing on mask.
set IM_path=C:\Program Files\ImageMagick 6.71
set size=184x184
REM do mask
"C:\Program Files\ffmpeg\ffmpeg.exe" -i "%~f1"  -vf "alphaextract,scale=iw*.5:ih*.5:flags=bilinear"  -vcodec pam -f rawvideo -y "%~n1.pam"
"%IM_path%\montage.exe" "%~n1.pam" -tile 6x11 -geometry %size% "%~n1_tile_mask.png"
"%IM_path%\convert.exe" "%~n1_tile_mask.png"   -channel RGB -threshold 20%% "%~n1_tile_mask.png" 
REM do main
"C:\Program Files\ffmpeg\ffmpeg.exe" -i "%~f1"  -vf "unsharp=la=0.5,scale=iw*.5:ih*.5:flags=bicubic"  -vcodec pam -f rawvideo -y "%~n1.pam"
"%IM_path%\montage.exe" "%~n1.pam" -tile 6x11 -geometry %size% "%~n1_tile.png"
pause
