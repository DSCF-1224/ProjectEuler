# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "GitHub/ProjectEuler/JuliaLang/Problem0006/0006_01.jl" ) 

# Project Euler
# Problem 0006

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# <module>s and <function>s to use
Base.MainInclude.include( "../support/support_projecteuler.jl" )
Base.MainInclude.include( "0006_support.jl" )

function problem0006( n::Core.Integer )

	# argument of this function
	# [1] n::Core.Integer
	# find the difference between the sum of the squares of the first `n` natural numbers and the square of the sum

	# STEP.01
	# calculate the sum of the squares of the first `n` natural numbers
	sum_squares = Base.div( n*(n+1)*(2*n+1), 6 )

	# STEP.02
	# calculate the square of the sum of the first `n` natural numbers
	square_sum  = Base.div( n*(n+1), 2 )
	square_sum *= square_sum

	# STEP.TRUE_END
	return square_sum - sum_squares

end


#==============================================================================================================================#
# Main process is below                                                                                                        #
#==============================================================================================================================#

Main.show_result(  10 )
Main.show_result( 100 )
