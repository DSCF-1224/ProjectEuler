# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "GitHub/ProjectEuler/JuliaLang/Problem0009/0009_01.jl" ) 

# [Project Euler]
# Problem 0009

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# <module>s and <function>s to use
Base.MainInclude.include( "../support/support_projecteuler.jl" )
Base.MainInclude.include( "0009_support.jl" )

function problem0009( sum::Core.Int64 )

	# [1] sum::Core.Int64
	# find the Pythagorean triplet (a,b,c), which satisfies below 3 conditions
	# 1. a<b<c
	# 2. a^2 + b^2 = c^2
	# 3. a+b+c = `sum`

	# STEP.01
	# initialize the flag
	isfound = false

	# STEP.02
	# initialize the `struct` to store the return value of this function
	rtvl = Variables( false, Base.zero( Core.Int64 ), Base.zero( Core.Int64 ), Base.zero( Core.Int64 ), Base.zero( Core.Int64 ) )

	# STEP.03
	# search the Pythagorean triplet `a`, `b` and `c` which a+b+c=`sum`
	for itr_a in 1:1:sum # loop for integer `a`

		for itr_b in itr_a:1:sum # loop for integer `b`

			# STEP.03.01
			# determine the integer `c`
			itr_c = sum - itr_a - itr_b

			# STEP.03.02
			# judge whether the integer `c` satisfies the inequality `a < b < c`
			# if the condition was NOT satisfied -> exit the iteration loop for integer `b`
			if itr_b >= itr_c
				break
			end

			# STEP.03.03
			# judge whether the set of integers `a`, `b` and `c` was the Pythagorean triplet
			# if the set was the Pythagorean triplet -> exit the iteration loop for integer `b`
			if itr_a*itr_a+itr_b*itr_b == itr_c*itr_c

				# STEP.04
				# calculate the return value of this function
				# update the flag
				isfound = true
				rtvl    = Variables( isfound, itr_a, itr_b, itr_c, itr_a*itr_b*itr_c )

				# STEP.05
				# exit the loop for integer `c`
				break

			end
		end

		# STEP.05
		# judge whether it is possible to exit the loop for integer `a`
		if isfound
			break
		end

	end

	# STEP.END
	return rtvl

end


#==============================================================================================================================#
# Main process is below                                                                                                        #
#==============================================================================================================================#

Main.show_result( 1000 )
