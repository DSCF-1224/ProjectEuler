# [tested version]
# Version 1.1.1 (2019-05-16)
# 
# [how to use]
# Base.MainInclude.include( "GitHub/ProjectEuler/JuliaLang/Problem0016/0016_01.jl" ) 

# Project Euler
# Problem 0016

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# <module>s and <function>s to use
# Base.MainInclude.include( "../support/support_projecteuler.jl" )
# Base.MainInclude.include( "0016_support.jl" )

function problem0016(target_int::Core.Integer)

	# STEP.01
	# initialize the variables to calculate the answer
	val_one      = Base.one(target_int)
	val_two      = val_one + val_one
	val_three    = val_one + val_two
	len_sequence = val_one
	val_sequence = target_int

	# STEP.03
	# read out the given data
	# calculate the target summation
	while val_sequence > val_one

		if Base.iseven(val_sequence)
			val_sequence /= val_two
		else
			val_sequence *= val_three
			val_sequence += val_one
		end

		len_sequence += 1

	end

	# STEP.04
	# close the data file
	Base.close(iostream)

	# STEP.05
	# set the return value of this <function>
	return len_sequence

end

#==============================================================================================================================#
# Main process is below                                                                                                        #
#==============================================================================================================================#

Base.println( Base.stdout , problem0016(13) )

# EOF
