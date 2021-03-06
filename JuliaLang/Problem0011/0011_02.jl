# [tested version]
# Version 1.1.1 (2019-05-16)
# 
# [how to use]
# Base.MainInclude.include( "GitHub/ProjectEuler/JuliaLang/Problem0011/0011_02.jl" ) 

# Project Euler
# Problem 0011

#==============================================================================================================================#
# own defined functions are below                                                                                              #
#==============================================================================================================================#

# <module>s and <function>s to use
Base.MainInclude.include( "../support/support_projecteuler.jl" )
Base.MainInclude.include( "0011_support.jl" )

function problem0011(path_datafile::Core.AbstractString, len_calc::Core.Integer)

	# STEP.01
	# open the data file
	iostream_datafile = Base.open(path_datafile, "r")

	# STEP.02
	# get the number of lines in the given data file
	num_lines = Base.countlines(path_datafile)

	# STEP.03
	# prepare the array to store the given integers
	# Int this <function>, the it is supposed that the number of integers in the each line is equal to the number of lines in the data file
	given_array = Base.zeros(Core.UInt64, num_lines, num_lines)

	# STEP.04
	# read out the given data as `Core.Array{Core.String, 1}`
	for itr_line = 1 : 1 : num_lines
		given_array[1:end, itr_line] = Base.parse.( Core.UInt64, Base.split( Base.readline(iostream_datafile), " " ) )
	end

	val_prod_max = Base.zero(Core.UInt64)

	for itr_rw in 1 : 1 : num_lines
	for itr_cl in 1 : 1 : num_lines

		if itr_cl <= num_lines - len_calc

			val_prod_tmp = Base.one(Core.UInt64)

			for itr_elm in 0 : 1 : len_calc - 1
				val_prod_tmp *= given_array[itr_rw, itr_cl + itr_elm]
			end

			val_prod_max = Base.max(val_prod_max, val_prod_tmp)

		end

		if itr_rw <= num_lines - len_calc

			val_prod_tmp = Base.one(Core.UInt64)

			for itr_elm in 0 : 1 : len_calc - 1
				val_prod_tmp *= given_array[itr_rw + itr_elm, itr_cl]
			end

			val_prod_max = Base.max(val_prod_max, val_prod_tmp)

		end

		if itr_cl <= num_lines - len_calc && itr_rw <= num_lines - len_calc

			val_prod_tmp = Base.one(Core.UInt64)

			for itr_elm in 0 : 1 : len_calc - 1
				val_prod_tmp *= given_array[itr_rw + itr_elm, itr_cl + itr_elm]
			end

			val_prod_max = Base.max(val_prod_max, val_prod_tmp)

		end

		if len_calc <= itr_cl && itr_rw <= num_lines - len_calc

			val_prod_tmp = Base.one(Core.UInt64)

			for itr_elm in 0 : 1 : len_calc - 1
				val_prod_tmp *= given_array[itr_rw + itr_elm, itr_cl - itr_elm]
			end

			val_prod_max = Base.max(val_prod_max, val_prod_tmp)

		end

	end
	end

	# STEP.04
	# close the data file
	Base.close(iostream_datafile)

	# STEP.05
	# set the return value of this <function>
	return val_prod_max

end

#==============================================================================================================================#
# Main process is below                                                                                                        #
#==============================================================================================================================#

Main.show_result()

# EOF
