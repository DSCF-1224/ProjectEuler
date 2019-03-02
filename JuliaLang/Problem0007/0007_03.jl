# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "GitHub/ProjectEuler/JuliaLang/Problem0007/0007_03.jl" ) 

# Project Euler
# Problem 0007

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# <module>s and <function>s to use
Base.MainInclude.include( "../support/support_projecteuler.jl" )
Base.MainInclude.include( "0007_support.jl" )

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
		stat = Main.SupportProjectEuler.isprime( buf_PN )

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

Main.show_result( Base.convert( Core.UInt32,     6 ) )
Main.show_result( Base.convert( Core.UInt32, 10001 ) )
