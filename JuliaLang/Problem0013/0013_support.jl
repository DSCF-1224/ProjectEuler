# [tested version]
# Version 1.1.1 (2019-05-16)
# 
# [how to use]
# Base.MainInclude.include( "0013_support.jl" )

# Project Euler
# Problem 0010

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# show the result of main function
function show_result(path_datafile::AbstractString, len_data::Core.Integer)

	# [1] limit::Core.Integer
	# find the sum of all the primes below `limit`

	# STEP.01
	retval, t, bytes, gctime, memallocs = Base.@timed Main.problem0013(path_datafile, len_data)

	# STEP.02
	Main.SupportProjectEuler.println_timed( t, bytes, gctime, memallocs )
	
	# STEP.03
	Base.println( Base.stdout , "[returned value]" )
	Base.println( Base.stdout , "result : ", retval, "\n" )
	
end

# EOF
