# file created : 2018.10.28
# file updated : 2018.10.28
# 
# Version 1.0.0 (2018-08-08)
# Base.MainInclude.include( "ProjectEuler/Problem0001/0001_03.jl" )
# 

# Project Euler
# https://projecteuler.net/problem=1
# Problem 0001 [Multiples of 3 and 5]
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

function sum_multiples(; upperlimit::Core.Integer, divisor::Core.Integer )

	# STEP.01
	# calculate the number of terms for summation
	num_terms = Base.div( upperlimit - Base.one( upperlimit ), divisor )
	
	# STEP.END
	return div( divisor * num_terms * ( num_terms + Base.one( num_terms ) ), 2 )

end

function problem0001( upperlimit::Core.Integer )

	# STEP.01
	# calculate the sum of all the multiples of 3 or 5 or 15 below `upperlimit`
	sum03 = sum_multiples( upperlimit= upperlimit, divisor=  3 )
	sum05 = sum_multiples( upperlimit= upperlimit, divisor=  5 )
	sum15 = sum_multiples( upperlimit= upperlimit, divisor= 15 )

	# STEP.END
	return sum03 + sum05 - sum15
	
end

Base.println( Base.stdout , problem0001(   10 ) )
Base.println( Base.stdout , problem0001( 1000 ) )