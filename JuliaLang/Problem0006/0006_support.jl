# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "0006_support.jl" )

# Project Euler
# Problem 0006

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# show the result of main function
function show_result( num::Core.Integer )

	# argument of this function
	# [1] num::Core.Integer
	# find the difference between the sum of the squares of the first `num` natural numbers and the square of the sum

	# STEP.01
	retval, t, bytes, gctime, memallocs = Base.@timed Main.problem0006( num )

	# STEP.02
	Main.SupportProjectEuler.println_timed( t, bytes, gctime, memallocs )
	
	# STEP.03
	Base.println( Base.stdout , "[returned value]" )
	Base.println( Base.stdout , "argument : ",num )
	Base.println( Base.stdout , "result   : ", retval, "\n" )
	
end
