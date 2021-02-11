REM =======================================
REM vrx.exeを起動する際に間に挟むプログラム
REM =======================================

REM vrx.exeと同じフォルダに置きます
REM 改行や置換させたい分をここに処理させるとよい

@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
SET LF=^


SET x=%*
START %~dp0vrx.exe !x!

ENDLOCAL
