@echo OFF

cd D:\PGT\Coding-PGT\kemampuan-dasar\kemampuan-dasar-1\kasus
DIR *.java
echo.
echo Ada file Java pada direktori D:\PGT\Coding-PGT\kemampuan-dasar\kemampuan-dasar-1\kasus

:choice
echo.
echo pilih (y) untuk mengubah nama file, dan (t) untuk keluar
set choice=
set /p choice="sample-java.java Ada, ingin mengubah nama file (y/t) ? "

if %choice% == y (
   
    echo.
    set /p input="Masukan nama file baru : " 
    
    echo.
    GOTO rename


) else if %choice% == t (
echo.
    echo Anda tidak jadi mengubah nama file
    PAUSE
    EXIT


) else (
    echo pilih y, atau t
    GOTO choice
)

:rename
cd D:\PGT\Coding-PGT\kemampuan-dasar\kemampuan-dasar-1\kasus
ren "D:\PGT\Coding-PGT\kemampuan-dasar\kemampuan-dasar-1\kasus\*.java" "%input%.java"
echo.
echo BERHASIL MENGUBAH NAMA FILE

PAUSE > nul
EXIT