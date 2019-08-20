# [tested version]
# Version 1.1.0 (2019-01-21)
# 
# [how to use]
# Base.MainInclude.include( "GitHub/ProjectEuler/JuliaLang/Problem0008/0008_01.jl" ) 

# [Project Euler]
# Problem 0008

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# <module>s and <function>s to use
Base.MainInclude.include( "../support/support_projecteuler.jl" )
Base.MainInclude.include( "0008_support.jl" )

function problem0008(digit::Core.Integer, path_datafile::Core.AbstractString)

	# STEP.01
	# open the target file
	iostream_datafile = Base.open(path_datafile, "r")

	# STEP.02
	# read out the target number
	buf_number_str = Base.read( iostream_datafile, Core.String )

	# STEP.03
	# close the file which stores the target data
	Base.close( iostream_datafile )

	# STEP.04
	# check the digit of the target number
	num_digit = Base.length( buf_number_str )

	# STEP.05
	# convert the string which store the target number to the integer
	buf_number_int = Base.Vector{ Core.UInt128 }( Core.undef, num_digit )

	for itr in Base.OneTo( num_digit )
		buf_number_int[itr] = Base.parse( Core.UInt128, buf_number_str[itr] )
	end

	# STEP.06
	# initialize the variables for the return value of this function
	product_max = Base.zero( Core.UInt128 )

	# STEP.07
	# search the maximum value of product
	for itr_start in 1:1:num_digit-digit+1

		product_buf = buf_number_int[itr_start]

		for itr_prod in 1:digit-1
			product_buf *= buf_number_int[itr_start+itr_prod]
		end

		if Base.isless( product_max, product_buf )
			product_max = product_buf
		end

	end

	# STEP.END
	return product_max

end


#==============================================================================================================================#
# Main process is below                                                                                                        #
#==============================================================================================================================#

for itr in 4:1:13
	Main.show_result( itr, "???/GitHub/ProjectEuler/Data/p008_number.txt"  )
end
