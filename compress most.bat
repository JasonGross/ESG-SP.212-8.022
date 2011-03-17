optipng -o7 *.png
FOR %%i in (*.png) DO (
  pngout /v /c0 /f0 "%%i"
  pngout /v /c0 /f5 "%%i"
  pngout /v /c3 /f0 "%%i"
  pngout /v /c3 /f5 "%%i"
)
pause
