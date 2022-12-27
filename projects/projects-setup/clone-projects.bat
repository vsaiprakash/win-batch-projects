@echo off

@REM https://stackoverflow.com/questions/15567809/batch-extract-path-and-filename-from-a-variable

set projectsPath="C:\Users\vukkumsp\Documents\Projects\
FOR /F "tokens=*" %%x in (project-urls.txt) DO (
    ECHO About to Clone %%x
	ECHO %%x
    FOR %%i IN (%%x) DO (
		ECHO Cloning... %%x
		git clone %%x "%projectsPath%%%~ni
    )
    ECHO Cloned %%x
)

@REM -------------Sample Code used---------------
@REM @ECHO OFF
@REM SETLOCAL
@REM set file=C:\Users\l72rugschiri\Desktop\fs.cfg
@REM FOR %%i IN ("%file%") DO (
@REM ECHO filedrive=%%~di
@REM ECHO filepath=%%~pi
@REM ECHO filename=%%~ni
@REM ECHO fileextension=%%~xi
@REM )