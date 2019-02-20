# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "GitHub/ProjectEuler/JuliaLang/Problem0004/0004_01.jl" )
# 

# [Project Euler]
# https://projecteuler.net/problem=4

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# <module>s and <function>s to use
Base.MainInclude.include( "../support/support_projecteuler.jl" )

function problem0004( num_digit::Core.Integer )

	# argument of this function
	# [1] num_digit::Core.Integer
	# find the largest palindrome made from the product of two `num_digit`-digit numbers

	# STEP.01
	# determine the range of loop to search the target palindrome
	itrFctrMin = 10^( num_digit-1 )
	itrFctrMax = 10^num_digit       -1

	# STEP.02
	# initialize the buffers
	bffr_palindrome = 0
	rslt_palindrome = 0

	for itrFctrLv1 = itrFctrMax:-1:itrFctrMin
	for itrFctrLv2 = itrFctrLv1:-1:itrFctrMin

		bffr_palindrome = itrFctrLv1 * itrFctrLv2

		if Base.isless( rslt_palindrome, bffr_palindrome )
			isRsltUpdated = false
			Base.exit()
		else

			isBffrPalindromic = Main.isPalindromic( bffr_palindrome )

			if isBffrPalindromic
				rslt_palindrome = bffr_palindrome
				isRsltUpdated   = true
			end

		end

	end
	end

	# STEP.03
	return rslt_palindrome

end

function isPalindromic( targrt::Core.Integer )

	# argument of this function
	# [1] target::Core.Integer
	# the target integer to determine whether it is a palindrome

	# STEP.01
	# get the number of digits of the `target`
	num_digit = Base.ndigits( target, base=10 )

	bffr_digits_nrml = Base.digits( target )
	bffr_digits_rvrs = Base.digits( target )
end


#==============================================================================================================================#
# Main process is below                                                                                                        #
#==============================================================================================================================#

Main.problem0004( 2 )
