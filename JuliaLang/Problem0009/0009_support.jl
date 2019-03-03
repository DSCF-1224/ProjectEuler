# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "0009_support.jl" )

# [Project Euler]
# Problem 0009

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

mutable struct Variables
	isfound :: Core.Bool
	a       :: Core.Int64
	b       :: Core.Int64
	c       :: Core.Int64
	product :: Core.Int64
end

# show the result of main function
function show_result( sum::Core.Integer )

	# [1] num::Core.Integer
	# find the Pythagorean triplet for which a + b + c = 1000
	# and show a*b*c

	# STEP.01
	retval, t, bytes, gctime, memallocs = Base.@timed Main.problem0009( sum )

	# STEP.02
	Main.SupportProjectEuler.println_timed( t, bytes, gctime, memallocs )
	
	# STEP.03
	Base.println( Base.stdout , "[returned value]" )
	Base.println( Base.stdout , "argument : ", sum )
	Base.println( Base.stdout , "status   : ", retval.isfound )

	if retval.isfound
		Base.println( Base.stdout , "a        : ", retval.a )
		Base.println( Base.stdout , "b        : ", retval.b )
		Base.println( Base.stdout , "c        : ", retval.c )
		Base.println( Base.stdout , "product  : ", retval.product, "\n" )
	end
	
end
