# [tested version]
# Version 1.1.1 (2019-05-16)
# 
# [how to use]
# Base.MainInclude.include( "GitHub/ProjectEuler/JuliaLang/Problem0011/0011_01.jl" ) 

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
	given_array = Base.zeros(Core.UInt32, num_lines, num_lines)

	# STEP.04
	# read out the given data as `Core.Array{Core.String, 1}`
	for itr_line = 1 : 1 : num_lines
		given_array[1:end, itr_line] = Base.parse.( Core.UInt32, Base.split( Base.readline(iostream_datafile), " " ) )
	end

	val_prod_max = Base.zero(Core.UInt32)

	for itr_rw in 1 : 1 : num_lines
	for itr_cl in 1 : 1 : num_lines

		val_prod_hor  = given_array[itr_rw, itr_cl] # horizontal
		val_prod_vrt  = given_array[itr_rw, itr_cl] # vertiacal
		val_prod_slpl = given_array[itr_rw, itr_cl] # sloped, left
		val_prod_slpr = given_array[itr_rw, itr_cl] # sploed. right

		for itr_elm in 1 : 1 : len_calc - 1

			itr_rw_pls = itr_rw + itr_elm
			itr_cl_pls = itr_cl + itr_elm
			itr_rw_mns = itr_rw - itr_elm
			itr_cl_mns = itr_cl - itr_elm

			if itr_cl_pls <= num_lines
				val_prod_hor *= given_array[itr_rw, itr_cl_pls]
			else
				val_prod_hor *= Base.zero(Core.UInt32)
			end

			if itr_rw_pls <= num_lines
				val_prod_vrt *= given_array[itr_rw_pls, itr_cl]
			else
				val_prod_vrt *= Base.zero(Core.UInt32)
			end

			if itr_rw_pls <= num_lines && itr_cl_pls <= num_lines
				val_prod_slpl *= given_array[itr_rw_pls, itr_cl_pls]
			else
				val_prod_slpl *= Base.zero(Core.UInt32)
			end

			if itr_rw_mns >= 1 && itr_cl_mns >= 1
				val_prod_slpr *= given_array[itr_rw_mns, itr_cl_mns]
			else
				val_prod_slpr *= Base.zero(Core.UInt32)
			end

		end

		val_prod_max = Base.max(val_prod_max, val_prod_hor, val_prod_vrt, val_prod_slpl, val_prod_slpr)

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

Main.problem0011("???/GitHub/ProjectEuler/Data/p011_number.txt", 4)
# Main.show_result("???/GitHub/ProjectEuler/Data/p011_number.txt", 20, 4)

# EOF
