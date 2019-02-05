# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "0001_support.jl" )

# Project Euler Problem 0001 [Multiples of 3 and 5]
# https://projecteuler.net/problem=1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# show the result of main function
function show_result( max::Core.Integer )

	# argument of this function
	# [1] max::Core.Integer
	# Find the sum of all the multiples of 3 or 5 below `max`.

	# STEP.01
	retval, t, bytes, gctime, memallocs = Base.@timed problem0001( max )

	# STEP.02
	Main.SupportProjectEuler.println_timed( t, bytes, gctime, memallocs )
	
	# STEP.03
	Base.println( Base.stdout , "[returned value]" )
	Base.println( Base.stdout , "argument : ",max )
	Base.println( Base.stdout , "result   : ", retval, "\n" )
	
end
