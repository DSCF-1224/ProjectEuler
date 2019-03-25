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
function show_result(path_file_data::Core.AbstractString; size::Core.Integer)

	# [1] limit::Core.Integer
	# find the sum of all the primes below `limit`

	# STEP.01
	retval, t, bytes, gctime, memallocs = Base.@timed Main.problem0011( path_file_data; size=size )

	# STEP.02
	Main.SupportProjectEuler.println_timed( t, bytes, gctime, memallocs )
	
	# STEP.03
	Base.println( Base.stdout , "[returned value]" )
	Base.println( Base.stdout , "argument : ",limit )
	Base.println( Base.stdout , "result   : ", retval, "\n" )
	
end
