# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "GitHub/ProjectEuler/JuliaLang/Problem0001/0001_01_01.jl" )

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

# main function for this problem
function problem0001( max::Core.Integer )

	# argument of this function
	# [1] max::Core.Integer
	# Find the sum of all the multiples of 3 or 5 below `max`.

	# STEP.01
	# initialize the buffer of sum
	buf_zero = Base.zero( max )
	sum      = buf_zero
	min      = Base.one( max )
	
	# STEP.02
	# calculate the target sum
	for itr in min : min : max-min
		
		if Base.isequal( Base.rem(itr, 3) ,buf_zero )
			sum += itr
		elseif Base.isequal( Base.rem(itr, 5) ,buf_zero )
			sum += itr
		end

	end

	# STEP.END
	return sum

end

#==============================================================================================================================#
# Main process is below                                                                                                        #
#==============================================================================================================================#

Main.show_result( 10^1 )
Main.show_result( 10^3 )
Main.show_result( 10^9 )