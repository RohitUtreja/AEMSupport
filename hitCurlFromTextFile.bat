@echo off
SET /a c = 1
setlocal ENABLEDELAYEDEXPANSION
For /f “tokens=*” %%s in (text.txt) do (
	set /a c=c+1
	echo !c!
	echo op_!c!.txt
	%%s -o op_!c!.txt
)
pause