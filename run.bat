@echo off
REM you need write at sjis


SETLOCAL ENABLEDELAYEDEXPANSION

SET LF=^

SET EXE_PATH=%1
SET text=%2

REM START %~dp0vrx.exe !text!
REM START %1 %2
START !EXE_PATH! !text!

ENDLOCAL
