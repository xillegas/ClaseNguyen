@echo off
TITLE Corrida de XeLaTeX
color 0a
taskkill /FI "WINDOWTITLE eq demo.pdf"
cd "C:\Users\xillegas\Documents\Acad‚mico USB\Master 2022\Trimestre 2\ClaseNguyen\BatchXelatex.bat"
xelatex demo.tex
::| findstr /a:0D "Warning error line"
Start demo.pdf
echo .
echo ::::::::::::::::::::::::::::::::::::::::::::
echo  Proceso de ejecuci¢n de XeLaTeX terminado
echo ::::::::::::::::::::::::::::::::::::::::::::
echo  Cantidad de warnings:
find /i /c "warning" demo.log
echo .
echo  Cantidad de ofensas:
find /i /c "Overfull" demo.log
echo .
findstr /i /c:"Rerun to get" demo.log
findstr /i /c:"undefined" demo.log
echo .
::pause
::exit

REM Batch de prueba para ejecutar PDF LaTeX
REM Compila el archivo *.tex y genera el pdf
