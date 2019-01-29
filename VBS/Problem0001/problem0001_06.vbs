REM | Project Euler 0001

REM #==========================================================================#
REM # Require all variables to be explicitly declared                          #
REM #==========================================================================#
Option Explicit



REM #==========================================================================#
REM # Defer error handling                                                     #
REM #==========================================================================#
On Error Resume Next



REM #==========================================================================#
REM # constantsin this VBScript                                                #
REM #==========================================================================#
Const str_Title_MsgBox = "Problem Euler 0001"
Const str_Name_Sub     = "Problem0001_06"
Const str_Name_Func    = "Calc_SumOfMultiples"



REM #==========================================================================#
REM # <Function>s and <Subroutine>s in this VBScript                           #
REM #==========================================================================#

Private Function Calc_SumOfMultiples( ByVal divisor, ByVal max )

	REM | [argument of this function]
	REM | divisor : find the sum of all the multiples of `divisor` below `max`

	REM | [local variables for this function]
	Dim num_terms

	REM | STEP.01
	REM | error check
	If Not IsNumeric( divisor ) Then

		Err.Raise _
			vbObjectError + 21, _
			MsgBox (_
				"Argument of " & str_Name_Func & " is not numeric !" & vbCrLf &_
				"The detected type is " & TypeName( divisor ) & "." ,_
				vbOKOnly + vbCritical ,_
				str_Title_MsgBox _
			)

	ElseIf ( Not VarType( divisor ) = vbInteger ) And ( Not VarType( divisor ) = vbLong ) Then
		
		Err.Raise _
			vbObjectError + 22, _
			MsgBox (_
				"The detected type of argument of " & str_Name_Func & " is " & TypeName( divisor ) & "." & vbCrLf &_
				"The argument must be an integer/long integer !" ,_
				vbOKOnly + vbCritical ,_
				str_Title_MsgBox _
			)

	ElseIf divisor < 1 Then

		Err.Raise _
			vbObjectError + 23, _
			MsgBox (_
				"Argument of " & str_Name_Func & " is less than 1 !" & vbCrLf &_
				"The argument must be an integer which is bigger than or equal to 1 !" ,_
				vbOKOnly + vbCritical ,_
				str_Title_MsgBox _
			)

	End If

	REM | STEP.02
	REM | calculate the number of the arithmetic sequence to calculate the sum
	num_terms = Int( max / divisor )
	If max Mod divisor = 0 Then num_terms = num_terms - 1

	REM | STEP.01
	REM | calculate the target sum
	Calc_SumOfMultiples = divisor * num_terms * ( num_terms+1 ) / 2

	REM | STEP.TRUE_END
	Exit function

End Function ' Calc_SumOfMultiples

Sub Problem0001_06( ByVal max )
	
	REM | [argument of this subroutine]
	REM | max : find the sum of all the multiples of 3 and 5 below `max`
	
	REM | [local variables for this subroutine]
	Dim sum

	REM | STEP.01
	REM | error check
	If Not IsNumeric( max ) Then

		Err.Raise _
			vbObjectError + 11, _
			MsgBox (_
				"Argument of " & str_Name_Sub & " is not numeric !" & vbCrLf &_
				"The detected type is " & TypeName( max ) & "." ,_
				vbOKOnly + vbCritical ,_
				str_Title_MsgBox _
			)

	ElseIf ( Not VarType( max ) = vbInteger ) And ( Not VarType( max ) = vbLong ) Then
		
		Err.Raise _
			vbObjectError + 12, _
			MsgBox (_
				"The detected type of argument of " & str_Name_Sub & " is " & TypeName( max ) & "." & vbCrLf &_
				"The argument must be an integer/long integer !" ,_
				vbOKOnly + vbCritical ,_
				str_Title_MsgBox _
			)

	ElseIf max < 1 Then

		Err.Raise _
			vbObjectError + 13, _
			MsgBox (_
				"Argument of " & str_Name_Sub & " is less than 1 !" & vbCrLf &_
				"The argument must be an integer which is bigger than or equal to 1 !" ,_
				vbOKOnly + vbCritical ,_
				str_Title_MsgBox _
			)

	End If

	REM | STEP.02
	REM | calculate the target sum
	sum =       Calc_SumOfMultiples(  3, max )
	sum = sum + Calc_SumOfMultiples(  5, max )
	sum = sum - Calc_SumOfMultiples( 15, max )

	REM | STEP.03
	REM | output the result
	MsgBox _
		str_Name_Sub & "(" & max & ") = " & sum,_
		vbOKOnly + vbInformation               ,_
		str_Title_MsgBox

	REM | STEP.TRUE_END
	Exit Sub
	
End Sub ' Problem0001_06



REM #==========================================================================#
REM # Main Process is below                                                    #
REM #==========================================================================#

	Call Problem0001_06( "hoge"  )
	Call Problem0001_06(  1.0e+1 )
	Call Problem0001_06( -1      )
	Call Problem0001_06(  10     )
	Call Problem0001_06(  1000   )

	MsgBox _
		"All Processes of this VBScript have finished." ,_
		vbOKOnly + vbInformation                        ,_
		str_Title_MsgBox

REM #==========================================================================#
REM # End of This VBScript                                                     #
REM #==========================================================================#