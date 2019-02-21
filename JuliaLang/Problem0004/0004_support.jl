# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "0004_support.jl" )

# Project Euler
# Problem 0004

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# show the result of main function
function show_result( num_digit::Core.Integer )

	# argument of this function
	# [1] num_digit::Core.Integer
	# find the largest palindrome made from the product of two `num_digit`-digit numbers

	# STEP.01
	retval, t, bytes, gctime, memallocs = Base.@timed Main.problem0004( num_digit )

	# STEP.02
	Main.SupportProjectEuler.println_timed( t, bytes, gctime, memallocs )
	
	# STEP.03
	Base.println( Base.stdout , "[returned value]" )
	Base.println( Base.stdout , "argument : ",num_digit )
	Base.println( Base.stdout , "result   : ", retval, "\n" )
	
end
