ECHO OFF

REM # STEP.01
REM # set the path
SET path_folder_gfortran=
SET path_folder_GitHub_Fortran=
SET path_folder_GitHub_ProjectEuler=

REM # STEP.02
REM # compile each F08 file
gfortran ^
-c ^
-Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^
%path_folder_GitHub_ProjectEuler%Fortran\support\support_projecteuler.f08 ^
%path_folder_GitHub_Fortran%support\support_system_clock.f08 ^
%path_folder_GitHub_Fortran%miniparts\number_of_digits.f08 ^
%path_folder_GitHub_ProjectEuler%Fortran\Problem0004\Problem0004.f08 ^
%path_folder_GitHub_ProjectEuler%Fortran\Problem0004\main.f08

REM # STEP.03
REM # create EXE file
gfortran ^
-o Problem0004.exe ^
-Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^
%path_folder_gfortran%number_of_digits.o ^
%path_folder_gfortran%support_projecteuler.o ^
%path_folder_gfortran%support_system_clock.o ^
%path_folder_gfortran%Problem0004.o ^
%path_folder_gfortran%main.o

ECHO #================================================================================================#
ECHO #                                            FINISHED                                            #
ECHO #================================================================================================#
ECHO ON