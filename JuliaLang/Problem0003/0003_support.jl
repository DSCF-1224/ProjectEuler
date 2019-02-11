# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "0003_support.jl" )

# Project Euler Problem 0003 [Largest prime factor]
# https://projecteuler.net/problem=3
# The prime factors of 13195 are 5, 7, 13 and 29.  
# What is the largest prime factor of the number 600851475143 ?

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# show the result of main function
function show_result( target::Core.Integer )

	# argument of this function
	# [1] target::Core.Integer
	# the target integer to find the largest prime factor

	# STEP.01
	retval, t, bytes, gctime, memallocs = Base.@timed Main.problem0003( target )

	# STEP.02
	Main.SupportProjectEuler.println_timed( t, bytes, gctime, memallocs )
	
	# STEP.03
	Base.println( Base.stdout , "[returned value]" )
	Base.println( Base.stdout , "argument : ",target )
	Base.println( Base.stdout , "result   : ", retval, "\n" )
	
end
