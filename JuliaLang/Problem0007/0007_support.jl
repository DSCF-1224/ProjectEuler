# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "0007_support.jl" )

# Project Euler
# Problem 0007

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# show the result of main function
function show_result( num::Core.Integer )

	# [1] num::Core.Integer
	# find the `num`-th prime number

	# STEP.01
	retval, t, bytes, gctime, memallocs = Base.@timed Main.problem0007( num )

	# STEP.02
	Main.SupportProjectEuler.println_timed( t, bytes, gctime, memallocs )
	
	# STEP.03
	Base.println( Base.stdout , "[returned value]" )
	Base.println( Base.stdout , "argument : ",num )
	Base.println( Base.stdout , "result   : ", retval, "\n" )
	
end
