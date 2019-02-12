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
	
		return Base.isequal( Base.rem( target, base ), 0 )
	
	end

end
