# Project Euler Problem 0001 [Multiples of 3 and 5]

# This function returns the summation of all the multiple of the integer `base` below the integer `limit`
def sum_multiple(base, limit):

	# STEP.01
	# check the argument `base`
	if not isinstance(base, int):
		raise TypeError('Argument `base` must be a integer, not %s\n' % type(base))
	elif base < 1:
		raise ValueError('Argument `base must be greater than 0.\nThe accepted value is %d.\n' % base)

	# STEP.02
	# check the argument `limit`
	if not isinstance(limit, int):
		raise TypeError('Argument `limit` must be a integer, not %s\n' % type(limit))
	elif limit < 1:
		raise ValueError('Argument `limit must be greater than 0.\nThe accepted value is %d.\n' % limit)

	# STEP.03
	# calculate the target summation
	num_terms = limit // base

	if limit % base == 0:
		num_terms -= 1

	# STEP.04
	# calculate & declare the return value
	return base * num_terms * (num_terms + 1) // 2

# This function returns the summation of all the multiple of 3 or 5 below the integer `limit`
def problem_0001(limit):

	# STEP.01
	# check the argument of this function
	if not isinstance(limit, int):
		raise TypeError('Argument `limit` must be a integer, not %s\n' % type(limit))
	elif limit < 1:
		raise ValueError('Argument `limit must be greater than 0.\nThe accepted value is %d.\n' % limit)

	# STEP.02
	# calculate & declare the return value
	return sum_multiple(3, limit) + sum_multiple(5, limit) - sum_multiple(15, limit)

#=======================#
# Main Process is below #
#=======================#

print(problem_0001(  10))
print(problem_0001(1000))

#=====#
# EOF #
#=====#
