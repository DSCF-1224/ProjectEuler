# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "GitHub/ProjectEuler/JuliaLang/Problem0002/0002_01_01.jl" )
# 

# Project Euler Problem 0002 [Even Fibonacci numbers]
# https://projecteuler.net/problem=2
# Each new term in the Fibonacci sequence is generated by adding the previous two terms.
# By starting with 1 and 2, the first 10 terms will be:
#	1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million,
# find the sum of the even-valued terms.

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# <module>s and <function>s to use
Base.MainInclude.include( "../support/support_projecteuler.jl" )
Base.MainInclude.include( "0002_support.jl" )

# calculate the target sum of the even-valued terms whose values do not exceed `max`
function problem0002( max::Core.Integer )

	# argument of this function
	# [1] max::Core.Integer
	# calculate the target sum of the even-valued terms whose values do not exceed `max`

	# STEP.01
    # initialize the variable to store the target sum
    if Base.isless( max, 2 ) || Base.isequal( max, 2 )
        return Base.zero( max )
    else

        # STEP.02
        # initialize the variable to store the target sum
        buf_Fibonacci1 = Base.one( max )
        buf_Fibonacci2 = buf_Fibonacci1 + buf_Fibonacci1
        buf_Fibonacci3 = buf_Fibonacci1 + buf_Fibonacci2
        sum            = buf_Fibonacci2

        # STEP.03
	    # calculate the target sum
        while Base.isless( sum, max )

            # STEP.03.01
            # update the target sum
            if Base.iseven( buf_Fibonacci3 )
                sum += buf_Fibonacci3
            end

            # STEP.03.02
            # update the Fibonacci sequence
            buf_Fibonacci1 = buf_Fibonacci2
            buf_Fibonacci2 = buf_Fibonacci3
            buf_Fibonacci3 = buf_Fibonacci1 + buf_Fibonacci2

        end

        # STEP.END
        return sum

    end

end


#==============================================================================================================================#
# Main process is below                                                                                                        #
#==============================================================================================================================#

Main.show_result( Base.convert( Core.UInt32, 4*10^6 ) )