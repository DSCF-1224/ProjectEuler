# Project Euler Problem 0002 [Even Fibonacci numbers]

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



# This function returns the `term`-th term of the Fibonacci sequence
def calc_Fibonacci(term):

	if not isinstance(term, int):
		raise TypeError('Argument `term` must be a integer, not %s\n' % type(term))
	elif term < 1:
		raise ValueError('Argument `term must be greater than 0.\nThe accepted value is %d.\n' % term)
	else:
		pass

	if term == 1:
		return 1
	elif term == 2:
		return 2
	else:
		return calc_Fibonacci(term - 1) + calc_Fibonacci(term - 2)

def problem_0002(limit):

	# STEP.01
	# check the argument of this function
	if not isinstance(limit, int):
		raise TypeError('Argument `limit` must be a integer, not %s\n' % type(limit))
	elif limit < 1:
		raise ValueError('Argument `limit must be greater than 0.\nThe accepted value is %d.\n' % limit)
	else:
		pass

	# STEP.02
	# calculate the target summation
	buf_sum       = 0
	natural_num   = 1
	buf_Fibonacci = calc_Fibonacci(natural_num)

	while buf_Fibonacci < limit:

		# update the target summation
		if is_multiple(buf_Fibonacci, 2):
			buf_sum += buf_Fibonacci

		# update the Fibonacci sequence
		natural_num   += 1
		buf_Fibonacci  = calc_Fibonacci(natural_num)

	return buf_sum

#=======================#
# Main Process is below #
#=======================#

print(problem_0002(4*10**6))

#=====#
# EOF #
#=====#
