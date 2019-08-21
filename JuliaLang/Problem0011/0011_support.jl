# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "0011_support.jl" )

# Project Euler
# Problem 0011

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# show the result of main function
function show_result()

	# [1] limit::Core.Integer
	# find the sum of all the primes below `limit`

	# STEP.01
	Base.print("Enter the absolute path of the data file > ")
	path_datafile_raw = Base.readline(Base.stdin)

	Base.print("Enter the number of adjacent integers    > ")
	len_calc = Base.parse(Core.UInt64, Base.readline(Base.stdin))

	# STEP.02
	retval, t, bytes, gctime, memallocs = Base.@timed Main.problem0011(path_datafile_raw, len_calc)

	# STEP.02
	Main.SupportProjectEuler.println_timed( t, bytes, gctime, memallocs )
	
	# STEP.03
	Base.println( Base.stdout , "[returned value]"          )
	Base.println( Base.stdout , "argument : ", len_calc     )
	Base.println( Base.stdout , "result   : ", retval, "\n" )
	
end
