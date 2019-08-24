#include <chrono>
#include <iostream>
#include <limits>

using namespace std::literals;

// judge whether the unsigned integer `target` is the multiple of the `divisor`
bool is_target_multiple(unsigned int target, unsigned int divisor)
{
	return target % divisor == 0U;
}

// calculate the solution of the Project Euler Problem 1
unsigned int calc_solution(unsigned int limit)
{
	// variable for this function
	unsigned int sum = 0U;

	for (unsigned int itr = 1U; itr < limit; ++itr)
	{
		if ( is_target_multiple(itr, 3U) || is_target_multiple(itr, 5U) )
		sum += itr;
	}

	return sum;
}

int main()
{
	// variables for the main process
	unsigned int limit;
	std::chrono::system_clock::time_point time_point_begin;
	std::chrono::system_clock::time_point time_point_end;

	// STEP.01
	// output the question
	// output what you enter
	std::cout
	<< std::endl << "If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9."s
	<< std::endl << "The sum of these multiples is 23."s
	<< std::endl << "This program will return the sum of all multiples of 3 or 5 below X."s
	<< std::endl << "Enter the X > "s
	;

	// STEP.02
	// read the entered value
	std::cin >> limit;

	time_point_begin = std::chrono::system_clock::now();
	auto answer = calc_solution(limit);
	time_point_end = std::chrono::system_clock::now();

	auto time_elapsed = std::chrono::duration_cast<std::chrono::microseconds>(time_point_end - time_point_begin).count();

	std::cout
	<< std::endl << "X    > "s << limit
	<< std::endl << "sum  > "s << answer
	<< std::endl << "time > "s << time_elapsed  << " [ms]"s
	<< std::endl
	;
}

// EOF
