@REM # STEP.01
@REM # show status of compiling process
@ECHO #=======#
@ECHO # START #
@ECHO #=======#

@REM # STEP.02
@REM # set the path of folders to use
@SET path_folder_gfortran= ???
@SET path_folder_GitHub= ???
@SET path_folder_GitHub_Fortran=%path_folder_GitHub%Fortran\
@SET path_folder_GitHub_ProjectEuler=%path_folder_GitHub%ProjectEuler\


@REM # STEP.03
@REM # compile each F08 file
@gfortran ^
-c ^
-Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^
%path_folder_GitHub_Fortran%miniparts\IsMultiple.f08 ^
%path_folder_GitHub_Fortran%support\support_system_clock.f08 ^
%path_folder_GitHub_ProjectEuler%Fortran\support\support_projecteuler.f08 ^
%path_folder_GitHub_ProjectEuler%Fortran\Problem0002\Problem0002.f08 ^
%path_folder_GitHub_ProjectEuler%Fortran\Problem0002\main.f08


@REM # STEP.04
@REM # create EXE file
@gfortran ^
-o %path_folder_gfortran%Problem0002.exe ^
-Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^
%path_folder_gfortran%ismultiple.o ^
%path_folder_gfortran%support_system_clock.o ^
%path_folder_gfortran%support_projecteuler.o ^
%path_folder_gfortran%Problem0002.o ^
%path_folder_gfortran%main.o


@REM # STEP.05
@REM # show status of compiling process
@ECHO #==========#
@ECHO # FINISHED #
@ECHO #==========#
