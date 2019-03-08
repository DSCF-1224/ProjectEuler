# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "GitHub/ProjectEuler/JuliaLang/Problem0007/0007_02.jl" ) 

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
	buf_zero    = Base.zero( target )
	buf_one     = Base.one( target )
	buf_two     = buf_one + buf_one
	factor_crnt = buf_two
	factor_last = buf_one

	# STEP.02
	# find the largest prime factor of the `target`: case prime = 2
	if Base.iseven( buf_trgt )

		# if 2 was the prime factor of the integer `buf_trgt`
		
		# STEP.02.01
		# update the last prime number
		factor_last = factor_crnt

		# STEP.02.02
		# update the `buf_trgt` repeatedly until the `buf_trgt` is not
		while Base.iseven( buf_trgt )
			buf_trgt = Base.div( buf_trgt, factor_crnt )
		end

	end

	# STEP.03
	# find the largest prime factor of the `target`: case prime > 2

		# STEP.03.01
		# update the `factor_crnt`
		factor_crnt += buf_one

		# STEP.03.02
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

function isprime( target::Core.Integer )

	# [1] target::Core.Integer
	# judge whether the integer `target` is a prime number or not
	# if `target` was     a prime number -> true
	# if `target` was NOT a prime number -> false

	if Base.isequal( Main.largest_prime_factor( target ), target )
		return true
	else
		return false
	end

end

function problem0007( num::Core.Integer )

	# [1] num::Core.Integer
	# find the `num`-th prime number

	# STEP.01
	# initialize the counter
	count  = Base.one( num )
	buf_PN = Base.one( num )

	# STEP.02
	# search the prime numbers
	while count <= num

		# STEP.02.01
		# update the buffer
		buf_PN += 1

		# STEP.02.02
		# judge the value of buffer
		stat = Main.isprime( buf_PN )

		if stat
			count += 1
		end

	end

	# STEP.END
	return buf_PN

end


#==============================================================================================================================#
# Main process is below                                                                                                        #
#==============================================================================================================================#

Main.show_result( Base.convert( Core.UInt32,      6 ) )
Main.show_result( Base.convert( Core.UInt32, 10^4+1 ) )
Main.show_result( Base.convert( Core.UInt32, 10^5+1 ) )
