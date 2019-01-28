# file created : 2018.10.28
# file updated : 2019.01.28
# 
# Version 1.0.0 (2018-08-08)
# Version 1.1.0 (2019-01-21)
# Base.MainInclude.include( "GitHub/ProjectEuler/JuliaLang/Problem0001/0001_01.jl" )
# 

# Project Euler Problem 0001 [Multiples of 3 and 5]
# https://projecteuler.net/problem=1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

#==============================================================================================================================#

function problem0001( max::Core.Integer )

	# argument of this function
	# [1] max::Core.Integer
	# Find the sum of all the multiples of 3 or 5 below `max`.

	# STEP.01
	# initialize the buffer of sum
	sum = Base.zero( max )
	
	# STEP.02
	# calculate the target sum
	for itr in Base.one( max ) : Base.one( max ) : max-Base.one( max )
		
		if Base.isequal( itr % 3 , Base.zero( max ) )
			sum += itr
		elseif Base.isequal( itr % 5 , Base.zero( max ) )
			sum += itr
		end

	end

	# STEP.END
	return sum

end

Base.println( Base.stdout , problem0001(   10 ) )
Base.println( Base.stdout , problem0001( 1000 ) )