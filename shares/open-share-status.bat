@echo off

FOR /F "tokens=* delims=" %%x in (shares-list.txt) DO (
    echo opening %%x share price in google
    start chrome "https://www.google.com/search?q="+%%x+"+share"
    @REM start firefox "https://www.google.com/search?q="+%%x+"+share"
)
