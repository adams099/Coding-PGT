@echo off
title CODING PGT

echo.
for /f "tokens=*" %%I in ('dir /b /s *.java') do (
if exist dir /b /s *.java (
echo msgbox "File Java Ditemukan" > "%temp%\popup.vbs"
wscript.exe "%temp%\popup.vbs"
echo Ada File Java Pada Direktori :
echo %%I
goto pilihan
)

if %errorlevel% == 0 (
echo msgbox "Tidak Ditemukan File Java Pada Direktori" > "%temp%\popup.vbs"
wscript.exe "%temp%\popup.vbs"
goto exit
)

:pilihan
echo.
set/p "pil= ->  Apakah Anda Ingin Mengganti Nama File (Y/N) ? :"
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
echo msgbox "Tidak Mengganti Nama File" > "%temp%\popup.vbs"
wscript.exe "%temp%\popup.vbs"
pause
exit