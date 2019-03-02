# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "GitHub/ProjectEuler/JuliaLang/Problem0002/0002_01_01.jl" )
# 

# Project Euler
# https://projecteuler.net/problem=3
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# <module>s and <function>s to use
Base.MainInclude.include( "../support/support_projecteuler.jl" )
Base.MainInclude.include( "0003_support.jl" )


function problem0003( target::Core.Integer )

	# [1] target::Core.Integer
	# find the largest prime factor of the `target`

	# STEP.END
	return Main.SupportProjectEuler.largest_prime_factor( target )
	
end


#==============================================================================================================================#
# Main process is below                                                                                                        #
#==============================================================================================================================#

Main.show_result( Base.convert( Core.Int64,        13195 ) )
Main.show_result( Base.convert( Core.Int64, 600851475143 ) )
