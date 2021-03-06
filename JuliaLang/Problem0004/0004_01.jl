# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "GitHub/ProjectEuler/JuliaLang/Problem0004/0004_01.jl" ) 

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


function pick_ValTargetDigit( target::Core.Integer, digit::Core.Integer )

	# argument of this function
	# [1] target::Core.Integer
	# [2]  digit::Core.Integer
	# pick the digit of 10^`digit` of the `target`
	return Base.div( Base.rem( target, 10^digit ), 10^(digit-1) )

end


function isPalindromic( target::Core.Integer )

	# argument of this function
	# [1] target::Core.Integer
	# the target integer to determine whether it is a palindrome

	# STEP.01
	# get the number of the digits in integer `target`
	num_digit = Base.ndigits( target, base=10 )

	# STEP.02
	# compute the number of the digits to check
	itr_max = Base.div( Core.ifelse( Base.iseven( num_digit ), num_digit, num_digit-1 ), 2 )

	# STEP.03
	# determine whether the integer `target` is an palindrome

	stat = false # initialization

	for itr = 1:1:itr_max

		# STEP.03.01
		# determine whether the target value of the digit is equal
		stat = Base.isequal( Main.pick_ValTargetDigit( target, itr ), Main.pick_ValTargetDigit( target, num_digit-itr+1 ) )

		# STEP.03.02
		# determine whether to break this loop
		if !stat
			break
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
