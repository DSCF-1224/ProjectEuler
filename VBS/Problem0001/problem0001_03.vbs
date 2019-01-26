REM | Project Euler 0001

REM #==========================================================================#
REM # Require all variables to be explicitly declared                          #
REM #==========================================================================#
Option Explicit



REM #==========================================================================#
REM # constantsin this VBScript                                                #
REM #==========================================================================#
Const str_Title_MsgBox = "Problem Euler 0001"



REM #==========================================================================#
REM # <Function>s and <Subroutine>s in this VBScript                           #
REM #==========================================================================#
REM | Contained Processes
Private Function Calc_SumOfMultiples( ByVal divisor, ByVal max )

	REM | [argument of this function]
	REM | divisor : find the sum of all the multiples of `divisor` below `max`

	REM | [local variables for this function]
	Dim num_terms

	REM | STEP.01
	num_terms = Int( max / divisor )
	If max Mod divisor = 0 Then num_terms = num_terms - 1

	REM | STEP.02
	Calc_SumOfMultiples = divisor * num_terms * ( num_terms+1 ) / 2

	REM | STEP.TRUE_END
	Exit function

End Function ' Calc_SumOfMultiples

Function Problem0001_03( ByVal max )
	
	REM | [argument of this function]
	REM | max : find the sum of all the multiples of 3 and 5 below `max`
	
	REM | [local variables for this function]
	Dim itr

	REM | STEP.01
	REM | initialize the variable to store the sum
	If Not IsNumeric( max ) Then
		MsgBox _
			"Argument of Problem0001_03 is not numeric !" ,_
			vbOKOnly + vbCritical                         ,_
			str_Title_MsgBox
	End If

	REM | STEP.02
	Problem0001_03 =                  Calc_SumOfMultiples(  3, max )
	Problem0001_03 = Problem0001_03 + Calc_SumOfMultiples(  5, max )
	Problem0001_03 = Problem0001_03 - Calc_SumOfMultiples( 15, max )

	REM | STEP.TRUE_END
	Exit Function
	
End Function ' Problem0001_03



REM #==========================================================================#
REM # Main Process is below                                                    #
REM #==========================================================================#

	MsgBox _
		Problem0001_03( 1e1 ) & vbCrLf ,_
		vbOKOnly + vbInformation       ,_
		str_Title_MsgBox

	MsgBox _
		Problem0001_03( 1e3 ) & vbCrLf ,_
		vbOKOnly + vbInformation       ,_
		str_Title_MsgBox

	MsgBox _
		"All Processes of this VBScript have finished." ,_
		vbOKOnly + vbInformation                        ,_
		str_Title_MsgBox

REM #==========================================================================#
REM # End of This VBScript                                                     #
REM #==========================================================================#