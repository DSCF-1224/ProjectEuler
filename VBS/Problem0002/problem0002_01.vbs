REM | Project Euler 0002

REM #==========================================================================#
REM # Require all variables to be explicitly declared                          #
REM #==========================================================================#
Option Explicit



REM #==========================================================================#
REM # constantsin this VBScript                                                #
REM #==========================================================================#
Const str_Title_MsgBox = "Problem Euler 0002"
Const str_Name_Func    = "Problem0002_01"



REM #==========================================================================#
REM # <Function>s and <Subroutine>s in this VBScript                           #
REM #==========================================================================#

Function Calc_Fibonacci( term )
	
	REM | [argument of this function]
	REM | term : calculate the `term`-th term of Fibonacci sequence

	REM | STEP.01
	If term = 1 Then
		Calc_Fibonacci = 1
	ElseIf term = 2 Then
		Calc_Fibonacci = 2
	Else
		Calc_Fibonacci = Calc_Fibonacci( term-1 ) + Calc_Fibonacci( term-2 )
	End If

	REM | STEP.TRUE_END
	Exit Function

End Function ' Calc_Fibonacci

Function Problem0002_01( ByVal max )
	
	REM | [argument of this function]
	REM | max : store the sum of even-valued terms of the Fibonacci sequence whose values do not exceed four million
	
	REM | [local variables for this function]
	Dim buf_Fibonacci, itr_term

	REM | STEP.01
	REM | error check of the argument of this <Function>
	If Not IsNumeric( max ) Then
		MsgBox _
			"Argument of " & str_Name_Func & " is not numeric !" ,_
			vbOKOnly + vbCritical ,_
			str_Title_MsgBox
	ElseIf ( Not VarType( max ) = vbInteger ) And ( Not VarType( max ) = vbLong ) Then
		MsgBox _
			"Type of argument of" & str_Name_Func & " is not integer/long integer !" & vbCrLf &_
			"The argument must be an integer/long integer !" ,_
			vbOKOnly + vbCritical ,_
			str_Title_MsgBox
	ElseIf max < 1 Then
		MsgBox _
			"Argument of " & str_Name_Func & " is less than 1 !" & vbCrLf &_
			"The argument must be an integer which is bigger than or equal to 1 !" ,_
			vbOKOnly + vbCritical ,_
			str_Title_MsgBox
	End If

	REM | STEP.02
	REM | initialize the variable to store the sum
	Problem0002_01 = 0
	itr_term       = 1

	REM | STEP.03
	REM | calculate the sum of all the multiples of 3 and 5
	Do While buf_Fibonacci < max
		buf_Fibonacci = Calc_Fibonacci( itr_term )
		If buf_Fibonacci Mod 2 = 0 Then
			Problem0002_01 = Problem0002_01 + buf_Fibonacci
		End If
		itr_term = itr_term + 1
	Loop

	REM | STEP.TRUE_END
	Exit Function
	
End Function ' Problem0002_01



REM #==========================================================================#
REM # Main Process is below                                                    #
REM #==========================================================================#

	MsgBox _
		Problem0002_01( 4000000 ) & vbCrLf ,_
		vbOKOnly + vbInformation     ,_
		str_Title_MsgBox

	MsgBox _
		"All Processes of this VBScript have finished." ,_
		vbOKOnly + vbInformation                        ,_
		str_Title_MsgBox

REM #==========================================================================#
REM # End of This VBScript                                                     #
REM #==========================================================================#