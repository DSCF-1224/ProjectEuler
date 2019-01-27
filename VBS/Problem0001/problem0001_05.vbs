REM | Project Euler 0001

REM #==========================================================================#
REM # Require all variables to be explicitly declared                          #
REM #==========================================================================#
Option Explicit



REM #==========================================================================#
REM # constantsin this VBScript                                                #
REM #==========================================================================#
Const str_Title_MsgBox = "Problem Euler 0001"
Const str_Name_Sub     = "Problem0001"



REM #==========================================================================#
REM # <Function>s and <Subroutine>s in this VBScript                           #
REM #==========================================================================#

Sub Problem0001_05( ByVal max )
	
	REM | [argument of this subroutine]
	REM | max : find the sum of all the multiples of 3 and 5 below `max`
	
	REM | [local variables for this subroutine]
	Dim itr
	Dim sum

	REM | STEP.01
	REM | error check
	If Not IsNumeric( max ) Then

		REM | output the error message by dialogue box
		MsgBox _
			"Argument of " & str_Name_Sub & " is not numeric !" ,_
			vbOKOnly + vbCritical                               ,_
			str_Title_MsgBox

		REM | STEP.BAD_END
		Exit Sub

	End If

	REM | STEP.02
	REM | initialize the variable to store the sum
	sum = 0

	REM | STEP.03
	REM | calculate the sum of all the multiples of 3 and 5
	For itr = 1 To max-1 Step 1
		If ( itr Mod 3 = 0 ) Or ( itr Mod 5 = 0 ) Then sum = sum + itr
	Next

	REM | STEP.04
	REM | output the result
	MsgBox _
		str_Name_Sub & "(" & max & ") = " & sum,_
		vbOKOnly + vbInformation               ,_
		str_Title_MsgBox

	REM | STEP.TRUE_END
	Exit Sub
	
End Sub ' Problem0001_05



REM #==========================================================================#
REM # Main Process is below                                                    #
REM #==========================================================================#

	Call Problem0001_05( 1e1 )
	Call Problem0001_05( 1e3 )
	Call Problem0001_05( "hoge" )

	MsgBox _
		"All Processes of this VBScript have finished." ,_
		vbOKOnly + vbInformation                        ,_
		str_Title_MsgBox

REM #==========================================================================#
REM # End of This VBScript                                                     #
REM #==========================================================================#