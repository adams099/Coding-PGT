@echo off
title PGT KASUS CARI FILE JAVA

cls
echo.
for /f "tokens=*" %%I in ('dir /b /s *.java') do (
if exist dir /b /s *.java (
echo msgbox "Ada File Java Pada Direktori" > "%temp%\popup.vbs"
wscript.exe "%temp%\popup.vbs"
echo %%I
goto pilihan
)
)
if %errorlevel% == 0 (
echo msgbox "Tidak Ada File Java Pada Direktori" > "%temp%\popup.vbs"
wscript.exe "%temp%\popup.vbs"
goto exit
)
)

:pilihan
echo.
echo pilih (y) untuk mengubah nama file, dan (N) untuk keluar
set/p "pil= ->  Apakah anda ingin mengganti nama file (Y/N) ? :"
echo.
if %pil%==Y (
set /p input="Masukan nama file baru : "
goto rename
)
if %pil%==N goto norename
if %pil%==y  (
set /p input="Masukan nama file baru : "
goto rename
)
if %pil%==n goto norename

:rename
echo.
for /f "tokens=*" %%I in ('dir /b /s *.java') do ren "%%~I" "%input%.java"
echo msgbox "Rename berhasil" > "%temp%\popup.vbs"
wscript.exe "%temp%\popup.vbs"
echo.
for /f "tokens=*" %%I in ('dir /b /s *.java') do (
echo %%I
)
echo.
pause
exit

:norename
echo.
echo msgbox "Rename tidak berhasil" > "%temp%\popup.vbs"
wscript.exe "%temp%\popup.vbs"
pause
exit
