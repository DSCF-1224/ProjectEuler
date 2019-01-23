# file created : 2018.10.28
# file updated : 2018.10.28
# 
# Version 1.0.0 (2018-08-08)
# Base.MainInclude.include( "ProjectEuler/Problem0001/0001_02.jl" )
# 

# Project Euler
# https://projecteuler.net/problem=1
# Problem 0001 [Multiples of 3 and 5]
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

function problem0001( upperlimit::Core.Integer )

	# STEP.01
	# initialize the buffer of sum and iterator
	sum = Base.zero( upperlimit )
	itr = Base.zero( upperlimit )
	
	# STEP.02
	# calculate the target sum
	while Base.isless( itr , upperlimit )
		
		# STEP.02.01
		# update the sum
		if Base.isequal( itr % 3 , Base.zero( upperlimit ) )
			sum += itr
		elseif Base.isequal( itr % 5 , Base.zero( upperlimit ) )
			sum += itr
		end

		# STEP.02.02
		# update the iterator
		itr += 1

	end

	# STEP.END
	return sum

end

Base.println( Base.stdout , problem0001(   10 ) )
Base.println( Base.stdout , problem0001( 1000 ) )