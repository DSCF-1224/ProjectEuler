# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "GitHub/ProjectEuler/JuliaLang/Problem0001/0001_03.jl" )

# Project Euler Problem 0001 [Multiples of 3 and 5]
# https://projecteuler.net/problem=1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# <module>s and <function>s to use
Base.MainInclude.include( "../support/support_projecteuler.jl" )
Base.MainInclude.include( "0001_support.jl" )

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

#==============================================================================================================================#
# Main process is below                                                                                                        #
#==============================================================================================================================#

show_result( 10^1 )
show_result( 10^3 )
show_result( 10^9 )