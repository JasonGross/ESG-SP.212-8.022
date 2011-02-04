optipng *.png
FOR %%i IN (*.png) DO (
  pngout "%%i"
)
pause
