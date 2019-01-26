REM | Project Euler 0001

REM #==========================================================================#
REM # Require all variables to be explicitly declared                          #
REM #==========================================================================#
OPTION EXPLICIT



REM #==========================================================================#
REM # <Function>s and <Subroutine>s  in this VBScript                          #
REM #==========================================================================#

Function Problem0001_01( limit )
	
	REM | [argument of this function]
	REM | limit : find the sum of all the multiples of 3 and 5 below `limit`
	
	REM | [local variables for this function]
	Dim itr

	REM | STEP.01
	REM | initialize the variable to store the sum
	If Not IsNumeric( limit ) Then

	End If

	REM | STEP.02
	Problem0001_01 = 0

	REM | STEP.03
	REM calculate the sum of all the multiples of 3 and 5
	For itr = 1 To limit-1 Step 1
		If itr Mod 3 = 0 Then Problem0001_01 = Problem0001_01 + itr
		If itr Mod 5 = 0 Then Problem0001_01 = Problem0001_01 + itr
	Next

	REM | STEP.TRUE_END
	Exit Function
	
End Function ' Problem0001_01( limit )



REM #==========================================================================#
REM # Main Process is below                                                    #
REM #==========================================================================#

	MsgBox _
		Problem0001_01( 1e1 ) & vbCrLf & _
		Problem0001_01( 1e3 )          , _
		vbOKOnly + vbInformation       , _
		"Problem Euler 0001"

REM #==========================================================================#
REM # End of This VBScript                                                     #
REM #==========================================================================#