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
Const str_Title_MsgBox   = "Problem Euler 0001"
Const str_Name_Func_Main = "Problem0001_03"
Const str_Name_Func_Core = "Calc_SumOfMultiples"



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
				"Argument of " & str_Name_Func_Core & " is not numeric !" & vbCrLf &_
				"The detected type is " & TypeName( divisor ) & "." ,_
				vbOKOnly + vbCritical ,_
				str_Title_MsgBox _
			)

	ElseIf ( Not VarType( divisor ) = vbInteger ) And ( Not VarType( divisor ) = vbLong ) Then
		
		Err.Raise _
			vbObjectError + 22, _
			MsgBox (_
				"The detected type of argument of " & str_Name_Func_Core & " is " & TypeName( divisor ) & "." & vbCrLf &_
				"The argument must be an integer/long integer !" ,_
				vbOKOnly + vbCritical ,_
				str_Title_MsgBox _
			)

	ElseIf divisor < 1 Then

		Err.Raise _
			vbObjectError + 23, _
			MsgBox (_
				"Argument of " & str_Name_Func_Core & " is less than 1 !" & vbCrLf &_
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

Function Problem0001_03( ByVal max )
	
	REM | [argument of this function]
	REM | max : find the sum of all the multiples of 3 and 5 below `max`
	
	REM | [local variables for this function]
	Dim itr

	REM | STEP.01
	REM | error check
	If Not IsNumeric( max ) Then

		Err.Raise _
			vbObjectError + 11, _
			MsgBox (_
				"Argument of " & str_Name_Func_Main & " is not numeric !" & vbCrLf &_
				"The detected type is " & TypeName( max ) & "." ,_
				vbOKOnly + vbCritical ,_
				str_Title_MsgBox _
			)

	ElseIf ( Not VarType( max ) = vbInteger ) And ( Not VarType( max ) = vbLong ) Then
		
		Err.Raise _
			vbObjectError + 12, _
			MsgBox (_
				"The detected type of argument of " & str_Name_Func_Main & " is " & TypeName( max ) & "." & vbCrLf &_
				"The argument must be an integer/long integer !" ,_
				vbOKOnly + vbCritical ,_
				str_Title_MsgBox _
			)

	ElseIf max < 1 Then

		Err.Raise _
			vbObjectError + 13, _
			MsgBox (_
				"Argument of " & str_Name_Func_Main & " is less than 1 !" & vbCrLf &_
				"The argument must be an integer which is bigger than or equal to 1 !" ,_
				vbOKOnly + vbCritical ,_
				str_Title_MsgBox _
			)

	End If

	REM | STEP.02
	REM | calculate the target sum
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
		Problem0001_03( "hoge" ) & vbCrLf ,_
		vbOKOnly + vbInformation          ,_
		str_Title_MsgBox

	MsgBox _
		Problem0001_03( 1.0 ) & vbCrLf ,_
		vbOKOnly + vbInformation       ,_
		str_Title_MsgBox

	MsgBox _
		Problem0001_03( -1 ) & vbCrLf ,_
		vbOKOnly + vbInformation      ,_
		str_Title_MsgBox

	MsgBox _
		Problem0001_03( 10 ) & vbCrLf ,_
		vbOKOnly + vbInformation      ,_
		str_Title_MsgBox

	MsgBox _
		Problem0001_03( 1000 ) & vbCrLf ,_
		vbOKOnly + vbInformation        ,_
		str_Title_MsgBox

	MsgBox _
		"All Processes of this VBScript have finished." ,_
		vbOKOnly + vbInformation                        ,_
		str_Title_MsgBox

REM #==========================================================================#
REM # End of This VBScript                                                     #
REM #==========================================================================#