# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "0005_support.jl" )

# Project Euler
# Problem 0005

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# show the result of main function
function show_result( num::Core.Integer )

	# argument of this function
	# [1] num::Core.Integer
	# return the smallest positive number that is evenly divisible by all of the numbers from 1 to `num`

	# STEP.01
	retval, t, bytes, gctime, memallocs = Base.@timed Main.problem0005( num )

	# STEP.02
	Main.SupportProjectEuler.println_timed( t, bytes, gctime, memallocs )
	
	# STEP.03
	Base.println( Base.stdout , "[returned value]" )
	Base.println( Base.stdout , "argument : ",num )
	Base.println( Base.stdout , "result   : ", retval, "\n" )
	
end
