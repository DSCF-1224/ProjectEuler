# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "GitHub/ProjectEuler/JuliaLang/Problem0007/0007_04.jl" ) 

# Project Euler
# Problem 0007

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# <module>s and <function>s to use
Base.MainInclude.include( "../support/support_projecteuler.jl" )
Base.MainInclude.include( "0007_support.jl" )

function problem0007( limit::Core.Integer )

	# [1] limit::Core.Integer
	# find the `limit`-th prime number

	# STEP.01
	# prepare the array to store the prime numbers
	list_PrimeNums = Base.Vector{ Core.typeof( limit ) }( Core.undef, limit )

	# STEP.02
	# initialize the list of the prime numbersmake the list of prime numbers
	buf_one           = Base.one( limit )
	buf_two           = buf_one + buf_one
	list_PrimeNums[1] = buf_two
	itr_ntrl          = buf_one
	num_PrimeNums     = buf_one

	# STEP.03
	# make the list of prime numbers
	while num_PrimeNums < limit

		itr_ntrl += buf_two
		itr_elem  = buf_one

		while itr_elem < num_PrimeNums && !Main.SupportProjectEuler.ismultiple( target=itr_ntrl, base=list_PrimeNums[itr_elem] )
			itr_elem += buf_one
		end

		if Base.isequal(itr_elem, num_PrimeNums)
			num_PrimeNums += buf_one
			list_PrimeNums[num_PrimeNums] = itr_ntrl
		end

	end

	# STEP.END
	return list_PrimeNums[limit]

end


#==============================================================================================================================#
# Main process is below                                                                                                        #
#==============================================================================================================================#

Main.show_result( Base.convert( Core.UInt32,      6 ) )
Main.show_result( Base.convert( Core.UInt32, 10^4+1 ) )
Main.show_result( Base.convert( Core.UInt32, 10^5+1 ) )
