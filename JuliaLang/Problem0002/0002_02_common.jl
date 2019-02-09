# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "0002_02_common.jl" )

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

# calculate the value of Fibonacci sequence's `term`-th using memo
function calc_FibonacciNum( term::Core.Integer )

	buf_one = Base.one( term )
	buf_two = buf_one + buf_one

	if Base.isequal( term , buf_one )
		return buf_one
	elseif Base.isequal( term , buf_two )
		return buf_two
	else

		# STEP.01
		# make buffer to memorize the Fibonacci sequence
		buff = Base.Vector{ Core.typeof( term ) }( Core.undef, term )

		# STEP.02
		# store initial condition
		buff[1] = calc_FibonacciNum( buf_one )
		buff[2] = calc_FibonacciNum( buf_two )

		# STEP.03
		# calculate the target term
		for itr in 3:term
			buff[itr] = buff[itr-1] + buff[itr-2]
		end

		# STEP.END
		return buff[term]

	end

end
