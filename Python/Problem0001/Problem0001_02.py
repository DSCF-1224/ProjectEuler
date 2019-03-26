# Project Euler Problem 0001 [Multiples of 3 and 5]

# This function judges whether the integer `target` is the multiple of the integer `base`
# if `target` was     the multiple of `base`, this function returns `True`
# if `target` was NOT the multiple of `base`, this function returns `False`
def is_multiple(target, base):

	if target % base == 0:
		return True
	else:
		return False

def is_multiple_safe(target, base):

	# STEP.01
	# check the status of `target`
	if not isinstance(target, int):
		raise TypeError('Argument `target` must be a integer, not %s\n' % type(target))
	
	# STEP.02
	# check the status of `base`
	if not isinstance(base, int):
		raise TypeError('Argument `base` must be a integer, not %s\n' % type(base))

	# STEP.END
	# declare the return value of this function
	return is_multiple(target, base)

# This function returns the summation of all the multiple of 3 or 5 below the integer `limit`
def problem_0001(limit):

	# STEP.01
	# check the argument of this function
	if not isinstance(limit, int):
		raise TypeError('Argument `limit` must be a integer, not %s\n' % type(limit))
	elif limit < 1:
		raise ValueError('Argument `limit must be greater than 0.\nThe accepted value is %d.\n' % limit)

	# STEP.02
	# initialize the variable to store the target summation
	natural_num = 1
	sum         = 0

	# STEP.03
	# calculate the target summation
	while natural_num < limit:

		# STEP.03.01
		# update the summation
		if is_multiple_safe(natural_num, 3) or is_multiple_safe(natural_num, 5):
			sum += natural_num

		# STEP.03.02
		# update the natural num
		natural_num += 1

	# STEP.END
	# declare the return value of this function
	return sum

#=======================#
# Main Process is below #
#=======================#

print(problem_0001(  10))
print(problem_0001(1000))

#=====#
# EOF #
#=====#
