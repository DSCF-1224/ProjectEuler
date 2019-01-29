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
Function CheckError_Max( ByVal max )
	
	REM | [argument of this subroutine]
	REM | max : find the sum of all the multiples of 3 and 5 below `max`

	REM | STEP.01
	REM | error check
	If Not IsNumeric( max ) Then

		CheckError_Max = MsgBox (_
			"Argument of " & str_Name_Sub & " is not numeric !" & vbCrLf &_
			"The detected type is " & TypeName( max ) & "." ,_
			vbRetryCancel + vbCritical ,_
			str_Title_MsgBox _
		)

		Exit Function ' BAD_END

	ElseIf ( Not VarType( max ) = vbInteger ) And ( Not VarType( max ) = vbLong ) Then
		
		CheckError_Max = MsgBox (_
			"The detected type of argument of " & str_Name_Sub & " is " & TypeName( max ) & "." & vbCrLf &_
			"The argument must be an integer/long integer !" ,_
			vbRetryCancel + vbCritical ,_
			str_Title_MsgBox _
		)

		Exit Function ' BAD_END

	ElseIf max < 1 Then

		CheckError_Max = MsgBox (_
			"Argument of " & str_Name_Sub & " is less than 1 !" & vbCrLf &_
			"The argument must be an integer which is bigger than or equal to 1 !" ,_
			vbRetryCancel + vbCritical ,_
			str_Title_MsgBox _
		)

		Exit Function ' BAD_END

	End If

	REM | STEP.TRUE_END
	CheckError_Max = vbOK
	Exit Function

End Function

Sub Problem0001_07
	
	REM | [argument of this subroutine]
	REM | max 

	REM | [local variables for this subroutine]
	Dim itr             ' iterator
	Dim max             ' find the sum of all the multiples of 3 and 5 below `max`
	Dim sum	            ' store the target sum
	Dim rtvl_ErrorCheck '

	REM | STEP.01
	max = InputBox( _
		"This VBScript finds the sum of all the multiples of 3 and 5 below `max`." & Chr(13) & Chr(10) & "Input the target value `max`." ,_
		str_Title_MsgBox _
	)

	REM | STEP.02
	REM | error check
	rtvl_ErrorCheck = CheckError_Max( max )

	REM | STEP.02
	REM | retry or cancel the process
	If rtvl_ErrorCheck = vbRetry Then
		Call Problem0001_07
	ElseIf rtvl_ErrorCheck = vbCancel Then
		
		MsgBox _
			"The process is canceled." ,_
			vbOKOnly + vbInformation   ,_
			str_Title_MsgBox

		Exit Sub ' BAD_END

	ElseIf rtvl_ErrorCheck = vbOK Then

		REM | STEP.03
		REM | initialize the variable to store the sum
		sum = 0
	
		REM | STEP.04
		REM | calculate the sum of all the multiples of 3 and 5
		For itr = 1 To max-1 Step 1
			If itr Mod 3 = 0 Then
				sum = sum + itr
			ElseIf itr Mod 5 = 0 Then
				sum = sum + itr
			End If
		Next
	
		REM | STEP.05
		REM | output the result
		MsgBox _
			str_Name_Sub & "(" & max & ") = " & sum & vbCrLf & vbCrLf &_
			"All Processes of this VBScript have finished." ,_
			vbOKOnly + vbInformation               ,_
			str_Title_MsgBox
	
		REM | STEP.TRUE_END
		Exit Sub

	End If
	
End Sub ' Problem0001_07



REM #==========================================================================#
REM # Main Process is below                                                    #
REM #==========================================================================#

	Call Problem0001_07

REM #==========================================================================#
REM # End of This VBScript                                                     #
REM #==========================================================================#