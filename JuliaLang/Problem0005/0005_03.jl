# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "GitHub/ProjectEuler/JuliaLang/Problem0005/0005_01.jl" ) 

# Project Euler
# Problem 0005

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# <module>s and <function>s to use
Base.MainInclude.include( "../support/support_projecteuler.jl" )
Base.MainInclude.include( "0005_support.jl" )

function problem0005( num::Core.Integer )

	# argument of this function
	# [1] num::Core.Integer
	# return the smallest positive number that is evenly divisible by all of the numbers from 1 to `num`

	# STEP.01
	# initialize the variable to store the return value of this function
	lcm = Base.one( num )

	# STEP.02
	# calculate the target LCM
	for itr in 1:1:num
		lcm = Base.lcm( lcm, itr )
	end

	# STEP.TRUE_END
	return lcm

end

#==============================================================================================================================#
# Main process is below                                                                                                        #
#==============================================================================================================================#

Main.show_result( Base.convert( Base.GMP.BigInt, 10 ) )
Main.show_result( Base.convert( Base.GMP.BigInt, 20 ) )
