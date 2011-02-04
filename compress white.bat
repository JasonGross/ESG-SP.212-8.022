MKDIR bak
FOR %%i in (*.png) DO (
  IF NOT EXIST "bak\%%i" COPY "%%i"  "bak\%%i"
  convert "bak\%%i"  -units pixelsperinch -density 200 -fuzz 10%% -fill white -opaque white "%%i"
)
optipng *.png
pause
