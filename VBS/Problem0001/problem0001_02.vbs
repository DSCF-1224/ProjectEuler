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

Function Problem0001_02( ByVal max )
	
	REM | [argument of this function]
	REM | max : find the sum of all the multiples of 3 and 5 below `max`
	
	REM | [local variables for this function]
	Dim itr

	REM | STEP.01
	REM | error check
	If Not IsNumeric( max ) Then
		MsgBox _
			"Argument of Problem0001_01 is not numeric !" ,_
			vbOKOnly + vbCritical                         ,_
			str_Title_MsgBox
	End If

	REM | STEP.02
	REM | initialize the variable to store the sum
	Problem0001_02 = 0

	REM | STEP.03
	REM | calculate the sum of all the multiples of 3 and 5
	For itr = 1 To max-1 Step 1
		If ( itr Mod 3 = 0 ) Or ( itr Mod 5 = 0 ) Then Problem0001_02 = Problem0001_02 + itr
	Next

	REM | STEP.TRUE_END
	Exit Function
	
End Function ' Problem0001_02



REM #==========================================================================#
REM # Main Process is below                                                    #
REM #==========================================================================#

	MsgBox _
		Problem0001_02( 1e1 ) & vbCrLf ,_
		vbOKOnly + vbInformation       ,_
		str_Title_MsgBox

	MsgBox _
		Problem0001_02( 1e3 ) & vbCrLf ,_
		vbOKOnly + vbInformation       ,_
		str_Title_MsgBox

	MsgBox _
		"All Processes of this VBScript have finished." ,_
		vbOKOnly + vbInformation                        ,_
		str_Title_MsgBox

REM #==========================================================================#
REM # End of This VBScript                                                     #
REM #==========================================================================#