# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "GitHub/ProjectEuler/JuliaLang/Problem0005/0005_01.jl" ) 

# Project Euler
# Problem 0005

# [reference]
# ［改訂新版］C言語による標準アルゴリズム辞典 pp.82-83

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# <module>s and <function>s to use
Base.MainInclude.include( "../support/support_projecteuler.jl" )
Base.MainInclude.include( "0005_support.jl" )

function problem0005( num::Core.Integer )

	# argument of this function
	# [1] num::Core.Integer
	# return the smallest positive number that is evenly divisible by all of the numbers from 1 to `num`

	# STEP.01
	# initialize the variable to store the return value of this function
	lcm = Base.one( num )

	# STEP.02
	# calculate the target LCM
	for itr in 1:1:num
		lcm = Main.my_lcm( n1=lcm, n2=itr )
	end

	# STEP.TRUE_END
	return lcm

end


# return the greatest common divisor of `n1` and `n2`
function my_gcd(; n1::Core.Integer, n2::Core.Integer )

	buf_n1 = n1
	buf_n2 = n2

	while !Base.iszero( n2 )
		buf = Base.mod(n1, n2)
		n1  = n2
		n2  = buf
	end

	return n1

end


# return the least common multiple of `n1` and `n2`
function my_lcm(; n1::Core.Integer, n2::Core.Integer )
	return Base.div( n1*n2, my_gcd( n1=n1, n2=n2 ) )
end

#==============================================================================================================================#
# Main process is below                                                                                                        #
#==============================================================================================================================#

Main.show_result( Base.convert( Base.GMP.BigInt, 10 ) )
Main.show_result( Base.convert( Base.GMP.BigInt, 20 ) )
