# file created : 2018.10.28
# file updated : 2019.01.28
# 
# [tested version]
# Version 1.0.2 (2018-11-08)
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

# show the result of main function
function show_result( max::Core.Integer )

	# argument of this function
	# [1] max::Core.Integer
	# Find the sum of all the multiples of 3 or 5 below `max`.

	# STEP.01
	Base.println( Base.stdout , "[Data from Base.@timev]" )
	Base.@timev result_value = problem0001( max )

	# STEP.02
	Base.println( Base.stdout , "[returned value]" )
	Base.println( Base.stdout , "argument : ",max )
	Base.println( Base.stdout , "result   : ", result_value )
	Base.println( Base.stdout , "" )
	
end

#==============================================================================================================================#
# Main process is below                                                                                                        #
#==============================================================================================================================#

show_result(     10 )
show_result(   1000 )
show_result( 100000 )