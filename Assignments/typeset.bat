@ECHO OFF

@REM change the codepage to UTF-8
@CHCP 65001 > NUL

@REM change the current directory to the one of this BAT file exists
@CD /D %~dp0

@REM check whether the target LTX file exists
SET name_file_trgt="version01.ltx"

IF EXIST %name_file_trgt% (
	@REM activate latex make file
	latexmk -pvc -lualatex %name_file_trgt%
) ELSE (
	call :ECHO_PrintStatus
	call :ECHO_ErrMsg %name_file_trgt%
	call :ECHO_PrintStatus
	ECHO command "EXIT" will be activated !
	PAUSE
	EXIT /B
)

:ECHO_ErrMsg
	SET str_filename=%~1
	ECHO failed to find %str_filename%
	EXIT /B

:ECHO_PrintStatus
	ECHO [STATUS]
	EXIT /B
