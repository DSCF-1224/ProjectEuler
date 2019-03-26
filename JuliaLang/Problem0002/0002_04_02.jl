# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "GitHub/ProjectEuler/JuliaLang/Problem0002/0002_04_02.jl" )
# 

# Project Euler Problem 0002 [Even Fibonacci numbers]
# https://projecteuler.net/problem=2
# Each new term in the Fibonacci sequence is generated by adding the previous two terms.
# By starting with 1 and 2, the first 10 terms will be:
#	1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million,
# find the sum of the even-valued terms.

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# <module>s and <function>s to use
Base.MainInclude.include( "../support/support_projecteuler.jl" )
Base.MainInclude.include( "0002_support.jl" )

module Fibonacci

	const init_val_1st = Base.one( Core.UInt32 )
	const init_val_2nd = init_val_1st + init_val_1st

	mutable struct tuple_Fibonacci
		 first  :: Core.UInt32
		 second :: Core.UInt32
		 itr    :: Core.UInt32  
	end

	function calc_FibonacciNum_core( tuple_input::tuple_Fibonacci )

		if Base.isequal( tuple_input.itr , 1 )
			return tuple_input
		else
			return calc_FibonacciNum_core( tuple_Fibonacci(tuple_input.second, +(tuple_input.first, tuple_input.second), tuple_input.itr - 1) )
		end

	end

	function calc_FibonacciNum(term::Core.UInt32)

		return calc_FibonacciNum_core( tuple_Fibonacci(init_val_1st, init_val_2nd, term) ).first

	end

end

# calculate the target sum of the even-valued terms whose values do not exceed `max`
function problem0002( max::Core.Integer )

	# argument of this function
	# [1] max::Core.Integer
	# calculate the target sum of the even-valued terms whose values do not exceed `max`

	# STEP.01
	# initialize the variable to store the target sum and an iterator
	sum = Base.zero( max )
	itr = Base.one( max )

	# STEP.02
	# calculate the target sum
	while Base.isless( sum, max )

		# STEP.02.01
		# update the Fibonacci sequence
		buf_Fibonacci = Fibonacci.calc_FibonacciNum( itr )

		# STEP.02.02
		# update the target sum
		if Main.SupportProjectEuler.ismultiple( target=buf_Fibonacci, base=2 )
			sum += buf_Fibonacci
		end

		# STEP.02.03
		# update the iterator
		itr += Base.one( max )

	end

	# STEP.TRUE_END
	return sum

end


#==============================================================================================================================#
# Main process is below                                                                                                        #
#==============================================================================================================================#

Main.show_result( Base.convert( Core.UInt32, 4*10^6 ) )