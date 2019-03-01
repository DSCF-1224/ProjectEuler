# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "0010_support.jl" )

# Project Euler
# Problem 0010

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# <module>s and <function>s to use
Base.MainInclude.include( "../support/support_projecteuler.jl" )
Base.MainInclude.include( "0010_support.jl" )


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

	# [1] target::Core.Integer
	# judge whether the integer `target` is a prime number or not
	# if `target` was     a prime number -> true
	# if `target` was NOT a prime number -> false

	if Base.isequal( largest_prime_factor( target ), target )
		return true
	else
		return false
	end

end

function problem0010( limit::Core.Integer )

	# [1] limit::Core.Integer
	# find the sum of all the primes below `limit`

	# STEP.01
	# initialize the counter
	sum    = Base.zero( limit )
	buf_PN = Base.one( limit )

	# STEP.02
	# search the prime numbers
	while buf_PN < limit

		# STEP.02.01
		# update the buffer
		buf_PN += 1

		# STEP.02.02
		# judge the value of buffer
		stat = Main.isprime( buf_PN )

		if stat
			sum += buf_PN
		end

	end

	# STEP.END
	return sum

end


#==============================================================================================================================#
# Main process is below                                                                                                        #
#==============================================================================================================================#

Main.show_result( Base.convert( Core.UInt64,   10   ) )
Main.show_result( Base.convert( Core.UInt64, 2*10^1 ) )
Main.show_result( Base.convert( Core.UInt64, 2*10^2 ) )
Main.show_result( Base.convert( Core.UInt64, 2*10^3 ) )
Main.show_result( Base.convert( Core.UInt64, 2*10^4 ) )
Main.show_result( Base.convert( Core.UInt64, 2*10^5 ) )
