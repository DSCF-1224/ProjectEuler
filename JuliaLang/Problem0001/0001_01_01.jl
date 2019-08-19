# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "0001_01_01.jl" )

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
	# initialize the buffer of summation and so on
	sum = Base.zero( max )
	min = Base.one( max )
	
	# STEP.02
	# calculate the target summation
	for natural_num in min : min : max-min
		
		if Main.SupportProjectEuler.ismultiple(target=natural_num, base=3)
			sum += natural_num
		elseif Main.SupportProjectEuler.ismultiple(target=natural_num, base=5)
			sum += natural_num
		end

	end

	# STEP.END
	# determine the return value of this function
	return sum

end

#==============================================================================================================================#
# Main process is below                                                                                                        #
#==============================================================================================================================#

Main.show_result( Base.convert( Core.UInt64, 10^1 ) )
Main.show_result( Base.convert( Core.UInt64, 10^3 ) )

# EOF
