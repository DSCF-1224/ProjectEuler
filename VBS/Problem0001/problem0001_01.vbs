REM | Project Euler 0001

REM #==========================================================================#
REM # Require all variables to be explicitly declared                          #
REM #==========================================================================#
Option Explicit



REM #==========================================================================#
REM # constantsin this VBScript                                                #
REM #==========================================================================#
Const str_Title_MsgBox = "Problem Euler 0001"
Const str_Name_Func    = "Problem0001_01"



REM #==========================================================================#
REM # <Function>s and <Subroutine>s in this VBScript                           #
REM #==========================================================================#

Function Problem0001_01( ByVal max )
	
	REM | [argument of this function]
	REM | max : find the sum of all the multiples of 3 and 5 below `max`
	
	REM | [local variables for this function]
	Dim itr

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
	Problem0001_01 = 0

	REM | STEP.03
	REM | calculate the sum of all the multiples of 3 and 5
	For itr = 1 To max-1 Step 1
		If itr Mod 3 = 0 Then
			Problem0001_01 = Problem0001_01 + itr
		ElseIf itr Mod 5 = 0 Then
			Problem0001_01 = Problem0001_01 + itr
		End If
	Next

	REM | STEP.TRUE_END
	Exit Function
	
End Function ' Problem0001_01



REM #==========================================================================#
REM # Main Process is below                                                    #
REM #==========================================================================#

	MsgBox _
		Problem0001_01( 1.2 ) & vbCrLf ,_
		vbOKOnly + vbInformation      ,_
		str_Title_MsgBox

	MsgBox _
		Problem0001_01( 10 ) & vbCrLf ,_
		vbOKOnly + vbInformation      ,_
		str_Title_MsgBox

	MsgBox _
		Problem0001_01( 1000 ) & vbCrLf ,_
		vbOKOnly + vbInformation        ,_
		str_Title_MsgBox

	MsgBox _
		"All Processes of this VBScript have finished." ,_
		vbOKOnly + vbInformation                        ,_
		str_Title_MsgBox

REM #==========================================================================#
REM # End of This VBScript                                                     #
REM #==========================================================================#