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

Sub Problem0001_07
	
	REM | [argument of this subroutine]
	REM | max 

	REM | [local variables for this subroutine]
	Dim itr             ' iterator
	Dim max             ' find the sum of all the multiples of 3 and 5 below `max`
	Dim sum	            ' store the target sum
	Dim rtvl_ErrorCheck '
	Dim rtvl_MsgBox     '

	REM | STEP.01
	max = InputBox( _
		"This VBScript finds the sum of all the multiples of 3 and 5 below `max`." & Chr(13) & Chr(10) & "Input the target value `max`." ,_
		str_Title_MsgBox _
	)

	REM | STEP.02
	REM | error check of `max`
	If max = "" Then

		rtvl_MsgBox = vbCancel

	ElseIf VarType( max ) = vbEmpty Then

		rtvl_MsgBox = MsgBox (_
			"Argument of " & str_Name_Sub & " is empty !" ,_
			vbRetryCancel + vbInformation ,_
			str_Title_MsgBox _
		)

	ElseIf Not IsNumeric( max ) Then

		REM | STEP.01.01
		REM | check whether `max` is numeric
		rtvl_MsgBox = MsgBox (_
			"Argument of " & str_Name_Sub & " is not numeric !" & vbCrLf &_
			"The detected type is " & TypeName( max ) & "." ,_
			vbRetryCancel + vbCritical ,_
			str_Title_MsgBox _
		)

	ElseIf VarType( max ) = vbString Then

		max = CInt( max )

		If max < 1 Then

			rtvl_MsgBox = MsgBox (_
				"Argument of " & str_Name_Sub & " is less than 1 !" & vbCrLf &_
				"The argument must be an integer which is bigger than or equal to 1 !" ,_
				vbRetryCancel + vbCritical ,_
				str_Title_MsgBox _
			)

		Else
			rtvl_MsgBox = vbOK
		End If

	End If

	REM | STEP.03
	REM | calculate the `sum` of retry or cancel the process
	If rtvl_MsgBox = vbRetry Then
		Call Problem0001_07' TRUE_END
	ElseIf rtvl_MsgBox = vbCancel Then
		
		rtvl_MsgBox = MsgBox( "The process is canceled." , vbRetryCancel + vbInformation, str_Title_MsgBox )' TRUE_END

	ElseIf rtvl_MsgBox = vbOK Then

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
		rtvl_MsgBox = MsgBox( _
			str_Name_Sub & "(" & max & ") = " & sum & vbCrLf & vbCrLf &_
			"All Processes of this VBScript have finished." ,_
			vbRetryCancel + vbInformation ,_
			str_Title_MsgBox _
		)

	End If

	If rtvl_MsgBox = vbRetry Then
		Call Problem0001_07 ' TRUE_END
	ElseIf rtvl_MsgBox = vbCancel Then
		rtvl_MsgBox = MsgBox( "The process is canceled." , vbOKOnly + vbInformation, str_Title_MsgBox )
		Exit Sub ' TRUE_END
	ElseIf rtvl_MsgBox = vbOK Then
		Exit Sub ' TRUE_END
	End If
	
End Sub ' Problem0001_07



REM #==========================================================================#
REM # Main Process is below                                                    #
REM #==========================================================================#

	Call Problem0001_07

REM #==========================================================================#
REM # End of This VBScript                                                     #
REM #==========================================================================#