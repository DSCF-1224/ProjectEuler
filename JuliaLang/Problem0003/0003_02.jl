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
	
	# STEP.01
	# initialize the local variables for this <function>
	buf_trgt    = target
	buf_zero    = Base.zero( target )
	buf_one     = Base.one( target )
	buf_two     = buf_one + buf_one
	factor_crnt = buf_two
	factor_last = Core.undef

	# STEP.02
	# check whether `2` is the largest prime number of `target`
	if Main.SupportProjectEuler.ismultiple( target=buf_trgt, base=buf_two )
		while Main.SupportProjectEuler.ismultiple( target=buf_trgt, base=buf_two )
			buf_trgt = Base.div( buf_trgt, buf_two )
		end
	else
		factor_last = buf_one
	end

	# STEP.03
	factor_crnt = buf_one + buf_two

	while Base.isless( buf_one, buf_trgt )

		if Main.SupportProjectEuler.ismultiple( target=buf_trgt, base=factor_crnt )

			factor_last = factor_crnt

			while Main.SupportProjectEuler.ismultiple( target=buf_trgt, base=factor_crnt )
				buf_trgt = Base.div( buf_trgt, factor_crnt )
			end

		end

		factor_crnt += buf_two

	end

	# STEP.END
	return factor_last
	
end


#==============================================================================================================================#
# Main process is below                                                                                                        #
#==============================================================================================================================#

Main.show_result( Base.convert( Core.Int64, 600851475143 ) )
