# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "GitHub/ProjectEuler/JuliaLang/Problem0004/0004_02.jl" ) 

# Project Euler
# Problem 0004

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# <module>s and <function>s to use
Base.MainInclude.include( "../support/support_projecteuler.jl" )
Base.MainInclude.include( "0004_support.jl" )

function problem0004( num_digit::Core.Integer )

	# argument of this function
	# [1] num_digit::Core.Integer
	# find the largest palindrome made from the product of two `num_digit`-digit numbers

	# STEP.01
	# determine the range of loop to search the target palindrome
	itrFctrMin = 10^( num_digit - 1 )
	itrFctrMax = 10^num_digit - 1

	# STEP.02
	# initialize the buffers
	bffr_palindrome = 0
	rslt_palindrome = 0
	isRsltUpdated   = false

	for itrFctrLv1 = itrFctrMax:-1:itrFctrMin
	for itrFctrLv2 = itrFctrLv1:-1:itrFctrMin

		bffr_palindrome = itrFctrLv1 * itrFctrLv2

		if Base.isless( bffr_palindrome, rslt_palindrome )
			isRsltUpdated = false
			break
		else

			if Main.isPalindromic( bffr_palindrome )
				rslt_palindrome = bffr_palindrome
				isRsltUpdated   = true
			end

		end

	end
	end

	# STEP.TRUE_END
	return rslt_palindrome

end

function isPalindromic( target::Core.Integer )

	# argument of this function
	# [1] target::Core.Integer
	# the target integer to determine whether it is a palindrome

	# STEP.01
	# get the digits of the `target` as an array
	bffr_digits_nrml = Base.digits( target )

	# STEP.02
	# check the digit of the 10^0 order
	if Base.isequal( bffr_digits_nrml[ Base.length( bffr_digits_nrml ) ], 0 )
		stat = false
	else

		# STEP.03
		# get the reversed digits of the `target` as an array
		bffr_digits_rvrs = Base.reverse( bffr_digits_nrml )

		# STEP.04
		# determine whether the `target` is palindrome
		if Base.isequal( bffr_digits_nrml, bffr_digits_rvrs )
			stat = true
		else
			stat = false
		end

	end

	# STEP.TRUE_END
	return stat

end


#==============================================================================================================================#
# Main process is below                                                                                                        #
#==============================================================================================================================#

Main.show_result( 2 )
Main.show_result( 3 )
Main.show_result( 4 )
