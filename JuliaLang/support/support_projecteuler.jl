module SupportProjectEuler

	function println_timed( t::Core.Float64, bytes::Core.Int64, gctime::Core.Float64, memallocs::Base.GC_Diff )

		# STEP.01/01
		Base.println(
			Base.stdout,
			"[Data from Base.@timed]\n",#
			"t          = ", t,                    "\n",#
			"bytes      = ", bytes,                "\n",#
			"gctime     = ", gctime,               "\n",#
			"allocd     = ", memallocs.allocd,     "\n",#
			"malloc     = ", memallocs.malloc,     "\n",#
			"realloc    = ", memallocs.realloc,    "\n",#
			"poolalloc  = ", memallocs.poolalloc,  "\n",#
			"bigalloc   = ", memallocs.bigalloc,   "\n",#
			"freecall   = ", memallocs.freecall,   "\n",#
			"total_time = ", memallocs.total_time, "\n",#
			"pause      = ", memallocs.pause,      "\n" #
		)

		# STEP.TRUE_END
		return Core.nothing

	end
end