@REM # STEP.01
@REM # set the paths to use
@SET path_fldr_ghc=
@SET path_fldr_github=
@SET path_fldr_work=%path_fldr_github%\ProjectEuler\Haskell\Problem0005

@REM # STEP.02
@REM # move the current directory to the `ghc.exe`
@CD /D %path_fldr_ghc%

@REM # STEP.03
@REM # compile the target code
@ghc -V
@ghc "%path_fldr_work%\ver01.hs" -Wall -O2 -o "%path_fldr_work%\ver01.exe"

@REM # STEP.END
@PAUSE