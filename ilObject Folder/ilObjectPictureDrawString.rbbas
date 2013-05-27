#tag Class
Protected Class ilObjectPictureDrawString
Inherits ilObjectBase
	#tag Event
		Sub GenerateAndroidCode(theOrigin as string)
		  dim s as string
		  
		  s = "public void " + GetCodeName + "()" + EndOfLine
		  
		  s = s + "{" + EndOfLine
		  
		  s = s + "//" + GetCodeName + "Done" + EndOfLine
		  
		  s = s + "}" + EndOfLine + EndOfLine
		  
		  setCodeToCallThisObjectForName("Draw", GetCodeName + "();")
		  
		  AndroidInsertCodeAtMarker(s, "//EndOfFunctions")
		End Sub
	#tag EndEvent

	#tag Event
		Sub GenerateFlexWebCode(theOrigin as string)
		  'dim s as string
		  '
		  's = "private function " + GetCodeName + "():void" + EndOfLine
		  '
		  's = s + "{" + EndOfLine
		  '
		  's = s + "var drawingSprite:Sprite = new Sprite();" + EndOfLine
		  '
		  's = s + "drawingSprite.graphics.moveTo("  + modVariables.VariableObjectFromName(MathVariable1).ISCClassLocalFlexName + _
		  '", " + modVariables.VariableObjectFromName(MathVariable2).ISCClassLocalFlexName + ");" + EndOfLine
		  '
		  's = s + "drawingSprite.beginFill(" + modVariables.VariableObjectFromName(MessageFromVariable).ISCClassLocalFlexName + ");" + EndOfLine
		  '
		  's = s + "drawingSprite.graphics.lineTo("+ modVariables.VariableObjectFromName(MathVariable3).ISCClassLocalFlexName + _
		  '", " + modVariables.VariableObjectFromName(MathVariable4).ISCClassLocalFlexName + ");" + EndOfLine
		  '
		  's = s + modVariables.VariableObjectFromName(OriginVariable).ISCClassLocalFlexName + ".draw( drawingSprite );" + EndOfLine
		  '
		  's = s + "//" + GetCodeName + "Done" + EndOfLine
		  '
		  's = s + "}" + EndOfLine + EndOfLine
		  '
		  'setCodeToCallThisObjectForName("Draw", GetCodeName + "();")
		  '
		  'FlexWebInsertCodeAtMarker(s, "//EndOfFunctions")
		  
		  
		  dim s as string
		  
		  s = "private function " + GetCodeName + "():void" + EndOfLine
		  
		  s = s + "{" + EndOfLine
		  
		  s = s + "//" + GetCodeName + "Done" + EndOfLine
		  
		  s = s + "}" + EndOfLine + EndOfLine
		  
		  setCodeToCallThisObjectForName("Draw", GetCodeName + "();")
		  
		  FlexWebInsertCodeAtMarker(s, "//EndOfFunctions")
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub GenerateJavaScriptWebCode(theOrigin as string, optional theTarget as integer)
		  dim s as string
		  dim tempILUI as ilUIObject
		  
		  tempILUI = modCodeGenerator.GetilUIObjectFromNameOnWindow(varControlName, varWindowName)
		  
		  if tempILUI <> nil then
		    
		    s = "function " + GetCodeName + "()" + EndOfLine
		    
		    s = s + "{" + EndOfLine
		    
		    s = s + "var canvas = document.getElementById(""" + tempILUI.ISCClassLocalFlexName + """);" + EndOfLine
		    s = s + "var context = canvas.getContext(""2d"");" + EndOfLine
		    s = s + "var cat = new Image();" + EndOfLine
		    
		    s = s + "context.font = iscPenFontSize + ""px "" + iscPenFont;" + EndOfLine
		    s = s + "context.fillStyle = iscPenColor;" + EndOfLine
		    s = s + "context.textAlign = iscPenFontAllignment;" + EndOfLine
		    
		    s = s + "var metrics = context.measureText(" + modVariables.VariableObjectFromName(MessageFromVariable).ISCClassLocalFlexName + ");" + EndOfLine
		    s = s + "var width = metrics.width;" + EndOfLine
		    
		    //context.fillText(iscVTopText, ((canvas.width/2) - width/2) + iscVTopX, iscVTopY, iscVWidth);
		    
		    s = s + "context.fillText(" + modVariables.VariableObjectFromName(MessageFromVariable).ISCClassLocalFlexName + ", " + _
		    "((canvas.width/2) - width/2) + " + modVariables.VariableObjectFromName(MathVariable1).ISCClassLocalFlexName + ", " + _
		    modVariables.VariableObjectFromName(MathVariable2).ISCClassLocalFlexName + ", " + _
		    modVariables.VariableObjectFromName(MathVariable3).ISCClassLocalFlexName + ");" + EndOfLine
		    
		    // This draws an image onto the canvas
		    //s = s + "cat.src = ""ISCimages/" + modVariables.getProjectImageFromName(MessageFromVariable).ActualFileName + """;" + EndOfLine
		    //s = s + "cat.onload = function() {" + EndOfLine
		    //s = s + "context.drawImage(cat, 0, 0);" + EndOfLine
		    
		    s = s + "//" + GetCodeName + "Done" + EndOfLine
		    
		    s =s + "};" + EndOfLine
		    
		    
		    setCodeToCallThisObjectForName("Draw", GetCodeName + "();")
		    
		    HTML5InsertCodeAtMarker(s, "//EndOfFunctions")
		    
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Sub GeneratePythonDesktopCode(theOrigin as string)
		  dim s as string
		  
		  s = "def " + GetCodeName + "():" + EndOfLine
		  
		  s = s + " gc = " + modVariables.VariableObjectFromName(OriginVariable).ISCPythonName + ".new_gc()" + EndOfLine
		  s = s + " gc.set_rgb_fg_color(" + modVariables.VariableObjectFromName(MessageFromVariable).ISCPythonName + ")" + EndOfLine
		  s = s + " " + modVariables.VariableObjectFromName(OriginVariable).ISCPythonName + ".draw_line(gc," + modVariables.VariableObjectFromName(MathVariable1).ISCPythonName + _
		  ", " + modVariables.VariableObjectFromName(MathVariable2).ISCPythonName + _
		  ", " + modVariables.VariableObjectFromName(MathVariable3).ISCPythonName + _
		  ", " + modVariables.VariableObjectFromName(MathVariable4).ISCPythonName + _
		  ")" + EndOfLine
		  
		  s = s + " #" + GetCodeName + "Done" + EndOfLine + EndOfLine
		  
		  setCodeToCallThisObjectForName("Draw", GetCodeName + "()")
		  
		  PythonInsertCodeAtMarker(s, "#EndOfFunctions")
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  me.CodeNameBase = "iscDrawString"
		  me.BGColor =  frmProject.kcolPicture
		  me.DisplayName = "Draw Text"
		  me.DisplayCategory = "Picture"
		  me.Title = "Draw Text"
		  me.Width = 90
		  
		  me.ObjectItems.Append "Draw"
		  me.ObjectShowInput.Append true
		  me.ObjectShowOutput.Append false
		  
		  me.ObjectItems.Append "Done"
		  me.ObjectShowInput.Append false
		  me.ObjectShowOutput.Append true
		  
		  RequireMessageFromVariable = true
		  RequireMathVariable1 = true
		  RequireMathVariable2 = true
		  RequireMathVariable3 = true
		  RequirevarWindowName = true
		  RequirevarControlName = true
		  
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="BGColor"
			Group="Behavior"
			InitialValue="&h000000"
			Type="color"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CodeNameBase"
			Group="Behavior"
			Type="string"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CustomMessage"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DBObjectType"
			Group="Behavior"
			Type="string"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisplayCategory"
			Group="Behavior"
			Type="string"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisplayName"
			Group="Behavior"
			Type="String"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MathVariable1"
			Group="Behavior"
			Type="string"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MathVariable2"
			Group="Behavior"
			Type="string"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MathVariable3"
			Group="Behavior"
			Type="string"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MathVariable4"
			Group="Behavior"
			Type="string"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MathVariable5"
			Group="Behavior"
			Type="string"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MathVariable6"
			Group="Behavior"
			Type="string"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MessageFromVariable"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mLocalUniqueID"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OriginVariable"
			Group="Behavior"
			Type="string"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequireMathVariable1"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequireMathVariable2"
			Group="Behavior"
			Type="boolean"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequireMathVariable3"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequireMathVariable4"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequireMathVariable5"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequireMathVariable6"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequireMessageFromVariable"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequireOriginVariable"
			Group="Behavior"
			Type="boolean"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequirevarControlName"
			Group="Behavior"
			Type="boolean"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequirevarWindowName"
			Group="Behavior"
			Type="boolean"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Group="Behavior"
			Type="string"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UniqueID"
			Group="Behavior"
			Type="string"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseVariableForMessage"
			Group="Behavior"
			Type="boolean"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="varControlName"
			Group="Behavior"
			Type="string"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="varWindowName"
			Group="Behavior"
			Type="string"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="ilObjectBase"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
