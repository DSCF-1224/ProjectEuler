module SupportProjectEuler

	# <module>s to import
	import Printf

	# print the return value of the Base.@timed
	function println_timed( t::Core.Float64, bytes::Core.Int64, gctime::Core.Float64, memallocs::Base.GC_Diff )

		# STEP.01/01
		Printf.@printf( Base.stdout, "%s\n",             "[Data from Base.@timed]"           )#
		Printf.@printf( Base.stdout, "%10s = %23.15E\n", "t"          , t                    )#
		Printf.@printf( Base.stdout, "%10s = %23.00d\n", "bytes"      , bytes                )#
		Printf.@printf( Base.stdout, "%10s = %23.15E\n", "gctime"     , gctime               )#
		Printf.@printf( Base.stdout, "%10s = %23.00D\n", "allocd"     , memallocs.allocd     )#
		Printf.@printf( Base.stdout, "%10s = %23.00D\n", "malloc"     , memallocs.malloc     )#
		Printf.@printf( Base.stdout, "%10s = %23.00D\n", "realloc"    , memallocs.realloc    )#
		Printf.@printf( Base.stdout, "%10s = %23.00D\n", "poolalloc"  , memallocs.poolalloc  )#
		Printf.@printf( Base.stdout, "%10s = %23.00D\n", "bigalloc"   , memallocs.bigalloc   )#
		Printf.@printf( Base.stdout, "%10s = %23.00D\n", "freecall"   , memallocs.freecall   )#
		Printf.@printf( Base.stdout, "%10s = %23.00D\n", "total_time" , memallocs.total_time )#
		Printf.@printf( Base.stdout, "%10s = %23.00D\n", "pause"      , memallocs.pause      )#

		# STEP.TRUE_END
		return Core.nothing

	end

	# judge whether the `target` is a multiple of `base`
	function ismultiple(; target::Core.Integer, base::Core.Integer )
	
		return Base.iszero( Base.rem( target, base ) )
	
	end

	# judge whether the integer `target` is a prime number
	function isprime( target::Core.Integer )

		# [1] target::Core.Integer
		# judge whether the integer `target` is a prime number or not
		# if `target` was     a prime number -> true
		# if `target` was NOT a prime number -> false

		if Base.isequal( largest_prime_factor( target ), target )
			return true
		else
			return false
		end

	end

	# return the largest prime factor of the integer `target`
	function largest_prime_factor( target::Core.Integer )

		# [1] target::Core.Integer
		# find the largest prime factor of the `target`
		
		# STEP.01
		# initialize the local variables for this <function>
		buf_trgt    = target
		buf_zero    = Base.zero( target )
		buf_one     = Base.one( target )
		buf_two     = buf_one + buf_one
		factor_crnt = buf_two
		factor_last = buf_one

		# STEP.02
		# find the largest prime factor of the `target`: case prime = 2
		if Base.iseven( buf_trgt )

			# if 2 was the prime factor of the integer `buf_trgt`
			
			# STEP.02.01
			# update the last prime number
			factor_last = factor_crnt

			# STEP.02.02
			# update the `buf_trgt` repeatedly until the `buf_trgt` is not
			while Base.iseven( buf_trgt )
				buf_trgt = Base.div( buf_trgt, factor_crnt )
			end

		end

		# STEP.03
		# find the largest prime factor of the `target`: case prime > 2

			# STEP.03.01
			# update the `factor_crnt`
			factor_crnt += buf_one
			factor_end   = Base.isqrt( buf_trgt )

			# STEP.03.02
			while buf_one < buf_trgt && factor_crnt <= factor_end

				if Main.SupportProjectEuler.ismultiple( target=buf_trgt, base=factor_crnt )

					factor_last = factor_crnt

					while Main.SupportProjectEuler.ismultiple( target=buf_trgt, base=factor_crnt )
						buf_trgt = Base.div( buf_trgt, factor_crnt )
					end

					factor_end = Base.isqrt( buf_trgt )

				end

				factor_crnt += buf_two

			end

		# STEP.04
		if buf_trgt != buf_one
			factor_last = buf_trgt
		end

		# STEP.END
		return factor_last
		
	end

end
