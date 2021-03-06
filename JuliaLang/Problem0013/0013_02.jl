# [tested version]
# Version 1.1.1 (2019-05-16)
# 
# [how to use]
# Base.MainInclude.include( "GitHub/ProjectEuler/JuliaLang/Problem0013/0013_02.jl" ) 

# Project Euler
# Problem 0013

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# <module>s and <function>s to use
Base.MainInclude.include( "../support/support_projecteuler.jl" )
Base.MainInclude.include( "0013_support.jl" )

function problem0013(path_datafile::AbstractString, len_data::Core.Integer)

	# STEP.01
	# open the data file
	iostream = Base.open(path_datafile, "r")

	# STEP.02
	# initialize the variables / arrays to calculate the answer
	array   = Base.zeros(Base.GMP.BigInt, len_data)
	itr_elm = 0

	# STEP.03
	# read out the given data
	# calculate the target summation
	for itr_line in Base.eachline(iostream)
		itr_elm += 1
		array[itr_elm] = Base.parse(Base.GMP.BigInt, itr_line)
	end

	# STEP.04
	# close the data file
	Base.close(iostream)

	# STEP.05
	# set the return value of this <function>
	return Base.SubString(Base.repr(Base.sum(array)), 1, 10)

end

#==============================================================================================================================#
# Main process is below                                                                                                        #
#==============================================================================================================================#

Main.show_result("???/GitHub/ProjectEuler/Data/p013_number.txt", 100)

# EOF
