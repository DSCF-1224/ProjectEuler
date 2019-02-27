# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "0007_support.jl" )

# Project Euler
# Problem 0007

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# <module>s and <function>s to use
Base.MainInclude.include( "../support/support_projecteuler.jl" )
Base.MainInclude.include( "0007_support.jl" )


function largest_prime_factor( target::Core.Integer )

	# [1] target::Core.Integer
	# find the largest prime factor of the `target`
	
	# STEP.01
	# initialize the local variables for this <function>
	buf_trgt    = target
	buf_one     = Base.one( target )
	buf_zero    = Base.zero( target )
	factor_crnt = buf_one + buf_one
	factor_last = buf_one

	# STEP.02
	# find the largest prime factor of the `target`
	while Base.isless( buf_one, buf_trgt )

		if Main.SupportProjectEuler.ismultiple( target=buf_trgt, base=factor_crnt )

			factor_last = factor_crnt

			while Main.SupportProjectEuler.ismultiple( target=buf_trgt, base=factor_crnt )
				buf_trgt = Base.div( buf_trgt, factor_crnt )
			end

		end

		factor_crnt += buf_one

	end

	# STEP.END
	return factor_last
	
end

function isprime( target::Core.Integer )

	if Base.isone( largest_prime_factor( target ) )
		return true
	else
		return false
	end

end


#==============================================================================================================================#
# Main process is below                                                                                                        #
#==============================================================================================================================#

Main.show_result( Base.convert( Core.Int64,        13195 ) )
Main.show_result( Base.convert( Core.Int64, 600851475143 ) )
