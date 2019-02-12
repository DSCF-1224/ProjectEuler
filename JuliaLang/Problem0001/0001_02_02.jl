# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "GitHub/ProjectEuler/JuliaLang/Problem0001/0001_02_02.jl" )

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
	# initialize the buffer of sum and iterator
	buf_zero = Base.zero( max )
	sum      = buf_zero
	itr      = Base.one( max )
	
	# STEP.02
	# calculate the target sum
	while Base.isless( itr , max )
		
		# STEP.02.01
		# update the sum
		if Main.SupportProjectEuler.ismultiple( target=itr, base=3 ) || Main.SupportProjectEuler.ismultiple( target=itr, base=5 )
			sum += itr
		end

		# STEP.02.02
		# update the iterator
		itr += 1

	end

	# STEP.END
	return sum

end

#==============================================================================================================================#
# Main process is below                                                                                                        #
#==============================================================================================================================#

show_result( 10^1 )
show_result( 10^3 )
show_result( 10^9 )