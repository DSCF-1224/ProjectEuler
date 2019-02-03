# file created : 2018.10.28
# file updated : 2019.01.28
# 
# [tested version]
# Version 1.0.2 (2018-11-08)
# 
# [how to use]
# Base.MainInclude.include( "GitHub/ProjectEuler/JuliaLang/Problem0001/0001_03.jl" )

# Project Euler
# https://projecteuler.net/problem=1
# Problem 0001 [Multiples of 3 and 5]
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# calculate the sum of all the multiples of `divisor` below `max`
function sum_multiples(; max::Core.Integer, divisor::Core.Integer )

	# STEP.01
	# calculate the number of terms for summation
	num_terms = Base.div( max - Base.one( max ), divisor )
	
	# STEP.END
	return div( divisor * num_terms * ( num_terms + Base.one( num_terms ) ), 2 )

end

# main function for this problem
function problem0001( max::Core.Integer )

	# STEP.01
	# calculate the sum of all the multiples of 3 or 5 or 15 below `max`
	sum03 = sum_multiples( max= max, divisor=  3 )
	sum05 = sum_multiples( max= max, divisor=  5 )
	sum15 = sum_multiples( max= max, divisor= 15 )

	# STEP.END
	return sum03 + sum05 - sum15
	
end

# show the result of main function
function show_result( max::Core.Integer )

	# argument of this function
	# [1] max::Core.Integer
	# Find the sum of all the multiples of 3 or 5 below `max`.

	# STEP.01
	Base.println( Base.stdout , "[Data from Base.@timed]" )
	retval, t, bytes, gctime, memallocs = Base.@timed problem0001( max )

	# STEP.02
	Base.println(
		Base.stdout,
		"t          = ", t,                    "\n",#
		"bytes      = ", bytes,                "\n",#
		"gctime     = ", gctime,               "\n",#
		"allocd     = ", memallocs.allocd,     "\n",#
		"malloc     = ", memallocs.malloc,     "\n",#
		"realloc    = ", memallocs.realloc,    "\n",#
		"poolalloc  = ", memallocs.poolalloc,  "\n",#
		"bigalloc   = ", memallocs.bigalloc,   "\n",#
		"freecall   = ", memallocs.freecall,   "\n",#
		"total_time = ", memallocs.total_time, "\n",#
		"pause      = ", memallocs.pause,      "\n" #
	)
	
	# STEP.03
	Base.println( Base.stdout , "[returned value]" )
	Base.println( Base.stdout , "max    : ", max )
	Base.println( Base.stdout , "result : ", retval, "\n" )
	
end

#==============================================================================================================================#
# Main process is below                                                                                                        #
#==============================================================================================================================#

show_result( 10^1 )
show_result( 10^3 )
show_result( 10^9 )